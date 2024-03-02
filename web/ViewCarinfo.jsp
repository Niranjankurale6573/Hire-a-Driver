<%-- 
    Document   : ViewCarinfo
    Created on : 27-Jan-2023, 8:14:32 pm
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
        <title> Car Information View Page</title>
         <%@include file="Adminmenubar.jsp"%>
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
</head>
<body style="background-color:whitesmoke;">    
    <h2>All Car Information</h2>
<table>
  <tr>
    <th>Username</th>
    <th>Car Owner</th>
    <th>Car Model</th>
    <th>Car No.</th>
    <th>Register No.</th>
    <th>Insurance</th>
    <th>InsExp. Date</th>
    <th>Insurance proof</th>
    
  </tr>
 <%
        
          Connection cn=null;
          Statement st=null;
          try{
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
                st=cn.createStatement();
                String sql="select * from carinfo";
                ResultSet rs=st.executeQuery(sql);
            while(rs.next())
           {
%>
<tr>
    <td><%=rs.getString("username")%></td>
    <td><%=rs.getString("regcar")%></td>
    <td><%=rs.getString("vehiname")%></td>
    <td><%=rs.getString("carno")%></td>
    <td><%=rs.getString("regdate")%></td>
    <td><%=rs.getString("insurance")%></td>
    <td><%=rs.getString("insexpdate")%></td>
    <td><%=rs.getString("insproof")%></td>
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
