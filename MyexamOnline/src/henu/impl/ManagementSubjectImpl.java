package henu.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import henu.IF.ManagementSubjectIF;
import henu.bean.Subject;
import henu.util.DbcpPool;

public class ManagementSubjectImpl implements ManagementSubjectIF{

	@Override
	public boolean addsubject(Subject sub) {
		String sql = "INSERT INTO subject (subjectname,subjectteacher,subjectterm)VALUES('"+sub.getSubjectname()+"','"+sub.getSubjectteacher()+"','"+sub.getSubjectterm()+"')";
		PreparedStatement ps = DbcpPool.executePreparedStatement(sql);
		int result = 0 ;
		try {
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
	public List<Subject> findsubject() {
		String sql = null;
		sql = "select * from subject";
		List<Subject> list = new ArrayList<Subject>();
		ResultSet rs = null;
		try{
			rs = DbcpPool.executeQuery(sql);
			while(rs.next()){
			Subject sj = new Subject();
			sj.setSubjectid(rs.getInt("subjectid"));
			sj.setSubjectname(rs.getString("subjectname"));
			sj.setSubjectteacher(rs.getString("subjectteacher"));
			sj.setSubjectterm(rs.getString("subjectterm"));
			list.add(sj);
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
	public boolean deletesubject(int subjectid) {
		int result = 0;
		String sql = "delete from subject where subjectid="+subjectid+"";
		
		result = DbcpPool.executeUpdate(sql);
		if(result>0)
			return true;
		else 
		    return false;
	}

	@Override
	public boolean updatesubject(Subject sub) {
		String sql = "UPDATE subject SET subjectname=?,subjectteacher=?,subjectterm=? WHERE subjectid="+sub.getSubjectid()+"";
		System.out.println(sub.getSubjectname());
		PreparedStatement ps = DbcpPool.executePreparedStatement(sql);
        int result = 0;
		try {

			ps.setString(1, sub.getSubjectname());
			ps.setString(2, sub.getSubjectteacher());
			ps.setString(3, sub.getSubjectterm());
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
