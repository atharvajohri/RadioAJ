package org.grooscript.grails.bean

import grails.plugin.cache.Cacheable
import org.codehaus.groovy.grails.commons.GrailsApplication
import org.grooscript.GrooScript
import org.grooscript.daemon.ConversionDaemon
import org.grooscript.grails.domain.DomainClass
import org.grooscript.grails.remote.RemoteDomainClass
import org.grooscript.grails.util.Util

import static org.grooscript.grails.util.Util.*

/**
 * User: jorgefrancoleza
 * Date: 22/09/13
 */
class GrooscriptConverter {

    ConversionDaemon conversionDaemon
    GrailsApplication grailsApplication

    static final DEFAULT_CONVERSION_SCOPE_VARS = ['$', 'gsEvents', 'window', 'document']

    @Cacheable('conversions')
    String toJavascript(String groovyCode, options = null) {
        String jsCode = ''
        if (groovyCode) {
            GrooScript.clearAllOptions()
            try {
                options = addDefaultOptions(options)
                options.each { key, value ->
                    GrooScript.setConversionProperty(key, value)
                }

                jsCode = GrooScript.convert(groovyCode)

            } catch (e) {
                consoleError "Error converting to javascript: ${e.message}"
            }
        }
        jsCode
    }

    void startDaemon(Map daemonConfig = [:]) {

        stopDaemon()

        def source = daemonConfig.source
        def destination = daemonConfig.destination
        def conversionOptions = addDefaultOptions(daemonConfig.conversionOptions)

        conversionDaemon = GrooScript.startConversionDaemon(source, destination, conversionOptions,
                closureToRunAfterDaemonConversion(daemonConfig.doAfter))
    }

    void stopDaemon() {
        if (conversionDaemon) {
            consoleMessage 'Stopping old conversion daemon.'
            conversionDaemon.stop()
            sleep(1000)
        }
    }

    String convertDomainClass(String domainClassName) {
        convertDomainClassFile(domainClassName, false)
    }

    String convertRemoteDomainClass(String domainClassName) {
        convertDomainClassFile(domainClassName, true)
    }

    private addDefaultOptions(options) {
        options = options ?: [:]
        options = addGroovySourceClassPathIfNeeded(options)
        options = addScopeVars(options)
        options
    }

    private Closure closureToRunAfterDaemonConversion(Closure doAfter) {

        //Config option to do
        def doAfterDaemonConversion = doAfter

        //Full action to do after some change
        Closure doAfterDaemon = null
        if (doAfterDaemonConversion) {
            doAfterDaemon = { listFilesList ->
                doAfterDaemonConversion(listFilesList)
            }
        }
        doAfterDaemon
    }

    private addScopeVars(options) {
        if (!options.mainContextScope) {
            options.mainContextScope = []
        }
        options.mainContextScope.addAll DEFAULT_CONVERSION_SCOPE_VARS
        options
    }

    private addGroovySourceClassPathIfNeeded(options) {
        if (!options.classPath) {
            options.classPath = []
        } else {
            if (options.classPath instanceof String) {
                options.classPath = [options.classPath]
            }
        }
        if (!options.classPath.contains(GROOVY_SRC_DIR)) {
            options.classPath << GROOVY_SRC_DIR
        }
        options
    }

    private String convertDomainClassFile(String domainClassName, boolean remote) {
        String result
        try {
            String domainFileText = Util.getDomainFileText(domainClassName, grailsApplication)
            if (domainFileText) {
                try {
                    GrooScript.clearAllOptions()
                    Util.addCustomizationAstOption(remote ? RemoteDomainClass : DomainClass)
                    //GrooScript.setConversionProperty('classPath', [GROOVY_SOURCE_CODE, GRAILS_DOMAIN_CLASSES])
                    result = GrooScript.convert(domainFileText)
                } catch (e) {
                    consoleError 'Error converting ' + e.message
                }
            } else {
                consoleWarning 'Domain file not found ' + domainClassName
            }
        } catch (e) {
            consoleError 'GrooscriptConverter Error creating domain class js file ' + e.message
        }
        result
    }
}
