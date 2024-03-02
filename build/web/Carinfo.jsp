<%-- 
    Document   : Admin
    Created on : 24-Jan-2023, 8:21:42 pm
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
          <%@include file="customermenubar.jsp"%>
          
        <title>Car Information</title>
    </head>
    <style>
       .container
        {    
            font-family:time of roman;
            height:auto;
            width:50%;
            background:whitesmoke;
            margin-left:auto;
            margin-top:20px;
            border:black outset;
        }
        h3
        {
            margin-top:20px;
        }
        .btn-success
        {
             width:175px;
             border-color: black;
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
      <form action="vehicleinfo" method="post">
        <div class="container">
            
            <div class="row">
                  <center><h3>Car Information</h3></center>
            </div><br>
            
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>User Name</label></div>
                <div class="col-sm-7"><input type="text" class="form-control"name="uname" value="<%out.println(session.getAttribute("uname"));%>" placeholder="Username"></div>
            </div> 
                <br>      
            
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Owner Name</label></div>
                <div class="col-sm-7"><input type="text" class="form-control" name="owner" placeholder="Ownername"></div>
            </div> 
                <br>
                
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Vehicle Name & Model</label></div>
                <div class="col-sm-7"><input type="text" class="form-control" value="<%out.println(session.getAttribute("type"));%>" name="vname" placeholder="Enter Name & model" ></div>
            </div><br>
            
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Car Number</label></div>
                <div class="col-sm-7"><input type="text" class="form-control" value="<%out.println(session.getAttribute("vno"));%>" name="cno" placeholder="Enter Car Number" ></div>
            </div><br>
        
            
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Register date</label></div>
                <div class="col-sm-7"><input type="date" class="form-control" name="rdate" placeholder="Enter Car Number" ></div>
            </div><br>
            
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Insurance</label></div>
                <div class="col-sm-7"><select class="form-control" name="ins"><option>Select</option><option>Yes</option><option>No</option></select></div>
            </div><br>
            
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Insurance Expiry Date</label></div>
                <div class="col-sm-7"><input type="date" name="idate" class="form-control" placeholder="Enter Car Number" ></div>
            </div><br>
            
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Insurance Proof</label></div>
                <div class="col-sm-7"><input type="file" class="form-control" name="iproof" placeholder="Upload Insurance Proof" ></div>
            </div><br>
                      
            <div class="row">
                <center><div class="col-sm-4"><button type="submit" name="submit" name="submit" value="submit" style="background-color:greenyellow;width:175px;" id="btn" class="btn" class="form-control" >Submit</button></div></center>
            </div><br>
                
        </div>
      </form>
    </body>
</html>
