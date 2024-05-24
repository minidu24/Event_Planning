package userRegister.Model;

public class Admin {
	private int A_Id;
	private String A_Username;
	private String A_Passward;
	
	public Admin() {
		super();
	}

	public Admin(int a_Id, String a_Username, String a_Passward) {
		A_Id = a_Id;
		A_Username = a_Username;
		A_Passward = a_Passward;
	}

	public int getA_Id() {
		return A_Id;
	}

	public String getA_Username() {
		return A_Username;
	}

	public String getA_Passward() {
		return A_Passward;
	}
	
	
}
