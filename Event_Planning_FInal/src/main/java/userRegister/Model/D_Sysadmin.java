package userRegister.Model;

public class D_Sysadmin {
	private int id;//1
	private String ename;//2
	private String edate;//3
	private String ecode;//4
	private String ecgory;//5
	private String etheme;//6
	private String evenue;//7
	private String edescript;//8
	private String eorgname;//9
	private String eorgdt;//10
	
	public D_Sysadmin(int id, String ename, String edate, String ecode, String ecgory, String etheme, String evenue,
			String edescript, String eorgname, String eorgdt) {
		
		this.id = id;
		this.ename = ename;
		this.edate = edate;
		this.ecode = ecode;
		this.ecgory = ecgory;
		this.etheme = etheme;
		this.evenue = evenue;
		this.edescript = edescript;
		this.eorgname = eorgname;
		this.eorgdt = eorgdt;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the ename
	 */
	public String getEname() {
		return ename;
	}

	/**
	 * @param ename the ename to set
	 */
	public void setEname(String ename) {
		this.ename = ename;
	}

	/**
	 * @return the edate
	 */
	public String getEdate() {
		return edate;
	}

	/**
	 * @param edate the edate to set
	 */
	public void setEdate(String edate) {
		this.edate = edate;
	}

	/**
	 * @return the ecode
	 */
	public String getEcode() {
		return ecode;
	}

	/**
	 * @param ecode the ecode to set
	 */
	public void setEcode(String ecode) {
		this.ecode = ecode;
	}

	/**
	 * @return the ecgory
	 */
	public String getEcgory() {
		return ecgory;
	}

	/**
	 * @param ecgory the ecgory to set
	 */
	public void setEcgory(String ecgory) {
		this.ecgory = ecgory;
	}

	/**
	 * @return the etheme
	 */
	public String getEtheme() {
		return etheme;
	}

	/**
	 * @param etheme the etheme to set
	 */
	public void setEtheme(String etheme) {
		this.etheme = etheme;
	}

	/**
	 * @return the evenue
	 */
	public String getEvenue() {
		return evenue;
	}

	/**
	 * @param evenue the evenue to set
	 */
	public void setEvenue(String evenue) {
		this.evenue = evenue;
	}

	/**
	 * @return the edescript
	 */
	public String getEdescript() {
		return edescript;
	}

	/**
	 * @param edescript the edescript to set
	 */
	public void setEdescript(String edescript) {
		this.edescript = edescript;
	}

	/**
	 * @return the eorgname
	 */
	public String getEorgname() {
		return eorgname;
	}

	/**
	 * @param eorgname the eorgname to set
	 */
	public void setEorgname(String eorgname) {
		this.eorgname = eorgname;
	}

	/**
	 * @return the eorgdt
	 */
	public String getEorgdt() {
		return eorgdt;
	}

	/**
	 * @param eorgdt the eorgdt to set
	 */
	public void setEorgdt(String eorgdt) {
		this.eorgdt = eorgdt;
	}
	

}
