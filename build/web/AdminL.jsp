<%-- 
    Document   : Admin
    Created on : 24-Jan-2023, 8:21:42 pm
    Author     : niran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="Assets1\css\bootstrap.css">
        <title>Admin Page</title>
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
             background-color:greenyellow;
             border-color: black;
        }
    </style>
    <body style="background-image:url(Image/login11.jpg);background-size:cover;opacity:95%;">
        <form action="adminlogin" method="POST">
        <div class="container">
             <div class="row" >
             </div><br>
            <div class="row">
                  <center><h3>Admin Login</h3></center>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-1"></div>
            </div><br><br>
                  
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Username</label></div>
                <div class="col-sm-7"><input type="text" class="form-control" name="user" placeholder="Username"></div>
            </div> 
                <br><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Password</label></div>
                <div class="col-sm-7"><input type="password" class="form-control" name="pass"  placeholder="*********" ></div>
            </div><br><br><br>
                
            <div class="row">
                <center><div class="col-sm-4"><button class="btn" name="submit" value="Login" class="form-control">Login</button></div></center>
            </div>
                
        </div>
    </body>
</form>
</html>
