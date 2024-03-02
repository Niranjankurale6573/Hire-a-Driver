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
          
          
        <title>Driver Page</title>
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
      <form action="driverlogin" method="POST">
        <div class="container">
             <div class="row" >
             </div><br>
            <div class="row">
                  <center><h3>Driver Login</h3></center>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-1"></div>
            </div><br><br>
                  
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Username</label></div>
                <div class="col-sm-7"><input type="text" name="user" class="form-control" placeholder="Username"></div>
            </div> 
                <br><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Password</label></div>
                <div class="col-sm-7"><input type="password" name="pass" class="form-control" placeholder="*********" ></div>
            </div><br><br>
                
            <div class="row">
             <center><div class="col-sm-4"><button type="submit" name="submit" value="submit" style="background-color:greenyellow" id="btn" class="btn" class="form-control" >Login</button></div></center>
            </div><br>
            <center><a href="RegisterD.jsp" style="color:red;" class="btn-link" id="link" style="margin-left:">&ggg; Register Now..</a></center><br>
                
        </div>
      </form>
    </body>
</html>
