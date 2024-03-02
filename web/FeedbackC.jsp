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
        <title>Feedback Page</title>
         <%@include file="customermenubar.jsp"%>
    </head>
    <style>
       .container
        {    
            font-family:time of roman;
            height:auto;
            width:600px;
            background:beige;
            margin-left:850px;
            margin-top:10px;
            border:black outset;
            border-radius:15px 15px 15px 15px;
            
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
            String sql="Select id from feedback";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
           {
                id=Integer.parseInt(rs.getString("id"))+1;
           }   
        }
        catch(Exception ex)
        {
            out.println(ex);
        }
             
       
       %>
   
<!-------------------------------------------------------------------------------------------------------------------------------------------------->
        
<form action="feedback" method="post">
        <div class="container">
        
            <div class="row">
                  <center><h3>Feedback</h3></center>
            </div><br>
                 
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Id</label></div>
                <div class="col-sm-7"><input type="text"  name="fid" value="<%=id%>" class="form-control" placeholder="Feeback id" ></div>
            </div> 
                <br>
            
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Username</label></div>
                <div class="col-sm-7"><input type="text" name="fuser" class="form-control" placeholder="Username" ></div>
            </div> 
                <br>
                
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Name</label></div>
                <div class="col-sm-7"><input type="text" name="fname" class="form-control" placeholder="Enter Name" ></div>
            </div><br>
            
              <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Improvement</label></div>
                <div class="col-sm-7"><input type="text" name="fimp" class="form-control" placeholder="Enter Improvement"  ></div>
            </div><br>
        
            
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Description</label></div>
                <div class="col-sm-7"><textarea class="form-control" name="desc" placeholder="Enter Description"></textarea></div>
            </div><br>
            
                      
            <div class="row">
                <center><div class="col-sm-4"><button type="submit" name="submit" value="submit" style="background-color:greenyellow" id="btn" class="btn" class="form-control" >Submit</button></div></center>
            </div><br><br>
                
        </div>
</form>
    </body>
</html>
