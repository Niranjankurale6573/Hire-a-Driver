<%-- 
    Document   : Payment
    Created on : 27-Jan-2023, 9:33:51 pm
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
        <link rel="stylesheet" href="Assets1\css\bootstrap.css">
         <%@include file="customermenubar.jsp"%>
        <title>Online Payment Page</title>
    <style>
      .Contener1
      {
          font-family:time of romen;
          height:570px;
          width:40%;
          margin-left:400px;
          background-color:whitesmoke; 
          margin-top:5px;
          border-radius:05px 05px 05px 05px;
          border:black outset;
          
      }
      .container2
      {
          font-family:time of romen;
          height:auto;
          width:85%;
          background-color:whitesmoke; 
          margin-left:50px;
          border-radius:5px 5px 5px 5px;
      }
      h2
      {
          font-family:time of romen; 
          margin-top:10px;
      }
      
      .btn
      {
        margin-left:240px;
        width:180px;
        border-color: black;
      }
  </style>
    </head>
    <body style="background-image:url(Image/background3.jpg);background-size:cover;opacity:99%;">
     <%
        Connection cn =null;
        Statement st =null;
   
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
            
        }
        catch(Exception ex)
        {
            out.println(ex);
        }
        
        int id=1;
        try
        {
            st=cn.createStatement();
            String sql="Select transid from onlinepay";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
           {
                id=Integer.parseInt(rs.getString("transid"))+1;
           }   
        }
        catch(Exception ex)
        {
            out.println(ex);
        }
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
            st=cn.createStatement();  
            {
       
       %>
      <form action="payment" method="post"> 
        
     <div class="Contener1"><br>
         <center><h2>Card Payment</h2></center>
         
     <div class="container2">
       <br>
       <div class="row">
         <div class="col-sm-1"></div>
         <div class="col-sm-3"><label></label></div>
         <div class="col-sm-6"><input type="hidden" class="form-control" value="<%=id%>" name="id" placeholder="Transaction id" ></div>
      </div>
       
      <div class="row">
         <div class="col-sm-1"></div>
         <div class="col-sm-3"><label>Card Holder Name</label></div>
         <div class="col-sm-6"><input type="text" class="form-control" name="name" placeholder="Enter Card Holder Name" ></div>
      </div><br>
      
      <div class="row">
         <div class="col-sm-1"></div>
         <div class="col-sm-3"><label>Card No.</label></div>
         <div class="col-sm-6"><input type="text" class="form-control" name="cn" placeholder="Enter Card Number"></div>
      </div><br>
      
         <div class="row">
         <div class="col-sm-1"></div>
         <div class="col-sm-3"><label>Expiry Date</label></div>
         <div class="col-sm-6"><input type="date" class="form-control" name="ped" placeholder="Enter Expiry Date"></div>
      </div><br>
      
      <div class="row">
         <div class="col-sm-1"></div>
         <div class="col-sm-3"><label>CVV</label></div> 
         <div class="col-sm-6"><input type="number" class="form-control" name="cv" placeholder="Enter CVV"  maxlength="3"></div>
      </div><br>
     
      <div class="row">
        <div class="col-sm-1"></div>
        <div class="col-sm-3"><label>Amount</label></div>
        <div class="col-sm-6"><input type="number" class="form-control" name="pa" value="<%out.println(session.getAttribute("chg"));%>"  placeholder="Enter Amount Number"></div>
      </div><br>
     </div>
      
         <br>
     <div class="row">
     <div class="col-sm-4"><button type="submit" name="submit" value="submit" style="background-color:greenyellow" id="btn" class="btn" class="form-control" >Submit</button></div>
    <div><br>
     
 </div>
 </form>
<%
}
 }catch(Exception ex)
 {
     out.println(ex);
 }  
   
%>
 </body>
</html>
