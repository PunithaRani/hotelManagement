package com.example.hotel_management;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity(name = "user_details")
public class UserdetailsModel {
  @Override
	public String toString() {
		return "UserdetailsModel [userid=" + userid + ", first_name=" + first_name + ", last_name=" + last_name
				+ ", email=" + email + ", ph_number=" + ph_number + ", password=" + password + ", keyword=" + keyword
				+ "]";
	}
@Id
	int userid;
	String first_name;
	String last_name;
	String email;
	long ph_number;
	String password;
	String keyword;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPh_number() {
		return ph_number;
	}
	public void setPh_number(long ph_number) {
		this.ph_number = ph_number;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
	
}
