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
          <script src="validation.js"></script>
          
        <title>Driver Register Page</title>
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
      <form action="driver" method="post">
        <div class="container">
            <div class="row"><center><h3>Register Now..!</h3></center></div>
            
        <div class="container1"><br>
          
            <!-- ID-->
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>ID</label></div>
                <div class="col-sm-6"><input type="text" name="id" class="form-control" value="<%=id%>" placeholder="ID" onkeypress="javascript: return isAlphanumric(event)"></div>
            </div><br>
              <!-- Username -->
            <div class="row">      
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Create Username</label></div>
                <div class="col-sm-6"><input type="text" name="user" class="form-control" placeholder="Username" onkeypress="javascript: return isAlphanumric(event)"></div>
            </div><br>
            
              <!-- Name -->
                <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Name</label></div>
                <div class="col-sm-6"><input type="text" name="name" class="form-control" placeholder="Enter Name" onkeypress="javascript: return isString(event)"></div>
            </div><br>
            
              <!--Address -->
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Address</label></div>
                <div class="col-sm-6"><textarea name="add" class="form-control" style="height:67px" onkeypress="javascript: return isAlphanumric(event)"></textarea></div>
            </div><br>
               
              <!--Email -->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Email</label></div>
                <div class="col-sm-6"><input type="text" name="email" class="form-control" placeholder="Enter Email Id"></div>
            </div><br>
            
              <!--Mobile No -->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Mobile No.</label></div>
                <div class="col-sm-6"><input type="Number" name="mno" class="form-control" placeholder="Enter Mobile No." onkeypress="javascript: return isNumber(event)" ></div>
            </div><br>
            
              <!--Working City -->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>City</label></div>
                <div class="col-sm-6"><input type="text" name="pin" class="pin" class="form-control" placeholder="Enter City" onkeypress="javascript: return isString(event)" ></div>
            </div><br>
          
            
              <!--Gender -->
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Gender</label></div>
                <div class="col-sm-6"><select name="gender" class="form-control"><option>Select</option><option>Male</option><option>Female</option><option>Other</option>></select></div>
            </div><br>
      </div>
            
        <!--Container1 end -->
        <!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
            
        <div class="container2">
            <br>
        
            <!--Date of Birth-->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Date of Birth</label></div>
                <div class="col-sm-6"><input type="date" name="dob" class="form-control" placeholder="Date Of Birth "></div>
            </div><br>

              <!--Password-->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Create Password</label></div>
                <div class="col-sm-6"><input type="text" name="cpass" class="form-control" placeholder="Create Password "onkeypress="javascript: return isAlphanumric(event)"></div>
            </div><br>
            
              <!--Retype Password -->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Re-type Password</label></div>
                <div class="col-sm-6"><input type="text" name="rpass" class="form-control" placeholder="Re-Type Password" onkeypress="javascript: return isAlphanumric(event)"></div>
            </div><br>
            
              <!--Password-Hint-->
         <!--  <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Password Hint</label></div>
                <div class="col-sm-6"><input type="text"" name="hint" class="form-control" placeholder="Forgate Password Hint" onkeypress="javascript: return isAlphanumric(event)"></div>
            </div><br>
         -->
              <!--Photo Proof-->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Photo</label></div>
                <div class="col-sm-6"><input type="file" name="pht" class="form-control" placeholder="Upload Photo" ></div>
            </div><br>
            
             <!--Aadhaar Proof-->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Aadhaar proof </label></div>
                <div class="col-sm-6"><input type="file" name="adp" class="form-control" placeholder="Upload Photo" ></div>
            </div><br>
            
            <!--DL Number-->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>DL Number</label></div>
                <div class="col-sm-6"><input type="text" name="dlno" class="form-control" placeholder="Enter Driving Licence No." onkeypress="javascript: return isAlphanumric(event)"></div>
            </div><br>
            
             <!--Driving Experience-->
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>Driving Exp</label></div>
                <div class="col-sm-6"><input type="Number" name="dle" class="form-control" placeholder="Enter Driving Experience" onkeypress="javascript: return isNumber(event)" ></div>
            </div><br>
            
            <!--Driving license Photo Proof-->
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label>DL Proof</label></div>
                <div class="col-sm-6"><input type="file" name="dlp" class="form-control" placeholder="Upload Driving License" ></div>
            </div><br>
        </div><!--Container2 end -->  
        <!----------------------------------------------------------------------------------------------------------------------------------------->
            <!-- Empty row -->
            <div class="row"></div><br>
             <!--Buttons-->
            <div class="row">
                <center><div class="col-sm-4"><button type="submit" name="submit" value="submit" style="background-color:greenyellow" id="btn" class="btn" class="form-control" >Submit</button></div></center>
            </div><br>
            <center><a href="DriverL.jsp" style="color:red;" class="btn-link" id="link" style="margin-left:">&ggg; Go To Login Page</a></center><br>
    </div><!<!--container main end-->
    <!--------------------------------------------------------------------------------------------------------------------------------------------->
    </body>
</form>
</html>
