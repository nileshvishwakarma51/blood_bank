<%@page import="java.sql.ResultSet"%>
<%@page import="dbutil.DButil"%>
<%
    String unit = request.getParameter("unit");
    int intunit = Integer.parseInt(unit);
    String blood = request.getParameter("blood");
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    System.out.println(blood);
    ResultSet rs = dbutil.DButil.read("select `"+blood+"` from blood_stock");
    System.out.println("select '"+blood+"' from blood_stock");
    rs.next();
    int stock= Integer.parseInt(rs.getString(1));
    if(intunit<stock){
   out.print("<div class='text-success'>Stock is Available</div>");
//   request.setAttribute("name", name);
//   request.setAttribute("phone", phone);
//   request.setAttribute("unit", unit);
//   request.setAttribute("blood", blood);
//   response.sendRedirect("insert_requestblood.jsp");
    }
    else{
    out.print("<div class='text-danger'> "+blood+" of "+unit+"unit  Not in Stock </div>");
    }

%>