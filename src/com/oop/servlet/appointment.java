package com.oop.servlet;

public class appointment {
	private String id;
	private String nic;
	private String docName;
	private String specialization;
	private String hospital;
	private String date;
    
	public appointment(String id,String nic,String docName, String specialization,String hospital,String date) {
		this.id = id;
		this.nic = nic;
		this.docName = docName;
		this.specialization = specialization;
		this.hospital = hospital;
		this.date = date;
	}
    public void setID(String id) {
    	this.id = id;
    }
    public String getID() {
    	return this.id;
    }
    public void setNic(String nic) {
    	this.nic = nic;
    }
    public String getNic() {
    	return this.nic;
    }
    public void setDocName(String docName) {
    	this.docName = docName;
    }
    public String getDocName() {
    	return this.docName;
    }
    public void setSpecialization(String specialization) {
    	this.specialization = specialization;
    }
    public String getsSecialization() {
    	return this.specialization;
    }
    public void setHospital(String hospital) {
    	this.hospital = hospital;
    }
    public String getHospital() {
    	return this.hospital;
    }
    public void setDate(String date) {
    	this.date = date;
    }
    public String getDate() {
    	return this.date;
    }
}
