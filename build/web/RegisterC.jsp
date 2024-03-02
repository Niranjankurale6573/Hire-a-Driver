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
         <link rel="stylesheet" href="Assets1\css\bootstrap.css">
           <link rel="stylesheet" href="Assets1\js\bootstrap.js">
          
        <title>Customer Register Page</title>
    </head>
    <style>
        .container
        {
            margin-top:20px;
            margin-bottom:20px;
            height:auto;
            width:75%;
            background:whitesmoke;
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
            float:right;
        }
        h3
        {
            margin-top:20px;
        }
        .btn
        {
             width:300px;
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
            String sql="Select id from customer";
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
     <form action="customer" method="post">
        <div class="container">
   
            <div class="row">
                  <center><h3>Register Now..!</h3></center>
            </div>
<!------------------Container 1------------------------------------------------------------------------------------------------------------------------------>
        <div class="container1">
            <br>
          
             <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>ID</label></div>
                <div class="col-sm-6"><input type="number" class="form-control" name="id" placeholder="ID" value="<%=id%>" onkeypress="javascript: return isNumber(evt)"></div>
            </div><br>
              <!-- Username -->
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Create Username</label></div>
                <div class="col-sm-6"><input type="text" class="form-control" name="user" placeholder="Username" onkeypress="javascript: return isAlphanumric(evt)"></div>
            </div><br>
            
              <!-- Name -->
                <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Name</label></div>
                <div class="col-sm-6"><input type="text" class="form-control" name="name" placeholder="Enter Name" onkeypress="javascript: return isString(evt)" ></div>
            </div><br>
            
              <!--Address -->
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Address</label></div>
                <div class="col-sm-6"><textarea class="form-control" name="add" style="height:58px" onkeypress="javascript: return isAlphanumric(evt)" ></textarea></div>
            </div><br>
                
              <!--Email -->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Email</label></div>
                <div class="col-sm-6"><input type="text" class="form-control" name="email" placeholder="Enter Email Id"  ></div>
            </div><br>
            
              <!--Mobile No -->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Mobile No.</label></div>
                <div class="col-sm-6"><input type="Number" class="form-control" name="mno" placeholder="Enter Mobile No."  min="10" maxlength="10" onkeypress="javascript: return isNumber(evt)"></div>
            </div><br>
            
        </div>   
<!--------------------------------------------------------------------------------------------------------------------------------------------------------------->
            
        <div class="container2">
            <br>
              <!--Pin-Code -->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Pin-Code</label></div>
                <div class="col-sm-6"><input type="Number" class="form-control" name="pin" placeholder="Enter Pincode" min="5" onkeypress="javascript: return isNumber(evt)"></div>
            </div><br>
            
              <!--Gender -->
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Gender</label></div>
                <div class="col-sm-6"><select class="form-control" style="height:48px" name="gender" ><option>Select</option><option>Male</option><option>Female</option><option>Other</option>></select></div>
            </div><br>
        
            <!--Date of Birth-->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Date of Birth</label></div>
                <div class="col-sm-6"><input type="date" class="form-control" name="dob" placeholder="Create Password "></div>
            </div><br>
        
              <!--Password-->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Create Password</label></div>
                <div class="col-sm-6"><input type="text" class="form-control" name="pass" placeholder="Create Password " min="8" onkeypress="javascript: return isAlphanumric(evt)"></div>
            </div><br>
            
              <!--Retype Password -->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Re-type Password</label></div>
                <div class="col-sm-6"><input type="text" class="form-control" name="rpass" placeholder="Re-Type Password" min="8" onkeypress="javascript: return isAlphanumric(evt)"></div>
            </div><br>
            
              <!--Password-Hint-->
          <!-- <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Password Hint</label></div>
                <div class="col-sm-6"><input type="text" class="form-control" name="hint" placeholder="Forgate Password Hint" onkeypress="javascript: return isAlphanumric(evt)"></div>
            </div><br> -->
              <!--Photo Proof-->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Photo</label></div>
                <div class="col-sm-6"><input type="file" class="form-control" name="pht" placeholder="Upload Photo" ></div>
            </div><br>     
        </div>   
            <!-- Empty row -->
            <div class="row"></div><br>
             <!--Buttons-->
            <div class="row">
             <center><div class="col-sm-4"><button type="submit" name="submit" value="submit" style="background-color:greenyellow" id="btn" class="btn" class="form-control" >Submit</button></div></center>
            </div><br>
            <center><a href="CustomerL.jsp" style="color:red;" class="btn-link" id="link" style="margin-left:">&ggg; Go To Login Page</a></center><br>
        </div>
    </form>
  </body>
</html>