<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<!doctype html>
<html>
<head>
    <link rel="shortcut icon" href="#">
<meta charset="ISO-8859-1">
<title>Train Booking</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
    src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script
    src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/07891f69f4.js" crossorigin="anonymous"></script>
    
<style>
#div1 {
    width: 420px;
    height: 480px;
    margin: auto;
    margin-top: 100px;
    opacity: 0.9
}
body{
    background-image: url('../images/traini.jpg');
    background-size:cover;
}
#div2{width: 5px;
      max-height:5px; 
      height: 1px;
      margin:20px;
}
#load1{
    position: absolute;
    left: 360px;
    right: 40px;
    top:125px;
    text-align: center;
    padding: 5px 5px;
}
#load2{
    position: absolute;
    left: 360px;
    right: 40px;
    top: 195px;
    text-align: center;
    padding: 5px 5px;
}
#sub{
    position: absolute;
    left: 80px;
    
}
#res{
    position: absolute;
    left:280px;
}
#lastrow{
    height: 65px;
}
#dropfromair{
    width: 150px;
    position: absolute;
    top: 135px;
}
#droptoair{
    width: 150px;
    position: absolute;
    top: 200px;
}
</style>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body class="container-fluid">
     <h1><marquee bgcolor="#273746" style="color:aliceblue">Reserve Your Train Ticket</marquee> </h1>
     <h1><a href="../home2.jsp"><i class="fa-solid fa-house-chimney fa-lg"></i></a></h1>
    <div class="card" id="div1">
        <h2 class="card-header text-center text-light bg-info">Train
            </h2>
        <form class="form" action="../trainingregister" method="get">
            
            <table class="table table-hover">
                
                <tr>
                    <td>Source</td>
                    <td><input type="text" name="TrainFrom" placeholder="Enter Station Name" required></td>
                                <!--<td><div id="div2"><select id="dropfromair">
                            </select>--></div></td>
                </tr>
                <tr>
                    <td>Destination</td>
                    <td><input type="text" name="TrainTo" placeholder="Enter Station Name" required></td>
                    <!--<td><div id="div2"><select id="droptoair"></select></div></td>-->
                </tr>
                <tr>
                    <td>Departing</td>
                    <td><input type="date" name="datedepart" required></td>
                </tr>
                <tr>
                    <td>Train Number</td>
                    <td><input type="number" name="trainno" required></td>
                </tr>
                <tr>
                    <td>Adults</td>
                    <td><input list="Number_of_Adults" name="Adults" id="Adults" placeholder="Double Click to show options" required>
                        <datalist id="Number_of_Adults">
                            <option value="1">
                            <option value="2">
                            <option value="3">
                            <option value="4">
                        </datalist>
                    </td>
                </tr>
                <tr>
                    <td>Children</td>
                    <td><input list="Number_of_Children" name="Child" id="Child" placeholder="Double Click to show options" required>
                        <datalist id="Number_of_Children">
                            <option value="0">
                            <option value="1">
                            <option value="2">
                            <option value="3">
                            <option value="4">
                        </datalist></td>
                <tr id="lastrow">
                    <td><input type="submit" id="sub" value="SUBMIT"
                        class="btn btn-outline-success"></td>
                    <td><input type="reset" id="res" value="RESET"
                        class="btn btn-outline-danger"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
