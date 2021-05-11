
<%@ page contentType ="text/html; charset=utf-8" pageEncoding="utf-8" %>
 <%@ page import = "java.sql.*" %>
 <%
 	String userID = request.getParameter("userID");
 	String userPassword = request.getParameter("userPassword");
 	
 	Connection myConn = null;
 	Statement stmt = null;
 	String mySQL = null;
 	
 	String dbur1 = "jdbc:oracle:thin:@210.94.199.20:1521:dblab";
 	String user = "ST2015111489";
 	String passwd = "ST2015111489";
 	String dbdriver = "oracle.jdbc.OracleDriver";
 	String temp1="";
 	String temp2="";
 	
 	Class.forName(dbdriver);
 	myConn = DriverManager.getConnection(dbur1, user, passwd);
 	stmt = myConn.createStatement();
 	
 	mySQL = "select s_id, s_name from student where s_id ='" + userID + "' and s_pwd = '" + userPassword + "'";
 	
 	ResultSet myResultSet = stmt.executeQuery(mySQL);
 	if(myResultSet.next()){
 		session.setAttribute("user",userID);
 		temp1=myResultSet.getString("s_id");
 		session.setAttribute("name", myResultSet.getString("s_name"));
 		temp2=myResultSet.getString("s_pwd");
 		response.sendRedirect("main.jsp");
 	} else {
 %>
<script>
	alert("사용자아이디 혹은 암호가 틀렸습니다.<%=userID%>,<%=userPassword%>,<%=temp1%>,<%=temp2%>");
	location.href="login.jsp";
</script>
<%
 	}
 	stmt.close();
 	myConn.close();
 %>
