<%-- 
    Document   : ViewBillC
    Created on : 25 Feb, 2023, 5:43:07 PM
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
        <title>Bill Details Page</title>
    < <%@include file="customermenubar.jsp"%>
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
               margin-top:10px;
               
               
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
           .btn1
           {
               width:150px;
               margin-left:60px;
               background-color:greenyellow;   
           }
           .btn1
           {
               width:150px;
               margin-left:60px;
               background-color:red;   
           }
           
    </style>
<body style="background-image:url(Image/background3.jpg);background-size:cover;opacity:99%;">
    
    <div class="containerbtn">
      <div class="row">
      <div class="col-sm-6">
      </div>
      </div>
    </div>
    <div class="container">
   <%
        
          Connection cn=null;
          Statement st=null;
          try{
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
                st=cn.createStatement();
                String sql="select * from bill";
                ResultSet rs=st.executeQuery(sql);
            while(rs.next())
           {
%>
     <div class="div1">
             
         <img src="Images/b1.jpeg" name="cimg" height="280" width="320"><br>          
             <label>Driver Username:</label>
             <label><%=%></label>
             <input type="hidden" name="uname" value="<%=%>"><br><br>
                   
             <label>Driver Name:</label>
             <label><%=%></label>
             <input type="hidden" name="cname" value="<%=%>"><br><br>
                 
             <label>Address:</label>
             <label><%=%></label>
             <input type="hidden" name="add" value="<%=%>"><br><br>
                       
             <label>Gender:</label>
             <label><%=%></label>
             <input type="hidden" name="cno" value="<%=%>">
             <br><br>
                
             <label>DL No:</label>
             <label><%=%></label>
             <input type="hidden" name="gst" value="<%=%>"><br><br>
                       
             <label>DL Exp:</label>
             <label><%=%></label>
             <input type="hidden" name="email" value="<%=%>"><br><br>
                      
             &nbsp;&nbsp;&nbsp;
             <input type="submit" name="submit" id="btn2" value="Cancel Booking" class="btn btn-primary">
             <input type="submit" name="btn_submit" id="btn1" value="Submit" class="btn btn-primary">
        </form>
      </div>    
    <%   
          } 
         }
        catch(Exception ex)
         {
           out.println(ex.toString());
         }
    %>
    </div>
   </form>
 </body>
</html>
