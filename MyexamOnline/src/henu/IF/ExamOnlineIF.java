package henu.IF;

import java.text.ParseException;
import java.util.List;

import henu.bean.Paper;
import henu.bean.StuAnswer;

public interface ExamOnlineIF {
    public List<Paper> examlist(String sid); 
    public int getScore(String Q[],int paperid,String sid);
    public int checkState(int paperid, String sid) throws ParseException;
	public boolean addStuAnswer(StuAnswer sa);
}
