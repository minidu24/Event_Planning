package userRegister.Model;

public class C_Accountant {
	private String eName; 
	private String eCode; 
	private String tCost; 
	private String dis;
	private String aDicession;
	
	public C_Accountant(String e_Name, String e_Code, String t_Cost, String e_dis, String a_Dicession) {
		super();
		eName = e_Name;
		eCode = e_Code;
		tCost = t_Cost;
		dis = e_dis;
		aDicession = a_Dicession;
	} 

	/**
	 * @return the eName
	 */
	public String geteName() {
		return eName;
	}

	/**
	 * @param eName the eName to set
	 */
	public void seteName(String eName) {
		this.eName = eName;
	}

	/**
	 * @return the eCode
	 */
	public String geteCode() {
		return eCode;
	}

	/**
	 * @param eCode the eCode to set
	 */
	public void seteCode(String eCode) {
		this.eCode = eCode;
	}

	/**
	 * @return the tCost
	 */
	public String gettCost() {
		return tCost;
	}

	/**
	 * @param tCost the tCost to set
	 */
	public void settCost(String tCost) {
		this.tCost = tCost;
	}

	/**
	 * @return the dis
	 */
	public String getDis() {
		return dis;
	}

	/**
	 * @param dis the dis to set
	 */
	public void setDis(String dis) {
		this.dis = dis;
	}

	/**
	 * @return the aDicession
	 */
	public String getaDicession() {
		return aDicession;
	}

	/**
	 * @param aDicession the aDicession to set
	 */
	public void setaDicession(String aDicession) {
		this.aDicession = aDicession;
	}
	
	

//	public String getName() {
//		return Name;
//	}
//
//	public String getImdb() {
//		return Imdb;
//	}
//
//	public String getCategory() {
//		return Category;
//	}
//
//	public String getSesons() {
//		return Sesons;
//	}
//
//	public String getDirector() {
//		return Director;
//	}
}
