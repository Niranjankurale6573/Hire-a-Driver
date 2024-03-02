<%-- 
    Document   : vcarinfod
    Created on : 12 Mar, 2023, 3:21:24 PM
    Author     : niran
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Details</title>
        <%@include file="drivermenubar.jsp"%>
       <link rel="stylesheet" href="Assets\css\bootstrap.css">
    </head>
    <style>
            body
            {
                padding:0%;
                margin-top:0%;
                margin-bottom:0%;
                margin-left:0%;
                margin-right:0%;
            }
           .container
           {    
               padding:0%;
                margin-top:0%;
                margin-bottom:0%;
                margin-left:0%;
                margin-right:0%;
               margin-top:20px;
           }          
            .div1
            {   
                
                display:inline-block;
                margin: 10px;
                background-color: whitesmoke;
                padding: 10px;
                border:#000 outset;
            }
           .btn
           {
               width:150px;
               margin-left:60px;
               background-color:greenyellow;
               
           }
           
           
           
    </style>
    <body style="background-image:url(Image/background3.jpg);background-size:cover;opacity:99%;">
    
            
        <div class="divbtn" style="hight:30px;background:silver;">
          <div class="row">
              <div class="col-sm-6"></div>
              <div class="col-sm-3"></div>
              <div class="col-sm-3">
                  <!--<button  style="width:200px;margin-left:650px;" >All Details</button> -->
                  <!--<a style="margin-left:100px;" href="ViewCarinfo.jsp" >All Car Details...</a> -->
              </div>
          </div>
      </div>
        <center><h1>Cars</h1></center>
      <div class="container">
        
<!----------------------------------------------------------------------------------------------------------------------------------------------->
     <%
        Connection cn=null;
        
       Statement st=null;
         try
        {
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
        st=cn.createStatement();
        String sql="select * from carinfo";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next())
          {
            String username=rs.getString("username");
            String name=rs.getString("regcar");
            String vname=rs.getString("vehiname");
            String carno=rs.getString("carno");
            String rdate=rs.getString("regdate");
            String ins=rs.getString("insurance"); 
            String edate=rs.getString("insexpdate");
                 
    %>
     <div class="div1">
        <form action="ViewBooking" method="post">
            
            <center><img src="Image/cars.avif" name="cimg" height="220" width="280"></center><br>
                   
             <label>UserName:</label>
             <label><%=username%></label>
             <input type="hidden" name="name" value="<%=username%>"><br><br>
                   
             <label>Name:</label>
             <label><%=name%></label>
             <input type="hidden" name="dname" value="<%=name%>"><br><br>
                 
             <label>Vehicle Name:</label>
             <label><%=vname%></label>
             <input type="hidden" name="date" value="<%=vname%>"><br><br>
                       
             <label>Car No:</label>
             <label><%=carno%></label>
             <input type="hidden" name="day" value="<%=carno%>">
             <br><br>
             
             <label>Register Date:</label>
             <label><%=rdate%></label>
             <input type="hidden" name="day" value="<%=rdate%>">
             <br><br>
             <label>Insurance Available:</label>
             <label><%=ins%></label>
             <input type="hidden" name="day" value="<%=ins%>">
             <br><br>
                         
             <label>Insurance Exp:</label>
             <label><%=edate%></label>
             <input type="hidden" name="day" value="<%=edate%>">
             <br><br>
                    
            <!-- &nbsp;&nbsp;&nbsp;
             <input type="submit" name="btn" id="btn" value="View all Details" class="btn">
             <input type="submit" name="btn_submit" value="Directors" class="btn btn-primary">-->
        </form>
      </div>    
    <%   
        }
        
        }catch(Exception ex)
        {
           out.println(ex.toString());
        }
    %>
    </div>  
  </body>
</html>
