package com.oop.servlet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class appontmentDetails extends appointment{
	public appontmentDetails(String id, String nic, String docName, String specialization, String hospital,
			String date) {
		super(id, nic, docName, specialization, hospital, date);
		// TODO Auto-generated constructor stub
	try {
	appointment ap = null;
	String id1  = ap.getID();
	DBconnect db = new DBconnect();
    Connection con = (Connection) db.getCon();
    Statement stm = (Statement) con.createStatement();

    String SQL = "DELETE FROM appointment WHERE id = '"+id1+"'";
    stm.executeUpdate(SQL);
    System.out.println("every things is fine date deleted...");
	}catch(Exception ex) {
		System.out.println(" " + ex);
	}
	}
	
}
