package henu.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import henu.IF.ManagementTeacherIF;
import henu.bean.Teacher;
import henu.util.DbcpPool;

public class ManagementTeacherImpl implements ManagementTeacherIF{

	@Override
	public boolean addteacher(Teacher tc) {
		String sql = "INSERT INTO teacher (tid,tname,sex,pwd,phone,address,birthdate,email) VALUES(?,?,?,?,?,?,?,?)";
		PreparedStatement ps = DbcpPool.executePreparedStatement(sql);
		int result = 0 ;
		try {
			ps.setString(1, tc.getTid());
			ps.setString(2, tc.getTname());
			ps.setString(3, tc.getSex());
			//ps.setInt(4, tc.getAge());
			ps.setString(4, tc.getPwd());
			ps.setString(5, tc.getPhone());
			ps.setString(6, tc.getAddress());
			ps.setString(7, tc.getBirthdate());
			ps.setString(8, tc.getEmail());
			result = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbcpPool.close();
		if(result>0)
			return true;
		else
			return false;
	}

	@Override
	public List<Teacher> findteacher() {
		String sql = null;
		sql = "select * from teacher";
		List<Teacher> list = new ArrayList<Teacher>();
		ResultSet rs = null;
		try{
			rs = DbcpPool.executeQuery(sql);
			while(rs.next()){
			Teacher tc = new Teacher();
			tc.setAddress(rs.getString("address"));
			tc.setBirthdate(rs.getString("birthdate"));
			//tc.setAge(rs.getInt("age"));
			tc.setEmail(rs.getString("email"));
			tc.setPhone(rs.getString("phone"));
			tc.setPwd(rs.getString("pwd"));
			tc.setSex(rs.getString("sex"));
			tc.setTname(rs.getString("tname"));
			tc.setTid(rs.getString("tid"));
			list.add(tc);
			}
			rs.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		DbcpPool.close();
		return list;
	}

	@Override
	public boolean deleteteacher(String tid) {
		int result = 0;
		String sql = "delete from teacher where tid='"+tid+"'";
		result = DbcpPool.executeUpdate(sql);
		if(result>0)
			return true;
		else 
		    return false;
	}

	@Override
	public boolean updateteacher(Teacher tc) {
		String sql = "UPDATE teacher SET tid=?,tname=?,pwd=?,sex=?,phone=?,address=?,birthdate=?,email=? WHERE tid=?";
		PreparedStatement ps = DbcpPool.executePreparedStatement(sql);
        int result = 0;
		try {
			ps.setString(1, tc.getNewtid());
			ps.setString(2, tc.getTname());
			//ps.setInt(3, tc.getAge());
			ps.setString(9, tc.getTid());
			ps.setString(6, tc.getAddress());
			ps.setString(7, tc.getBirthdate());
			ps.setString(8, tc.getEmail());
			ps.setString(5, tc.getPhone());
			ps.setString(3, tc.getPwd());
			ps.setString(4, tc.getSex());

			result = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbcpPool.close();
		if(result>0)
			return true;
		else
			return false;
	}

}
