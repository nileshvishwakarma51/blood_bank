<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Admin</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Latest compiled and minified CSS -->


        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            .sizecls
            {
                font-size: 20px;
            }
        </style>
    </head>
    <body>

        <nav class=" navbar navbar-dark bg-dark">
            <a class="navbar-brand">Admin Panel</a> 
            
            <a class="btn btn-primary btn-lg" href="index.jsp" target="self"
                role="button">Logout</a>
        </nav>

        <p></p>
        <div class="container" style="max-width: 70%;">
            <h1>Welcome Admin</h1>
            <div class="alert alert-success " role="alert" id="sucessalert" style="display: none; position: absolute;">
               
                <strong>Successfull!</strong>&nbsp;Stock Updated successfully.
            </div>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Blood Group</th>
                        <th scope="col">No. of Units Available</th>
                        <th scope="col">Update Stock</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ResultSet rs = dbutil.DButil.read("SELECT * FROM `blood_stock`");
                        rs.next();
                    %>
                    <tr>
                        <th scope="row" class="sizecls">1</th>
                        <td class="sizecls">A+</td>
                        <td class="sizecls" id="A+z"><%=rs.getString(1)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="A+" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp; <button class="btn-primary" onclick="add('A+')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp;<button class="btn-danger" onclick="sub('A+')">SUBSTRACT</button></td>
                    </tr>
                    <tr>
                        <th scope="row" class="sizecls">2</th>
                        <td class="sizecls">A-</td>
                        <td class="sizecls" id="A-z"><%=rs.getString(2)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="A-" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp; <button class="btn-primary" onclick="add('A-')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp; <button class="btn-danger" onclick="sub('A-')">SUBSTRACT</button></td>
                    </tr>
                    <tr>
                        <th scope="row" class="sizecls">3</th>
                        <td class="sizecls">B+</td>
                        <td class="sizecls" id="B+z"><%=rs.getString(3)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="B+" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp;<button class="btn-primary" onclick="add('B+')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp;<button class="btn-danger" onclick="sub('B+')">SUBSTRACT</button></td>
                    </tr>
                    <tr>
                        <th scope="row" class="sizecls">4</th>
                        <td class="sizecls">B-</td>
                        <td class="sizecls" id="B-z"><%=rs.getString(4)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="B-" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp; <button class="btn-primary" onclick="add('B-')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp;<button class="btn-danger" onclick="sub('B-')">SUBSTRACT</button></td>
                    </tr>
                    <tr>
                        <th scope="row" class="sizecls">5</th>
                        <td class="sizecls">AB+</td>
                        <td  class="sizecls" id="AB+z"><%=rs.getString(5)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="AB+" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp; <button class="btn-primary" onclick="add('AB+')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp; <button class="btn-danger" onclick="sub('AB+')">SUBSTRACT</button></td>
                    </tr>
                    <tr>
                        <th scope="row" class="sizecls">6</th>
                        <td class="sizecls">AB-</td>
                        <td class="sizecls" id="AB-z"><%=rs.getString(6)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="AB-" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp; <button class="btn-primary" onclick="add('AB-')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp; <button class="btn-danger" onclick="sub('AB-')">SUBSTRACT</button></td>
                    </tr>
                    <tr>
                        <th scope="row" class="sizecls">7</th>
                        <td class="sizecls">O+</td>
                        <td class="sizecls" id="O+z"><%=rs.getString(7)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="O+" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp;<button class="btn-primary" onclick="add('O+')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp;<button class="btn-danger" onclick="sub('O+')">SUBSTRACT</button></td>
                    </tr>
                    <tr>
                        <th scope="row" class="sizecls">8</th>
                        <td class="sizecls">O-</td>
                        <td class="sizecls" id="O-z"><%=rs.getString(8)%>&nbsp;Units Available</td>
                        <td><input class="form-control " type="number" id="O-" onkeypress="return event.charCode >= 48" min="0">
                            &nbsp; <button class="btn-primary" onclick="add('O-')">ADD</button>
                            &nbsp;&nbsp;&nbsp;&nbsp;<button class="btn-danger" onclick="sub('O-')">SUBSTRACT</button></td>
                    </tr>
                </tbody>
            </table>
            <p></p>
            </br>
            <p></p>
            </br>
        </div>
        <footer class="container">
            <p>© Blood Bank Management System 2021</p>
        </footer>


        <script>
            function add(grp) {
//no clue what to put here?

                var units = document.getElementById(grp).value;

                $.ajax({

                    url: "add_unit.jsp",
                    method: "POST",
                    data: {grp: grp, units: units},
                    success: function (data)
                    {

                        document.getElementById(grp + "z").innerHTML = data + " Units Available";
                        document.getElementById(grp).value = "";
//                        document.getElementById("sucessalert").style.display = "block";
                            $("#sucessalert").fadeIn();
                        setTimeout(function(){
                        $("#sucessalert").fadeOut();
                        },2000);
                    }
                });

            }
            function sub(grp) {
//no clue what to put here?

                var units = document.getElementById(grp).value;
                ;
                //alert(grp+units);
                $.ajax({

                    url: "sub_unit.jsp",
                    method: "POST",
                    data: {grp: grp, units: units},
                    success: function (data)
                    {
                        document.getElementById(grp + "z").innerHTML = data + " Units Available";
                        document.getElementById(grp).value = "";
                          $("#sucessalert").fadeIn();
                        setTimeout(function(){
                        $("#sucessalert").fadeOut();
                        },2000);
                    }
                });

            }
        </script>
    </body>
</html>