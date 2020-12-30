package ERP.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.sql.DataSource;

import ERP.Bean.BOM1Bean;
import ERP.Bean.BOM2Bean;

public class mainDAO {
	private Connection con;
	private PreparedStatement psmt;
	private DataSource dataFac;
	private ResultSet rs;
	
	//user
	public void login(String id,String pwd) {
		
	}
	
	//PR
	public List p_Search(String lot_no) {
		
		return null;
	}
	
	public List p_Input(String lot_no, String part_no, int number) {
		
		return null;
	}
	
	public void p_Edit(String lot_no, String part_no, int number) {
		
	}
	
	public List part_Search(String part_no) {
		
		return null;
	}
	
	public void part_Input(List input) {
		
	}
	
	public void part_Edit(String p_no) {
		
	}
	
	public List w_Search(String part_no) {
		
		return null;
	}
	
	public void w_Input(String lot_no, String part_no, String p_no1, String p_no2, int no) {
		
	}
	
	public void w_Output(String lot_no, int no) {
		
	}
	
	public void w_Einput(String lot_no, String part_no, String p_no1, String p_no2, int no) {
		
	} 
	
	public void w_Eoutput(String lot_no, int no) {
		
	}
	
	//BOM1
	public List partNo(String part_no) {
		
		return null;
	}
	
	public void b1_Input(BOM1Bean bombean) {
		
	}
	
	public void b1_Js(BOM1Bean bombean) {
		
	}
	
	//BOM2
	public void b2_Input(BOM2Bean bombean) {
		
	}
	
	public void b2_Js(BOM2Bean bombean) {
		
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
