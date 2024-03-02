<%-- 
    Document   : viewbookingall
    Created on : 12 Mar, 2023, 1:19:03 PM
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
        <title> Booking View Page</title>
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
             <th>ID</th>
             <th>Username</th>
             <th>Name</th>
             <th>Driver User</th>
             <th>Driver Name</th>
             <th>Vehicle No</th>
             <th>Address</th>
             <th>Date</th>
             <th>Day</th>
             <th>Vehicle Type</th>
             <th>Charge</th>
             <th>Mobile No</th>
             <th>Destination</th>
             <th>Time</th>
             
            </tr>
 <%
        
          Connection cn=null;
          Statement st=null;
          try{
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
                st=cn.createStatement();
                String sql="select * from booking";
                ResultSet rs=st.executeQuery(sql);
            while(rs.next())
           {
%>
<tr>
    
    
    <td><%=rs.getString("id")%></td>
    <td><%=rs.getString("user")%></td>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("duser")%></td>
    <td><%=rs.getString("dname")%></td>
    <td><%=rs.getString("vno")%></td>
    <td><%=rs.getString("ads")%></td>
    <td><%=rs.getString("date")%></td>
    <td><%=rs.getString("day")%></td>
    <td><%=rs.getString("vtype")%></td>
    <td><%=rs.getString("chg")%></td>
    <td><%=rs.getString("mno")%></td>
    <td><%=rs.getString("des")%></td>
    <td><%=rs.getString("time")%></td>
    
    
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
