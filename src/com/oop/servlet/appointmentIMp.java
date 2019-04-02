package com.oop.servlet;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class appointmentIMp implements appointmentIn{
	appointment ap;
	protected String check;
	public appointmentIMp(appointment ap) {
		this.ap = ap;
	}
	public String checkDate() {
		String date = ap.getDate();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date date1;
		try {
			date1 = (Date) simpleDateFormat.parse(date);
		
		boolean date3 = date1.after(new Date(0));
		
		if(date3 == true ) {
			check = "invalid";
			return check;
		}
		
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
			return null;
	}
}

