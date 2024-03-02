<%-- 
    Document   : Vfeedback
    Created on : 12 Mar, 2023, 12:24:01 PM
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
        <title>View Feedback Page</title>
          <%@include file="Adminmenubar.jsp"%>
       
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
                  <a style="margin-left:100px;" href="ViewFeedback.jsp" >All Customer Feedback...</a>
              </div>
          </div>
      </div>
      <div class="container">
                  
     <%
        Connection cn=null;
        
       Statement st=null;
         try
        {
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
        st=cn.createStatement();
        String sql="select * from feedback";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next())
          {
            String id=rs.getString("id");
            String username=rs.getString("username");
            String name=rs.getString("name");
            String imp=rs.getString("improvement");
            String des=rs.getString("Description");
            
            
                 
    %>
     <div class="div1">
        <form action="ViewBooking" method="post">
            <center>><img src="Image/feedback1.jpg" name="cimg" height="220" width="280"></center><br>
                   
             <label>UserName:</label>
             <label><%=username%></label>
             <input type="hidden" name="name" value="<%=username%>"><br><br>
                   
             <label>Name:</label>
             <label><%=name%></label>
             <input type="hidden" name="dname" value="<%=name%>"><br><br>
                 
             <label>improvement:</label>
             <label><%=imp%></label>
             <input type="hidden" name="date" value="<%=imp%>"><br><br>
                       
             <label>Description:</label>
             <label><%=des%></label>
             <!--<input type="text" name="day" value="<%=des%>" >-->
             
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
