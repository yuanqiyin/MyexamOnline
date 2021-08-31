package henu.IF;

import java.util.List;

import henu.bean.ChoiceQuestion;
import henu.bean.FillQuestion;
import henu.bean.JudgeQuestion;
import henu.bean.ShortAnswerQuestions;
import henu.bean.StuAnswer;

public interface ManagementQuestionIF {
    public boolean addchoiceQuestion(ChoiceQuestion cq);
    public boolean addfillQuestion(FillQuestion fq);
    public boolean addjudgeQuestion(JudgeQuestion jq);
    public List<ChoiceQuestion> findchoiceQuestion(String subjectid);
    public boolean deletechoiceQuestion(String c_id);
    public boolean modifychoiceQuestion(ChoiceQuestion cq);
    public List<FillQuestion> findfillQuestion(String subjectid);
    public boolean deletefillQuestion(String f_id);
    public boolean modifyfillQuestion(FillQuestion fq);
    public List<JudgeQuestion> findjudgeQuestion(String subjectid);
    public boolean deletejudgeQuestion(String j_id);
    public boolean modifyjudgeQuestion(JudgeQuestion jq);
	public boolean addsaQuestion(ShortAnswerQuestions sa);
	public List<ShortAnswerQuestions> findsaQuestion(String subjectid);
	public boolean deletesaQuestion(String s_id);
	public boolean modifysaQuestion(ShortAnswerQuestions sa);
	//public List<StuAnswer> findsaAnswer();
	public boolean addSaScore(StuAnswer sa);
	public List<StuAnswer> findsaAnswer(int subjectid);
	public List<ShortAnswerQuestions> findSaQuestionBySubjectId(int subjectid);
}
