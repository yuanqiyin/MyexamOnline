package henu.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import henu.IF.LoadIF;
import henu.bean.ChoiceQuestion;
import henu.bean.DetailStatistics;
import henu.bean.FillQuestion;
import henu.bean.JudgeQuestion;
import henu.bean.ShortAnswerQuestions;
import henu.bean.Student;
import henu.util.DbcpPool;

public class LoadImpl implements LoadIF{

	@Override
	public boolean saveCQ(ChoiceQuestion CQ, int subjectid) {
		String sql_save = " INSERT INTO choicequestion(c_question,c_choiceA,c_choiceB,c_choiceC,c_choiceD,c_answer,c_subjectid) VALUES(?,?,?,?,?,?,?)";  
        int i = 0;  
        try {  
        	PreparedStatement prep = null;  
        	prep = DbcpPool.executePreparedStatement(sql_save);
            prep.setString(1, CQ.getC_question());  
            prep.setString(2, CQ.getC_choiceA());  
            prep.setString(3, CQ.getC_choiceB());  
            prep.setString(4, CQ.getC_choiceC());  
            prep.setString(5, CQ.getC_choiceD());  
            prep.setString(6, CQ.getC_answer());  
            prep.setInt(7, subjectid);  
            i  = prep.executeUpdate();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }finally{  
        	DbcpPool.close();
        }  
        if(i>0)  
           return true;  
        else 
           return false; 
	}

	@Override
	public boolean saveFQ(FillQuestion FQ, int subjectid) {
		String sql_save = " INSERT INTO fillquestion(f_question,f_answer,f_subjectid) VALUES(?,?,?)";  
        int i = 0;  
        try {  
        	PreparedStatement prep = null;  
        	prep = DbcpPool.executePreparedStatement(sql_save);
            prep.setString(1, FQ.getF_question());  
            prep.setString(2, FQ.getF_answer());  
            prep.setInt(3, subjectid);  
            i  = prep.executeUpdate();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }finally{  
        	DbcpPool.close();
        }  
        if(i>0)  
           return true;  
        else 
           return false;
	}
	@Override
	public boolean saveSA(ShortAnswerQuestions SA, int subjectid) {
		String sql_save = " INSERT INTO shortanswerquestions(s_question,s_answer,s_subjectid) VALUES(?,?,?)";  
        int i = 0;  
        try {  
        	PreparedStatement prep = null;  
        	prep = DbcpPool.executePreparedStatement(sql_save);
            prep.setString(1, SA.getS_question());  
            prep.setString(2, SA.getS_answer());  
            prep.setInt(3, subjectid);  
            i  = prep.executeUpdate();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }finally{  
        	DbcpPool.close();
        }  
        if(i>0)  
           return true;  
        else 
           return false;
	}
	@Override
	public boolean saveJQ(JudgeQuestion JQ, int subjectid) {
		String sql_save = " INSERT INTO judgequestion(j_question,j_answer,j_subjectid) VALUES(?,?,?)";  
        int i = 0;  
        try {  
        	PreparedStatement prep = null;  
        	prep = DbcpPool.executePreparedStatement(sql_save);
            prep.setString(1, JQ.getJ_question());  
            prep.setInt(2, JQ.getJ_answer());  
            prep.setInt(3, subjectid);  
            i  = prep.executeUpdate();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }finally{  
        	DbcpPool.close();
        }  
        if(i>0)  
           return true;  
        else 
           return false;
	}

	@Override
	public List<DetailStatistics> saveExcel(int paperid) {
		String sql = null;
		sql = "select * from grade a,student b "
				+ "where a.sid=b.sid and a.paperid="+paperid+"";
		List<DetailStatistics> list = new ArrayList<DetailStatistics>();
		ResultSet rs = null;
		try{
			rs = DbcpPool.executeQuery(sql);
			while(rs.next()){
			DetailStatistics ds = new DetailStatistics();
			ds.setScore(rs.getInt("a.score"));
			ds.setSid(rs.getString("b.sid"));
			ds.setSname(rs.getString("b.sname"));
			ds.setScorses(rs.getInt("a.scorses"));
			ds.setTotal(rs.getInt("a.score")+rs.getInt("a.scorses"));
			list.add(ds);
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
	public boolean saveStudent(Student CQ1) {
		String sql_save = " INSERT INTO student(sid,sname,sex,classid,pwd,phone,address,birthdate,email) VALUES(?,?,?,?,?,?,?,?,?)";  
        int i = 0;  
        try {  
        	PreparedStatement prep = null;  
        	prep = DbcpPool.executePreparedStatement(sql_save);
            prep.setString(1, CQ1.getSid());  
            prep.setString(2, CQ1.getSname());  
            prep.setString(3, CQ1.getSex());  
            prep.setInt(4,CQ1.getClassid());  
            prep.setString(5, CQ1.getPwd());  
            prep.setString(6, CQ1.getPhone());  
            prep.setString(7, CQ1.getAddress());
            prep.setString(8, CQ1.getBirthdate());
            prep.setString(9, CQ1.getEmail());
            i  = prep.executeUpdate();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }finally{  
        	DbcpPool.close();
        }  
        if(i>0)  
           return true;  
        else 
           return false; 
	}
    
}
