<%@page import="java.sql.ResultSet"%>
<%
    
String id= request.getParameter("id");

 ResultSet rs=dbutil.DButil.read("select * from request where id='"+id+"'");
if(rs.next())
 out.println(true);
else
out.println(false);
%>