package ERP.DAO;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.sql.DataSource;

public class minDAO {
	private Connection con;
	private PreparedStatement psmt;
	private DataSource dataFac;
	private ResultSet rs;
	
	//생산
	public List p_Search(String lot_no) {
		return null;
	}
	
	public List p_Input(String lot_no, String part_no, int number) {
		
		return null;
	}
	
	public void p_Edit(String lot_no, String part_no, int number) {
		
	}
	
	
	//WH
	public List mw_search_p(String part_no) {
		
		return null;
	}
	public List mw_search_d(Date s_date) {
		
		return null;
	}
	public void mw_inport(String o_no,int quantity) {
		
	} 
	public void mw_eidt(String o_no,int quantity) {
		
	}
}
