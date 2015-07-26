package com.kszit.dareport.web.controle.test;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Test {

	/**
	 * @param args
	 * @throws ParseException 
	 */
	public static void main(String[] args) throws ParseException {
		String s = "2015-06-20 14:13:21.38";
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date d = df.parse(s);
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(d);
		calendar.add(Calendar.DAY_OF_MONTH, 3);
		if(calendar.getTimeInMillis()>new Date().getTime()){
			System.out.println("显示new");
		}else{
			System.out.println("不显示new");
		}
		
	}

}
