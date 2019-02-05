<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="user.userDAO"%>
<%@ page import="user.userDTO"%>
<%@ page import="java.io.PrintWriter"%>
<%

	request.setCharacterEncoding("UTF-8");
	String userid=null;
	String userpassword=null;
	
	if(request.getParameter("userid")!=null){
	userid=(String)request.getParameter("userid");
	}
	if(request.getParameter("userpassword")!=null){
	userpassword=(String)request.getParameter("userpassword");
	}
	if(userid==null||userpassword==null){
	PrintWriter script= response.getWriter();
	script.println("<script>");
	script.println("alert('입력이 안된 사항이 있습니다.');");
	script.println("history.back();");
	script.println("</script>");
	script.close();
	return ;
	}
	userDAO userdao=new userDAO();
	int result=userdao.join(userid, userpassword);
	if(result==1){
		PrintWriter script= response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입에 성공했습니다.');");
		script.println("location.href='index.jsp';");
		script.println("</script>");
		script.close();
		return ;}
	
	%>