<%-- 
    Document   : customermenubar
    Created on : 18 Feb, 2023, 9:00:11 PM
    Author     : niran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Menu</title>
         <!--<link rel="stylesheet" href="bootstrap.min1.css">-->
         
         <link rel="stylesheet" href="Assets1\css\bootstrap.css">
    </head>
    <body>
       <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
           
           <a class="navbar-brand"style="margin-left: 10px" href="#">Drivers24.com</a>
           
        <div class="container-fluid" style="margin-left:820px;">
            
            <button class="navbar-toggler"  type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

        <div class="collapse navbar-collapse" id="navbarColor01">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="">
                    <span class="visually-hidden">(current)</span>
                    </a>
                </li>
        
                <li class="nav-item">
                    <a class="nav-link" href="ViewDriverC.jsp">View Driver</a>
                </li>
              <!--  
                <li class="nav-item">
                    <a class="nav-link" href="ViewBillC.jsp">Booking Bill</a>
                </li> 
                
              -->
                <li class="nav-item">
                    <a class="nav-link" href="FeedbackC.jsp">Feedback</a>
                </li>
        
                <li class="nav-item">
                     <a class="nav-link" href="ComplaintC.jsp">Complaint</a>
                </li>
            
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Log Out</a>
                </li>
           </ul>
        </div>
       </div>
      </nav>
   </body>
</html>
