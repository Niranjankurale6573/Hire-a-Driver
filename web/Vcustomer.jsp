<%-- 
    Document   : Vcustomer
    Created on : 12 Mar, 2023, 11:00:40 AM
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
        <title>Customer Details Page</title>
        <%@include file="Adminmenubar.jsp"%>
       
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
                border:#000 outset;
            }
           .btn
           {
               width:150px;
               margin-left:60px;
               background-color:greenyellow;   
           }
           
</style>
</head>
<body style="background-image:url(Image/background3.jpg);background-size:cover;opacity:99%;">
 <form action="Vcustomer" method="POST">
     <div class="divbtn" style="hight:30px;background:silver;">
          <div class="row">
              <div class="col-sm-6"></div>
              <div class="col-sm-3"></div>
              <div class="col-sm-3">
                  <!--<button  style="width:200px;margin-left:650px;" >All Details</button> -->
                  <a style="margin-left:100px;" href="ViewRegisterC.jsp" >All Customer Details...</a>
              </div>
          </div>
      </div>
  <div class="container">
      
      
    <!-------------------------------------------------------------------------------------------------------------------------------------->
     <%
        Connection cn=null;
        
       Statement st=null;
         try
        {
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireadriver","root","root");
        st=cn.createStatement();
        String sql="select * from customer";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next())
           {
            
            String username=rs.getString("username");
            String name=rs.getString("name");
            String add=rs.getString("address");
            String gender=rs.getString("gender");
            String dob=rs.getString("dob");
            String mno=rs.getString("mobile");
            String email=rs.getString("email");
            
                 
  %>
 <div class="div1">
        <form action="ViewDriver" method="post">
            <center><img src="Image/user.jpg" name="cimg" height="200" width="250"></center><br>
                       
       
             <label>Username:</label>
             <label><%=username%></label>
             <input type="hidden" name="uname" value="<%=username%>"><br><br>
                   
             <label>Name:</label>
             <label><%=name%></label>
             <input type="hidden" name="cname" value="<%=name%>"><br><br>
                 
             <label>Address:</label>
             <label><%=add%></label>
             <input type="hidden" name="add" value="<%=add%>"><br><br>
                       
             <label>Gender:</label>
             <label><%=gender%></label>
             <input type="hidden" name="gender" value="<%=gender%>">
             <br><br>
                
             <label>DOB:</label>
             <label><%=dob%></label>
             <input type="hidden" name="dob" value="<%=dob%>"><br><br>
                       
             <label>Mobile No.:</label>
             <label><%=mno%></label>
             <input type="hidden" name="mno" value="<%=mno%>"><br><br>
             
              <label>Email:</label>
             <label><%=email%></label>
             <input type="hidden" name="email" value="<%=email%>"><br><br>   
             
            <!-- &nbsp;&nbsp;&nbsp;
             <input type="submit" name="submit" id="btn" value="Booknow" class="btn btn-primary">
             <input type="submit" name="btn_submit" value="Directors" class="btn btn-primary">-->
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
