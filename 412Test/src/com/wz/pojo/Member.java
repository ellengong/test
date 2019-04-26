package com.wz.pojo;

public class Member {
	private int memberId; 
	private String name;
	private String phoneNumber;
	private int gradYear;
	private String major;
	private String company;
	private String job;
	private String address;
	
	public String getName()
	{
		return name;
	}
	
	public void setName(String na){
		name=na;
	}
	
	public int getMemberId()
	{
		return memberId;
	}
	
	public String getPhoneNumber(){
		return phoneNumber;
	}
	
	public void setPhoneNumber(String number){
		phoneNumber=number;
	}
	
	public int getGradYear()
	{
		return gradYear;
	}
	public void setGradYear(int year)
	{
		 gradYear=year;
	}
	
	public String getCompany()
	{
		return company;
	}
	
	public void setCompany(String company){
		this.company=company;
	}
	
	public String getJob()
	{
		return job;
	}
	
	public void setJob(String job){
		this.job=job;
	}
	
	public String getAddress()
	{
		return address;
	}
	
	public void setAddress(String address){
		this.address=address;
	}
	
	public String getMajor()
	{
		return major;
	}
	
	public void setMajor(String major){
		this.major=major;
	}
}
