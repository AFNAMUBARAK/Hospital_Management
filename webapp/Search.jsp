<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import= "com.in.bean.RequestData" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Approval</title>
</head>

  <BODY BGCOLOR="white">
       <H1>The View Of Database Table </H1>
       
       <form class="searchbar" method = "post">
          <input type="text" placeholder="Search" name = "search">
          <input type="submit" value = "search">
        </form>
        
       <%
       	try{
        RequestData rd = new RequestData();
		String val = rd.getVal();
		String search = rd.getSearch();
		String desc = rd.getDesc();
		int id = 1;
        
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
        Statement statement = connection.createStatement() ;
        String src = request.getParameter("search");
        ResultSet resultSet = statement.executeQuery("SELECT * FROM images WHERE name = '"+src+"'") ;
       %>
       <form action="imgdownload" method = "post">
      <TABLE BORDER="1">
      <TR>
      <TH><b>Sl.No</b></td></TH>
      <TH><b>Descrpition</b></TH>
      <TH><b>Submit</b></TH>
      
      </TR>
      <% while(resultSet.next()){ %>
		<% String name = resultSet.getString("name");%>
      <TR>
       <TD> <%=id%></td>
       <TD> <%=resultSet.getString(3)%></TD>
       <TD><input type="hidden" name="name" value="<%= resultSet.getString("name") %>"></TD>
       <TD><input type="hidden" name="keyword" value="<%= resultSet.getString("keyword") %>"></TD>
       <TD><input  type= "submit" value="Request"></TD>
      </TR>
      <% ++id; %>
      <% }
       	}catch(Exception e){System.out.println(e);}
      %>
      
     </TABLE>
     </form>
</html>