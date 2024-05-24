package userRegister.Model;

public class A_eventUploader {
	private int U_id;
	private String U_firstNamr;
    private String U_lastName;
    private String U_username;
    private String U_password;
    private String U_Eaddress;
    private String U_contact;
    
    
    
	public A_eventUploader() {
		//super();
	}
	public A_eventUploader(int u_id, String u_firstNamr, String u_lastName, String u_username, String u_password,
			String u_Eaddress, String u_contact) {
		U_id = u_id;
		U_firstNamr = u_firstNamr;
		U_lastName = u_lastName;
		U_username = u_username;
		U_password = u_password;
		U_Eaddress = u_Eaddress;
		U_contact = u_contact;
	}
	public int getU_id() {
		return U_id;
	}
	public void setU_id(int u_id) {
		U_id = u_id;
	}
	public String getU_firstNamr() {
		return U_firstNamr;
	}
	public void setU_firstNamr(String u_firstNamr) {
		U_firstNamr = u_firstNamr;
	}
	public String getU_lastName() {
		return U_lastName;
	}
	public void setU_lastName(String u_lastName) {
		U_lastName = u_lastName;
	}
	public String getU_username() {
		return U_username;
	}
	public void setU_username(String u_username) {
		U_username = u_username;
	}
	public String getU_password() {
		return U_password;
	}
	public void setU_password(String u_password) {
		U_password = u_password;
	}
	public String getU_Eaddress() {
		return U_Eaddress;
	}
	public void setU_Eaddress(String u_Eaddress) {
		U_Eaddress = u_Eaddress;
	}
	public String getU_contact() {
		return U_contact;
	}
	public void setU_contact(String u_contact) {
		U_contact = u_contact;
	}
    
    
}
