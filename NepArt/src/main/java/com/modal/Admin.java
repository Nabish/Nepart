package com.modal;

import java.io.Serializable;

public class Admin implements Serializable {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
int admin_id;
public int getAdmin_id() {
	return admin_id;
}
public void setAdmin_id(int admin_id) {
	this.admin_id = admin_id;
}
public String getFullname() {
	return fullname;
}
public void setFullname(String fullname) {
	this.fullname = fullname;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
String fullname, username, password, email, phone;

}
