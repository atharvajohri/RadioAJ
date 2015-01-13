import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_radioAJ_layoutsmain_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/main.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("Content-Type"),'content':("text/html; charset=UTF-8")],-1)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'content':("IE=edge,chrome=1")],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
printHtmlPart(3)
invokeTag('layoutTitle','g',13,[:],-1)
printHtmlPart(4)
})
invokeTag('captureTitle','sitemesh',14,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',14,[:],2)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',16,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1.0")],-1)
printHtmlPart(5)
expressionOut.print(assetPath(src: 'favicon.ico'))
printHtmlPart(6)
invokeTag('stylesheet','asset',19,['src':("application.css")],-1)
printHtmlPart(7)
invokeTag('javascript','asset',21,['src':("jquery")],-1)
printHtmlPart(2)
invokeTag('javascript','asset',22,['src':("common/utils.js")],-1)
printHtmlPart(2)
invokeTag('javascript','asset',23,['src':("common/openOpts.js")],-1)
printHtmlPart(8)
invokeTag('layoutHead','g',36,[:],-1)
printHtmlPart(9)
})
invokeTag('captureHead','sitemesh',37,[:],1)
printHtmlPart(9)
createTagBody(1, {->
printHtmlPart(10)
invokeTag('layoutBody','g',71,[:],-1)
printHtmlPart(11)
})
invokeTag('captureBody','sitemesh',83,[:],1)
printHtmlPart(12)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1419855744676L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
