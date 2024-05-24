package userRegister.Model;

public class user {
	private int userID;
	private String userName;
	private String password;
	
	public user() {
	}

	public user(int userID,String userName, String password) {	
		this.userID = userID;
		this.userName = userName;
		this.password = password;
	}

	public int getUserID() {
		return userID;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}
}
