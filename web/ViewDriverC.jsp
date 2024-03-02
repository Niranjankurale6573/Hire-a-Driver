<%-- 
    Document   : ViewDriverC
    Created on : 2 Feb, 2023, 7:41:58 PM
    Author     : niran
--%>
<%@page import="com.sun.faces.facelets.tag.jsf.core.PassThroughAttributeHandler"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Drivers Page</title>
         <%@include file="customermenubar.jsp"%>
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
               margin:10px 10px 10px 10px;
               padding:0px 0px 0px 0px;
               
           }
           .containerbtn
           {
              height:60px;
              background-color:skyblue;
              
           }
            .div1
            {   
                display: inline-block;
                margin:10px;
                background-color: whitesmoke;
                padding:10px;
                
            }
           .btn
           {
               width:150px;
               margin-left:60px;
               background-color:greenyellow;   
           }
           
           
    </style>
<body style="background-image:url(Image/background3.jpg);background-size:cover;opacity:99%;">
 <form action="viewdriverc" method="POST">       
<!------------------------------------------------------------------------------------------------------------------------------------------------------------>
  <!--  <div class="containerbtn"><br>
        <div class="row">
          <div class="col-sm-4"></div>
          <div class="col-sm-3">
          <select class="form-control" id="city" style="font-size:14px;width:350px;margin-top:0px;">
                <option name="city">Select Currant City</option>
                <option name="city" value="kolhapur">Kolhapur</option>
                <option name="city" value="pune">Pune</option>
                <option name="city" value="mumbai">Mumbai</option>
           </select>
         </div>
      <div class="col-sm-3">
          <button type="sumit" style="width:175px;background-color:greenyellow;">Search</button>
      </div>
      </div>
   </div>  -->
  <div class="containerbtn">
        <div class="row">
          <div class="col-sm-4"></div>
          <div class="col-sm-6">
              <h2>Available Only in Pune City</h>
          </div>
      </div>
   </div>
<!--------------------------------------------------------------------------------------------------------------------------------------------------------->
   <div class="container">
  <%
       Connection cn=null;
       Statement st=null;
       
         try
        {
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
        st=cn.createStatement();
        String sql="select * from driver";
        ResultSet rs=st.executeQuery(sql); 
            while(rs.next())
           {
            String photo=rs.getString("photo");
            String username=rs.getString("username");
            String name=rs.getString("name");
            String add=rs.getString("address");
            String gender=rs.getString("gender");
            String dl=rs.getString("dlicence");
            String dexp=rs.getString("dexprience");
                                
                 
  %>
 <div class="div1">
        <form action="viewdriverc" method="post">
           <img src="Image/driver.jpg" name="cimg" height="220" width="280"><br>
                       
          <!--<img type="hidden" name="phto" src="<%=photo%>" value="<%=photo%>" height="220" width="280"><br><br>-->
                   
             <label>Username:</label>
             <label><%=username%></label>
             <input type="hidden" name="uname" value="<%=username%>"><br><br>
                   
             <label>Name:</label>
             <label><%=name%></label>
             <input type="hidden" name="cname" value="<%=name%>"><br><br>
                 
             <label>Address:</label>
             <label><%=add%></label>
             <input type="hidden" name="address" value="<%=add%>"><br><br>
                       
             <label>Gender:</label>
             <label><%=gender%></label>
             <input type="hidden" name="cno" value="<%=gender%>">
             <br><br>
                
             <label>DL No:</label>
             <label><%=dl%></label>
             <input type="hidden" name="gst" value="<%=dl%>"><br><br>
                       
             <label>DL Exp:</label>
             <label><%=dexp%></label>
             <input type="hidden" name="email" value="<%=dexp%>"><br><br>
                      
             &nbsp;&nbsp;&nbsp;
             <input type="submit" name="submit" id="btn" value="Booknow" class="btn btn-primary">
             <!--<input type="submit" name="btn_submit" value="Directors" class="btn btn-primary">-->
        </form>
      </div>   
  <%   
          } 
         }
        catch(Exception ex)
         {
           out.println(ex.getMessage());
         }
    %>
   </div>
   </form>
 </body>
</html>




