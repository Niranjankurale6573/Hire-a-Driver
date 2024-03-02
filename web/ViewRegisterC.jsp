<%-- 
    Document   : ViewRegisterC
    Created on : 27-Jan-2023, 8:01:20 pm
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
        <title> Customers View Page</title>
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
 <h2>All Customer Details </h2>
<table>
  <tr>
             
             <th>Name</th>
             <th>Address</th>
             <th>Email</th>
             <th>Mobile No.</th>
             <th>Gender</th>
             <th>DOB</th>
             <th>Username</th>
             <th>Password</th>
             
            </tr>
 <%
        
          Connection cn=null;
          Statement st=null;
          try{
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
                st=cn.createStatement();
                String sql="select * from customer";
                ResultSet rs=st.executeQuery(sql);
            while(rs.next())
           {
%>
<tr>
    
    
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("address")%></td>
    <td><%=rs.getString("email")%></td>
    <td><%=rs.getString("mobile")%></td>
    <td><%=rs.getString("gender")%></td>
    <td><%=rs.getString("dob")%></td>
    <td><%=rs.getString("username")%></td>
    <td><%=rs.getString("password")%></td>
    
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
