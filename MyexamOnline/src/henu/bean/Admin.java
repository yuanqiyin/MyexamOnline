package henu.bean;

public class Admin {
     private String a_id;
     private String a_name;
     private String a_sex;
     private String a_pwd;
     private String a_phone;
     private String a_address;
     private String a_birthdate;
     private String a_email;
     private String a_newpwd;
     
	public String getNewpwd() {
		return a_newpwd;
	}
	public void setNewpwd(String newpwd) {
		this.a_newpwd = newpwd;
	}
	public String getAddress() {
		return a_address;
	}
	public void setAddress(String address) {
		this.a_address = address;
	}
	public String getBirthdate() {
		return a_birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.a_birthdate = birthdate;
	}
	public String getEmail() {
		return a_email;
	}
	public void setEmail(String email) {
		this.a_email = email;
	}
	public String getAid() {
		return a_id;
	}
	public void setAid(String aid) {
		this.a_id = aid;
	}
	public String getAname() {
		return a_name;
	}
	public void setAname(String aname) {
		this.a_name = aname;
	}
	public String getSex() {
		return a_sex;
	}
	public void setSex(String sex) {
		this.a_sex = sex;
	}
	public String getPwd() {
		return a_pwd;
	}
	public void setPwd(String pwd) {
		this.a_pwd = pwd;
	}
	public String getPhone() {
		return a_phone;
	}
	public void setPhone(String phone) {
		this.a_phone = phone;
	}
}
