package userRegister.Model;

public class Searching {
	private String ename;//2
	private String edate;//3
	private String ecode;//4
	private String ecgory;//5
	private String etheme;//6
	private String evenue;//7
	private String edescript;//8
	
	public Searching() {
		super();
	}
	

	public Searching(String ename, String edate, String ecode, String ecgory, String etheme, String evenue, String edescript) {
		this.ename = ename;
		this.edate = edate;
		this.ecode = ecode;
		this.ecgory = ecgory;
		this.etheme = etheme;
		this.evenue = evenue;
		this.edescript = edescript;
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
	
	
}
