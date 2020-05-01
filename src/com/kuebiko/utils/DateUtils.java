package com.kuebiko.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 
 * @author nagendra
 *
 */
public class DateUtils {
	
	public static Date dateFromString(String dateInString) {
		 SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		 Date date=null;
	        try {
	             date = formatter.parse(dateInString);
	        } catch (ParseException e) {
	            e.printStackTrace();
	        }
	        return date;
	}
	public static Date dateFromYyyyMmDDString(String dateInString) {
		 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		 Date date=null;
	        try {
	             date = formatter.parse(dateInString);
	        } catch (ParseException e) {
	            e.printStackTrace();
	        }
	        return date;
	}
	
	public static Date dateFromHtmlString(String dateInString) {
		 SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		 Date date=null;
	        try {
	             date = formatter.parse(dateInString);
	        } catch (ParseException e) {
	            e.printStackTrace();
	        }
	        return date;
	}

}
