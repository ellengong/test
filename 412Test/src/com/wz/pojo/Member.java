package com.wz.pojo;

public class Member {
	private int memberId; 
	private String name;
	private String phoneNumber;
	private int enterYear;
	private String major;
	private String company;
	private String job;
	private String address;
	private String gender;
	private String hometown;
	private String birthday;
	private String qq;
	private String weixin;
	private String stuNo;
	
	
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
	
	public int getEnterYear()
	{
		return enterYear;
	}
	public void setEnterYear(int year)
	{
		 enterYear=year;
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
	
	public String getGender()
	{
		return gender;
	}
	
	public void setGender(String gen){
		gender=gen;
	}
	
	public String getQQ()
	{
		return qq;
	}
	
	public void setQQ(String qq){
		this.qq=qq;
	}
	
	public String getWeixin()
	{
		return weixin;
	}
	
	public void setWeixin(String wx){
		weixin=wx;
	}
	
	public String getBirthday()
	{
		return birthday;
	}
	
	public void setBirthday(String bt){
		birthday=bt;
	}
	
	public String getStuNo()
	{
		return stuNo;
	}
	
	public void setStuNo(String stuno){
		stuNo=stuno;
	}
	
	public String getHometown()
	{
		return hometown;
	}
	
	public void setHometown(String ht){
		hometown=ht;
	}
}
