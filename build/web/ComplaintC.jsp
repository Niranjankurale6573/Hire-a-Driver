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
        <title>Complaint Page</title>
        <%@include file="customermenubar.jsp"%>
    </head>
    <style>
        .body
        {
            margin:0%;
            padding:0%;
            border:black outset;
        }
        .container1
        {
         margin-top:30px;
         height:600px;
         width:40%;
         margin-left:850px;
         background-color:beige;
         border:black outset;
         border-radius:15px 15px 15px 15px;
        }
       .container2
        {    
            font-family:time of roman;
            height:410px;
            width:90%;
            margin-left:50px;
            background:beige;
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
            String sql="Select id from complaint";
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
<!------------------------------------------------------------------------------------------------------------------------------------------------>
    <form action="complaint" method="POST">
        <div class="container1">
            <br>
        <div class="container2">
            
            <div class="row">
                  <center><h3>Complaint Driver</h3></center>
            </div><br>
                  
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Id</label></div>
                <div class="col-sm-7"><input type="text" name="id" value="<%=id%>" class="form-control" placeholder="Enter ID" ></div>
            </div><br>
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Username</label></div>
                <div class="col-sm-7"><input type="text" name="uname" class="form-control" placeholder="Enter Username"></div>
            </div><br>
                <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Name</label></div>
                <div class="col-sm-7"><input type="text" name="cname" class="form-control" placeholder="Enter Name" ></div>
            </div><br>
            
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Driver Name</label></div>
                <div class="col-sm-7"><input type="text" name="dname" class="form-control" placeholder="Enter Driver Username" ></div>
            </div><br>
            
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Date</label></div>
                <div class="col-sm-7"><input type="date" name="date" class="form-control"></div>
            </div><br>
       
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2"><label>Description</label></div>
                <div class="col-sm-7"><textarea  style="height:35px" class="form-control" name="desc"></textarea></div>
            </div><br>
            
                      
            <div class="row">
            <center><div class="col-sm-4"><button type="submit" id="btn" name="submit" value="submit" style="background-color:greenyellow" id="btn" class="btn" class="form-control" >Submit</button></div></center>
            </div><br>        
        </div>
            
        </div>
    </form>
   </body>
</html>
