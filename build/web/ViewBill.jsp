<%-- 
    Document   : ViewBill
    Created on : 2 Feb, 2023, 11:34:38 AM
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
        <title>View Bill</title>
        
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
h1
{
    text-align: center;
}
</style>
</head>
<body style="background-image:url();background-size:cover;opacity:99%;">
    
    <h1>Bill Information</h1>
<table>
  <tr>
    <th>Id</th>
    <th>User Name</th>
    <th>Driver Name</th>
    <th>Date</th>
    <th>Day</th>
    <th>Charge</th>
    
  </tr>
 <%
        
          Connection cn=null;
          Statement st=null;
          try{
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
                st=cn.createStatement();
                String sql="select * from bill ";
                ResultSet rs=st.executeQuery(sql);
            while(rs.next())
           {
%>
<tr>
    <td><%=rs.getString("id")%></td>
    <td><%=rs.getString("uname")%></td>
    <td><%=rs.getString("dname")%></td>
    <td><%=rs.getString("date")%></td>
    <td><%=rs.getString("day")%></td>
    <td><%=rs.getString("chg")%></td>
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
