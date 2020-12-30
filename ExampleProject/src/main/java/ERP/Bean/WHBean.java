package ERP.Bean;

import java.sql.Date;

public class WHBean {
	protected String O_NO, M_NO, M_NAME;
	protected int M_QUAN, COST;
	protected Date I_DATE;
	
	public String getO_NO() {
		return O_NO;
	}
	public void setO_NO(String o_NO) {
		O_NO = o_NO;
	}
	public String getM_NO() {
		return M_NO;
	}
	public void setM_NO(String m_NO) {
		M_NO = m_NO;
	}
	public String getM_NAME() {
		return M_NAME;
	}
	public void setM_NAME(String m_NAME) {
		M_NAME = m_NAME;
	}
	public int getM_QUAN() {
		return M_QUAN;
	}
	public void setM_QUAN(int m_QUAN) {
		M_QUAN = m_QUAN;
	}
	public int getCOST() {
		return COST;
	}
	public void setCOST(int cOST) {
		COST = cOST;
	}
	public Date getI_DATE() {
		return I_DATE;
	}
	public void setI_DATE(Date i_DATE) {
		I_DATE = i_DATE;
	}
}
