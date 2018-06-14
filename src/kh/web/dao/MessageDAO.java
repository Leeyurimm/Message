package kh.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import kh.web.dto.MessageDTO;

public class MessageDAO {
	private Connection getConnetion()  throws Exception {
		Context context = new InitialContext();
		DataSource ds = (DataSource)context.lookup("java:/comp/env/oracle");
		return ds.getConnection();
	}
	
	public int insertMessage (String name, String message) throws Exception {
		Connection con = this.getConnetion();
		String sql = "insert into message values (msg_seq.nextval,?,?)";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, name);
		pstat.setString(2, message);
		int result = pstat.executeUpdate();
		con.commit();
		pstat.close();
		con.close();
		return result;

	}
	
	public List<MessageDTO> getAllData() throws Exception {
		Connection con = this.getConnetion();
		String sql = "select * from message";
		PreparedStatement pstat = con.prepareStatement(sql);
		ResultSet rs = pstat.executeQuery();
		
		List<MessageDTO> result = new ArrayList<>();
		while(rs.next()) {
			MessageDTO dto = new MessageDTO();
			dto.setSeq(rs.getInt("seq"));
			dto.setName(rs.getString("name"));
			dto.setMessage(rs.getString("message"));
			result.add(dto);
		}
		pstat.close();
		con.close();
		return result;
		
	}
	
}
