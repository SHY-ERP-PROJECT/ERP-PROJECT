package ERP.Bean;

import java.sql.Date;

public class PRBean {
	protected String LOT_NO, PART_NO, PART_NAME, P_NO, P_F, I_O;
	protected  int QUAN, UNIT, R_TIME;
	protected Date S_DATE;
	
	public String getLOT_NO() {
		return LOT_NO;
	}
	public void setLOT_NO(String lOT_NO) {
		LOT_NO = lOT_NO;
	}
	public String getPART_NO() {
		return PART_NO;
	}
	public void setPART_NO(String pART_NO) {
		PART_NO = pART_NO;
	}
	public Date getS_DATE() {
		return S_DATE;
	}
	public void setS_DATE(Date s_DATE) {
		S_DATE = s_DATE;
	}
	public String getP_NO() {
		return P_NO;
	}
	public void setP_NO(String p_NO) {
		P_NO = p_NO;
	}
	public String getP_F() {
		return P_F;
	}
	public void setP_F(String p_F) {
		P_F = p_F;
	}
	public String getI_O() {
		return I_O;
	}
	public void setI_O(String i_O) {
		I_O = i_O;
	}
	public String getPART_NAME() {
		return PART_NAME;
	}
	public void setPART_NAME(String pART_NAME) {
		PART_NAME = pART_NAME;
	}
	public int getQUAN() {
		return QUAN;
	}
	public void setQUAN(int qUAN) {
		QUAN = qUAN;
	}
	public int getUNIT() {
		return UNIT;
	}
	public void setUNIT(int uNIT) {
		UNIT = uNIT;
	}
	public int getR_TIME() {
		return R_TIME;
	}
	public void setR_TIME(int r_TIME) {
		R_TIME = r_TIME;
	}
}
