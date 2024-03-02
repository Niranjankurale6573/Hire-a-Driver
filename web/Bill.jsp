<%-- 
    Document   : Bill
    Created on : 2 Feb, 2023, 11:08:48 AM
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
        <link rel="stylesheet" href="Assets\css\bootstrap.css">
        <title>Bill Page</title>
       <%@include file="customermenubar.jsp"%>
       <script src="validation.js"></script>
    </head>
    <style>
       .container
        {    
            font-family:time of roman;
            height:550px;
            width:50%;
            background:whitesmoke;
            margin-left:auto;
            margin-top:20px;
        }
        h3
        {
            margin-top:20px;
        }
        .btn
        {
             width:300px;
             height:45px;
             border-color: black;
        }
        .container1
        {
            font-family:time of roman;
            height:auto;
            width:80%;
            background:whitesmoke;
            margin-left:100px;
            border-radius:50px 0px 50px 0px;
            float:left; 
        }
     </style>
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
       %>
<!------------------------------------------------------------------------------------------------------------------------------------------------->
        <form action="Payment.jsp" method="POST">
         <div class="container">
            <div class="row">
                  <center><h3>Bill Mode</h3></center>
            </div><br>
            
             <div class="container1"> 
            <br>
             <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label></label></div>
                <div class="col-sm-7"><input type="hidden" class="form-control" value="<%out.println(session.getAttribute("booking_id"));%>" name="id" placeholder="Booking Id"></div>
            </div><br>
            
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Username</label></div>
                <div class="col-sm-7"><input type="text" class="form-control" name="uname"value="<%out.println(session.getAttribute("uname"));%>" placeholder="Username"></div>
            </div><br>
            
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Driver Username</label></div>
                <div class="col-sm-7"><input type="text" class="form-control" value="<%out.println(session.getAttribute("duname"));%>" name="duname" placeholder="Driver Username"></div>
            </div><br>
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Date</label></div>
                <div class="col-sm-7"><input type="text" class="form-control" value="<%out.println(session.getAttribute("date"));%>" name="date" placeholder="Enter Date" ></div>
             </div><br>
            
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Day</label></div>
                <div class="col-sm-4"><input type="text" class="form-control" name="day" value="<%out.println(session.getAttribute("day"));%>"id="day" placeholder="Enter Day" ></div>
     
                <div class="col-sm-2"><input type="button" style="background-color:skyblue;width:125px;" value="Check Charges" onclick="sum()"></div>
            </div><br>

            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Charges</label></div>
                <div class="col-sm-5"> <p id="charge"></p> </div>
                
            </div>
                             
            <div class="row">
            </div><br>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-3"><button type="submit" name="online" value="online" style="background-color:greenyellow" id="btn" class="btn" class="form-control" >Pay Online</button>
                </div>
                
               
         </div>
            </form>

   

 </body>
 
    <script>
      function sum(){
        
          let num=1
          num=document.getElementById("day").value
          num=num*650
          console.log(num)
          document.getElementById("charge").innerHTML=num
      }
   </script>
</html>
