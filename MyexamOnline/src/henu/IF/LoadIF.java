package henu.IF;

import java.util.List;

import henu.bean.ChoiceQuestion;
import henu.bean.DetailStatistics;
import henu.bean.FillQuestion;
import henu.bean.JudgeQuestion;
import henu.bean.ShortAnswerQuestions;
import henu.bean.Student;

public interface LoadIF {
	public boolean saveCQ(ChoiceQuestion CQ, int subjectid); 
	public boolean saveFQ(FillQuestion FQ, int subjectid); 
	public boolean saveJQ(JudgeQuestion JQ, int subjectid); 
	
	public List<DetailStatistics> saveExcel(int paperid);
	public boolean saveSA(ShortAnswerQuestions sA, int subjectid);
	public boolean saveStudent(Student CQ1);
}
