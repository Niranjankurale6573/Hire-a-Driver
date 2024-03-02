<%-- 
    Document   : Admin
    Created on : 24-Jan-2023, 8:21:42 pm
    Author     : niran
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="Assets1\css\bootstrap.css">
          
          
        <title>Customer Page</title>
    </head>
    <style>
       .container
        {    
            font-family:time of roman;
            height:450px;
            width:500px;
            background:whitesmoke;
            border-radius:50px 5px 50px 5px;
            margin-left:900px;
            margin-top:150px;
            border:black outset;
        }
        h3
        {
            margin-top:20px;
        }
        .btn
        {
             width:175px;
    
             border-color: black;
        }
    </style>
    <body style="background-image:url(Image/login22.jpg);background-size:cover;opacity:95%;">
       <form action="clogin" method="post">
        <div class="container">
             <div class="row" >
             </div><br>
            <div class="row">
                  <center><h3>Customer Login</h3></center>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-1"></div>
            </div><br><br>
                  
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Username</label></div>
                <div class="col-sm-7"><input type="text" class="form-control" name="user" placeholder="Username"></div>
                <input type="hidden" name="fname" value="">
            </div> 
                <br><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Password</label></div>
                <div class="col-sm-7"><input type="password" class="form-control" name="pass" placeholder="*********" ></div>
            </div><br><br>
                
            <div class="row">
             <center><div class="col-sm-4"><button type="submit" name="submit" value="login" style="background-color:greenyellow" id="btn" class="btn" class="form-control" >Submit</button></div></center>
            </div><br>
            <center><a href="RegisterC.jsp" style="color:red;" class="btn-link" id="link" style="margin-left:">&ggg; Go To Register Page</a></center><br>
                
        </div>
       </form>
    </body>
</html>
