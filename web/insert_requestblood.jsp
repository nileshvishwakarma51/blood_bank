<%
    String name, phone,unit,blood;

    name = request.getParameter("name");

    phone = request.getParameter("phone");
    blood = request.getParameter("blood");
    
    unit = request.getParameter("unit");
   
    String qry="INSERT INTO `blood_request` (`id`, `name`, `phone`, `bloodtype`, `units`) VALUES ('"+name.substring(0,3)+phone.substring(5) +"', '"+name+"', '"+phone+"', '"+blood+"', '"+unit+"');";
    
    dbutil.DButil.insert(qry);
    session.setAttribute("phone",phone);
    response.sendRedirect("requestblood_recipt.jsp");
    
%>