package com.kszit.DAReport.core.dpra;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ReadDpraConfig {
	private static final String configFileName = "dpraConfig.property";
	
	
	
	public void readConfig(){
		InputStream in = ReadDpraConfig.class.getClassLoader().getResourceAsStream(configFileName);
		Properties properties = new Properties();
		try {
			properties.load(in);
			String departClassName = properties.getProperty("department_class");
			System.out.println(departClassName);
			in.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public static void main(String[] a){
		ReadDpraConfig r = new ReadDpraConfig();
		r.readConfig();
	}
}
