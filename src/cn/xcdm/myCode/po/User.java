package cn.xcdm.myCode.po;

public class User {
	private String name;
	private String password;
	public User(String username, String password) {
		// TODO Auto-generated constructor stub
		this.name=username;
		this.password=password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [name=" + name + ", password=" + password + "]";
	} 
}
