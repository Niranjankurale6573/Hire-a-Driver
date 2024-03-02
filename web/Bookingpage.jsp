<%-- 
    Document   : Bookingpage
    Created on : 26-Jan-2023, 7:08:54 pm
    Author     : niran
--%>
<%@page import="com.mysql.fabric.Response"%>
<%@page import="java.io.PrintWriter"%>
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
        <title>Driver Booking Page</title>
       <%@include file="customermenubar.jsp"%>
    </head>
    <style>
       .container
        {    
            font-family:time of roman;
            height:auto;
            width:60%;
            background:whitesmoke;
            margin-left:auto;
            margin-top:20px;
            border:black outset;
        }
        h3
        {
            margin-top:20px;
        }
        .btn
        {
             width:275px;
             border-color: black;
        }
        .container1
        {
            font-family:time of roman;
            height:auto;
            width:50%;
            background:whitesmoke;
            border-radius:0px 0px 0px 0px;
            float:left; 
        }
        .container2
        {
            font-family:time of roman;
            height:auto;
            width:50%;
            background:whitesmoke;
            border-radius:0px 0px 0px 0px;
            float:left; 
        }
    </style>
    <body style="background-image:url(Image/background3.jpg);background-size:cover;opacity:99%;">
    
        
  <%
            Connection cn=null;
            Statement st=null;
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
                  String sql="select id from booking";
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
          try{
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
                st=cn.createStatement();
               // String sql="select * from customer where username='"+session.getAttribute("username") +"' and sts='0'";
              //  ResultSet rs=st.executeQuery(sql);
           // while(rs.next())
           {
%>
        
 <!---------------------------------------------------------------------------------------------------------------------------------------------->
      <form action="viewdriverc" method="post">
         <div class="container">
            <div class="row">
                  <center><h3>Booking Now..!</h3></center>
            </div><br>
            
             <div class="container1"> 
            <br>
             <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Booking Id</label></div>
                <div class="col-sm-7"><input type="text" class="form-control" value="<%=id%>" name="id" placeholder=""></div>
            </div><br>
            
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Username</label></div>
                <div class="col-sm-7"><input type="text"class="form-control" name="uname" value="<%out.println(session.getAttribute("cusername"));%>" placeholder="Enter Username">
                   
                </div>
            </div> 
                <br>
                <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Name</label></div>
                <div class="col-sm-7"><input type="text" class="form-control" name="name"  placeholder="Enter Name" ></div>
            </div><br>
            
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Driver Username</label></div>
                <div class="col-sm-7"><input type="text" class="form-control" name="duname" value="<%out.println(session.getAttribute("username"));%>" placeholder="Enter Username"></div>
            </div> 
            <br>
                 
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Driver Name</label></div>
                <div class="col-sm-7"><input type="text" style="height:48px;" value="<%out.println(session.getAttribute("name"));%>"class="form-control" name="dname" placeholder="Enter Name" ></div>
            </div><br>
            
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Vehicle No</label></div>
                <div class="col-sm-7"><input type="text" style="height:48px;" class="form-control" name="vno" placeholder="Enter Name" ></div>
            </div><br>
            
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Address</label></div>
                <div class="col-sm-7"><input type="text" class="form-control" name="add" value="" placeholder="Address" ></div>
            </div><br>
            </div>
<!-------Container 2 ---------------------------------------------------------------------------------------------------------------------------->
            
            <div class="container2">
            <br>
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Date</label></div>
                <div class="col-sm-7"><input type="date" class="form-control" name="date" placeholder="Enter date" ></div>
             </div><br>
            
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Time</label></div>
                <div class="col-sm-7"><input type="time" class="form-control" name="time" placeholder="Enter date" ></div>
            </div><br>
            
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Day</label></div>
                <div class="col-sm-7"><input type="text" class="form-control" name="day" placeholder="Enter date" ></div>
            </div><br>
            
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Vehicle Type</label></div>
                <div class="col-sm-7"><select name="vtype" class="form-control"><option>Select One</option><option>SUV</option><option>Hatchback</option><option>Sedan</option><option>Coupe</option></select></div>
            </div><br>
            
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Mobile No.</label></div>
                <div class="col-sm-7"><input type="text" style="height:45px;" name="ano" class="form-control" placeholder="Enter Alternative No." ></div>
            </div><br>
            
              <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>City</label></div>
                <div class="col-sm-7"><input type="" style="height:48px;" class="form-control" name="chg"  placeholder="Enter Pune City Only" ></div>
            </div><br><br>
            
              <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Destination</label></div>
                <div class="col-sm-7"><input type="text" style="height:48px;" name="des" class="form-control" placeholder="Enter Destination Place" ></div>
            </div><br>
             </div>
                    
            <div class="row"></div><br>
            <div class="row">
                <center><div class="col-sm-4"><button type="submit" name="submit1" value="add" name="submit" style="background-color:greenyellow" id="btn" class="btn" class="form-control" >Next</button></div></center>
            </div><br> 
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






