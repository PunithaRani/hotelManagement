<%@page import="com.example.hotel_management.UserdetailsModel"%>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel = "stylesheet" href = "/booking_details.css" />
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
        <title>User Details</title>
</head>
<body>
    <div class = "heading">
        <h1>User Details</h1>
    </div>
    <form action="/search" method="post">
    <input type=text class="form-control" name="name" placeholder="search_by_mailid"/>
    <br/>
    <button type="submit" class="btn btn-secondary" >SEARCH</button>
    </form>
 <%
    try
    {
       
    %><table class = "booking__table">
      <thead>
          <tr>
             <th>ID</th>
             <th>FIRST NAME</th>
             <th>LAST NAME</th>
             <th>EMAIL ID</th>
             <th>MOBILE NUMBER</th>
             <th>PASSWORD</th>
             <th>KEYWORD</th>
          </tr>
      </thead>
      <tbody>
        <%List<UserdetailsModel> users=(List)request.getAttribute("l");
        
        	for(UserdetailsModel user:users){
            %>
            <tr>
                <td><%=user.getUserid() %></td>
               <td><%=user.getFirst_name() %></td>
               <td><%=user.getLast_name() %></td>
               <td><%=user.getEmail() %></td>
               <td><%=user.getPh_number() %></td>
               <td><%=user.getPassword()%></td>
               <td><%=user.getKeyword() %></td>
            </tr>
            <%}%>
           </tbody>
        </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    finally{
     }
    %>
</body>
</html>