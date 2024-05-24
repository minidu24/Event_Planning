package userRegister.Model;

public class B_Eventplanner {
		private int emp_id;
	 	private String emp_name;
	    private String emp_cnt;
	    private String emp_email;
	    private String emp_jroll;
    
	 	public B_Eventplanner(int emp_id, String emp_name, String emp_cnt, String emp_email, String emp_jroll) {
		this.emp_id = emp_id;
		this.emp_name = emp_name;
		this.emp_cnt = emp_cnt;
		this.emp_email = emp_email;
		this.emp_jroll = emp_jroll;
	 	}

		public int getemp_id() {
			return emp_id;
		}

		public String getemp_name() {
			return emp_name;
		}

		public String getemp_cnt() {
			return emp_cnt;
		}

		public String getemp_email() {
			return emp_email;
		}

		public String getemp_jroll() {
			return emp_jroll;
		}

}
