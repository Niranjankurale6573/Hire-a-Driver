<%-- 
    Document   : Adminmenubar
    Created on : 2 Feb, 2023, 7:41:58 PM
    Author     : niran
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Menu</title>
         <link rel="stylesheet" href="bootstrap.min1.css">
      <link rel="stylesheet" href="Assets1\css\bootstrap.css">
         
    </head>
    <body>
       <nav class="navbar navbar-expand-lg navbar-dark bg-primary">                
           <a class="navbar-brand" style="margin-left:10px;" href="#">Drivers24.com</a>
           <div class="container-fluid" style="margin-left:45px;">
           
           <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

        <div class="collapse navbar-collapse" id="navbarColor01">
            <ul class="navbar-nav me-auto">
                <li class="nav-item" style="margin-left:200px;">
                    <a class="nav-link active" href="">
                    <span class="visually-hidden">(current)</span>
                    </a>
                </li>
        
                <li class="nav-item">
                    <a class="nav-link" href="Vcustomer.jsp">Customer</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="Vdriver.jsp">Driver</a>
                </li>
        
                <li class="nav-item">
                     <a class="nav-link" href="vcarinfo.jsp">Car info</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="ViewBookingA.jsp">Booking</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="ViewPayment.jsp">Payment</a>
                </li>
       
                <li class="nav-item">
                    <a class="nav-link" href="Vcomplaint.jsp">Complaint</a>
                </li>
       
                <li class="nav-item">
                    <a class="nav-link" href="Vfeedback.jsp">Feedback</a>
                </li>
                
               <!-- <li class="nav-item">     
                    <a class="nav-link" href="">Report</a>
                </li>
               -->
        
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/HireADriver">Log Out</a>
                </li>
           </ul>
        </div>
       </div>
      </nav>
   </body>
</html>
