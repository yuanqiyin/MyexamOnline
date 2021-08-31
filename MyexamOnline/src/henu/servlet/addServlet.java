package henu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import henu.others.MyExcel;

/**
 * Servlet implementation class addServlet
 */
@WebServlet("/addServlet")
public class addServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println("sadas");
		MultipartResolver resolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        MultipartHttpServletRequest multipartRequest = resolver.resolveMultipart(request);

		 Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
		 MultipartFile mf =null;
		  for (Entry<String, MultipartFile> entity : fileMap.entrySet()) {

	            mf = entity.getValue();
	            break;
		  }
		 this.upLoad1(mf,request, response);
	}
	private void upLoad1(MultipartFile file,HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println(file.getOriginalFilename());
		try {
            byte[] bytes=file.getBytes();
            Path path= Paths.get("D:/test/"+file.getOriginalFilename());
            Files.write(path,bytes);
            System.out.println("写入中");
           
        }catch (IOException e){
            e.printStackTrace();
        }
		System.out.println("写入后");
		String filename="D:/test/"+file.getOriginalFilename();
		//int subjectid = Integer.parseInt(req.getParameter("subjectid"));
		//System.out.println(subjectid+"ggggggggggg");
		MyExcel me = new MyExcel();
		boolean result = false;
		result=me.InsertStudent(filename);
		java.io.File file1 = new java.io.File(filename);
		file1.delete();
		response.setHeader("Content-type", "text/html;charset=UTF-8");  
		PrintWriter   out   =   response.getWriter();
		if(result) {
            out.println("<script type=\"text/javascript\">alert('导入成功!');</script>"); 
    		out.println("<script>window.location.href='/MyexamOnline/admin/addStudent.jsp'</script>");
		}
		else
			out.println("<script type=\"text/javascript\">alert('导入失败，请确保文件内容格式一致!');history.back();</script>"); 
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
