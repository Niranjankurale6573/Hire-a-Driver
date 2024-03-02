
<%-- 
    Document   : ViewPayment
    Created on : 27-Jan-2023, 10:16:11 pm
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
        <title>Payment History</title>
        <%@include file="Adminmenubar.jsp"%>
        <link rel="stylesheet" href="Assets\css\bootstrap.css">
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
</head>
<body style="background-color:whitesmoke;">
    
    <h2>All Card Payment Information</h2>
<table>
  <tr>
    <th>Username</th>
    <th>transaction Id</th>
    <th>Card No.</th>
    <th>Exp Date</th>
    <th>CVV</th>
    <th>Amount</th>
    
  </tr>
 <%
        
          Connection cn=null;
          Statement st=null;
          try{
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
                st=cn.createStatement();
                String sql="select * from onlinepay";
                ResultSet rs=st.executeQuery(sql);
            while(rs.next())
           {
%>
<tr>
    <td><%=rs.getString("username")%></td>
    <td><%=rs.getString("transid")%></td>
    <td><%=rs.getString("cardno")%></td>
    <td><%=rs.getString("expdate")%></td>
    <td><%=rs.getString("cvv")%></td>
    <td><%=rs.getString("amount")%></td>
</tr>
<%
}
 }catch(Exception ex)
 {
 
 }  
%> 
</table>
</html>
