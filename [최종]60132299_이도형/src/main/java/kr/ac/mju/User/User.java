package kr.ac.mju.User;

public class User {
	private String ID;
	private String name;
	private String type;
	private String pwd;
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public User(String ID, String pwd,String name, String type) {
		this.ID = ID;
		this.pwd = pwd;
		this.name = name;
		this.type = type;
	}
	
	public User(String ID, String pwd) {
		this.ID = ID;
		this.setPwd(pwd);
	}
	public String getID() {
		return ID;
	}
	public String getName() {
		return name;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
}
