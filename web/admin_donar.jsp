



<%@page import="java.sql.ResultSet"%>
<%@page import="dbutil.DButil"%>
<!DOCTYPE html><%!ResultSet rs = null;%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin_Donar</title>

        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    </head>
    <body> 

        <!-- Navigation -->
        <nav class=" navbar navbar-dark bg-dark">
            <a class="navbar-brand text-white">Admin Panel</a> 

            <a class="btn btn-primary btn-lg" href="index.jsp" target="self"
               role="button">Logout</a>
        </nav>



        <div class="container ">
            <div class="row mt-5">
                <div class="col-sm-3">
                    <div>
                        <input id="aptid"  type="text">
                        <button class="btn " onclick="checkAptid()" >Check Aptmt</button>
                        <h6 id="result"></h6>

                    </div>
                    <div class="card bg-c-blue order-card " id="aptmodel"  style="display: none;"  data-toggle="modal" data-target="#exampleModal">
                        <div class="card-block">       
                            <h2 class="" style="font-size: 15px;" >Check Appointment</h2>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4" style="margin-left: auto!important;">

                    <form class="form-inline">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" onkeyup="myFunction()" id="myInput">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>

                </div>
            </div>


            <table class="table mt-5" id="myTable">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">S.no</th>
                        <th scope="col">Id</th>
                        <th scope="col">Name</th>
                        <th scope="col">Phone no</th>
                        <th scope="col">BloodGroup</th>
                        <th scope="col">Apmt.Date</th>
                        <th scope="col">Address</th>

                    </tr>
                </thead>

                <tbody><%
                    rs = DButil.read("SELECT * FROM request");
                    int sno = 0;
                    if (rs != null) {
                        while (rs.next()) {%>
                    <tr>


                        <th scope="row"><%=++sno%></th>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                        <td><%=rs.getString(7)%></td>


                    </tr>
                    <%   }

                        }
                    %>

                </tbody>
            </table>






        </div>








        <!-- Modal -->







        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 style="text-align: center;"><b>Update Donor's Profile</b></h2>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <div class="modal-body">
                        
                    </div>
                </div>

            </div>
        </div>







        <script>




            function myFunction() {
                // Declare variables
                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");

                // Loop through all table rows, and hide those who don't match the search query
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[1];
                    if (td) {
                        txtValue = td.textContent || td.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }

                }
            }


            function checkAptid() {

                var id = $("#aptid").val();
                $.ajax({

                    url: "admin_checkapt.jsp",
                    method: "POST",
                    data: {id: id},
                    success: function (data)
                    {
                        
                        var result = $.trim(data);
                        if ($.trim(data)) {
                           $('.modal-body').html(data);
                               $("#aptmodel").click();
                        } else {

                            $("#result").html("Not found");
                        }

                    }
                });

            }
        </script>


        <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>

    </body>
</html>
