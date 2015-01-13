package com.radio.utils

import grails.transaction.Transactional

@Transactional
class UtilService {

    def runProcess(processCommand) throws IOException {
		
		Process process =  Runtime.getRuntime().exec(processCommand)
		InputStream stderr = process.getErrorStream()
		InputStreamReader isr = new InputStreamReader(stderr)
		BufferedReader br = new BufferedReader(isr)
		String line = null
		System.out.println("<ERROR>")
		while ( (line = br.readLine()) != null)
			System.out.println(line)
		System.out.println("</ERROR>")
		
		int result = process.waitFor()
		
		System.out.println("Process exitValue: " + result)

		return result
    }
}
