package ERP.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.sql.DataSource;

import ERP.Bean.BOM1Bean;
import ERP.Bean.BOM2Bean;

public class jinDAO {
	private Connection con;
	private PreparedStatement psmt;
	private DataSource dataFac;
	private ResultSet rs;
	
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
}
