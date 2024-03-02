<%-- 
    Document   : ViewFeedback
    Created on : 31 Jan, 2023, 1:15:35 PM
    Author     : niran
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View feedback Page</title>
        <%@include file="Adminmenubar.jsp"%>
    </head>
<style>
table {
  font-family:times of Roman;
  border-collapse: collapse;
  width: 80%;
  margin-left: auto;
  margin-right: auto;
}

td, th 
{
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) 
{
  background-color: #dddddd;
}
h2
{
    text-align: center;
}
</style>
<body style="background-color:whitesmoke;">
    
   <h2>All View Feedback </h2>
<table>
  <tr>
    <th>ID</th>
    <th>Username</th>
    <th>Name</th>
    <th>Improvement</th>
    <th>Description</th>
  </tr>
 <%
        
          Connection cn=null;
          Statement st=null;
          try{
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
                st=cn.createStatement();
                String sql="select * from feedback";
                ResultSet rs=st.executeQuery(sql);
            while(rs.next())
           {
%>
<tr>
    <td><%=rs.getString("id")%></td>
    <td><%=rs.getString("username")%></td>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("improvement")%></td>
    <td><%=rs.getString("Description")%></td>
    
    
</tr>
<%
}
 }catch(Exception ex)
 {
 
 }  
%> 
</table>
</body>
</html>