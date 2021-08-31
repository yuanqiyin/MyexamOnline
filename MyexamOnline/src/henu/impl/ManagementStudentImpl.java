package henu.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import henu.IF.ManagementStudentIF;
import henu.bean.Student;
import henu.others.myClass;
import henu.util.DbcpPool;

public class ManagementStudentImpl implements ManagementStudentIF{

	@Override
	public boolean addstudent(Student sd) {
		String sql = "insert into student(sid,sname,sex,classid,pwd,phone,address,birthdate,email) values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = DbcpPool.executePreparedStatement(sql);
		int r=0;
		try{
			ps.setString(1, sd.getSid());
			ps.setString(2, sd.getSname());
			ps.setString(3, sd.getSex());
			//ps.setInt(3, sd.getClassid());
			ps.setInt(4, sd.getClassid());
			ps.setString(5, sd.getPwd());
			ps.setString(6,sd.getPhone());
			ps.setString(7, sd.getAddress());
			ps.setString(8, sd.getBirthdate());
			ps.setString(9, sd.getEmail());
			r=ps.executeUpdate();
			ps.close();
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		DbcpPool.close();
		if(r==0)
			return false;
		else return true;
	}

	@Override
	public List<Student> findstudent() {
		String sql = "select * from student";
		ResultSet rs = null;
		List<Student> list = new ArrayList<Student>();
		try {
			rs=DbcpPool.executeQuery(sql);
			while(rs.next())
			{
				Student s = new Student();
				myClass mc = new myClass();
				s.setSid(rs.getString("sid"));
				s.setSname(rs.getString("sname"));
				s.setSex(rs.getString("sex"));
				s.setClassid(rs.getInt("classid"));
				s.setPwd(rs.getString("pwd"));
				s.setPhone(rs.getString("phone"));
				s.setAddress(rs.getString("address"));
				s.setBirthdate(rs.getString("birthdate"));
				s.setEmail(rs.getString("email"));
				s.setClassname(mc.getClassName(Integer.parseInt(rs.getString("classid"))));
	            list.add(s);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DbcpPool.close();
		return list;
	}

	@Override
	public boolean deletestudent(String sid) {
		String sql = "DELETE FROM student WHERE sid= '" + sid + "'";
		int result = 0 ;
		result = DbcpPool.executeUpdate(sql);
		DbcpPool.close();
		if(result>0)
			return true;
		else
			return false;
	}

	@Override
	public boolean updatestudent(Student sd) {
		String sql = null;
		sql = "update student set sid=?,sname=?,sex=?,classid=?,pwd=?,phone=?,address=?,birthdate=?,email=?"
				+" where sid=?";
	    PreparedStatement ps = DbcpPool.executePreparedStatement(sql);
	    int result = 0;
	    try {
		ps.setString(1, sd.getNewsid());
		ps.setString(2, sd.getSname());
		ps.setString(3, sd.getSex());
		ps.setInt(4, sd.getClassid());
		ps.setString(5, sd.getPwd());
		ps.setString(6, sd.getPhone());
		ps.setString(7, sd.getAddress());
		ps.setString(8, sd.getBirthdate());
		ps.setString(9, sd.getEmail());
		ps.setString(10, sd.getSid());
		result = ps.executeUpdate();
		ps.close();
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
