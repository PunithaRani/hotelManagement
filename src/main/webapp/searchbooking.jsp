<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.example.hotel_management.BookingDetailsModel"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel = "stylesheet" href = "/booking_details.css" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<div class = "heading">
        <h1>Booking Details</h1>
    </div>
     <form action="/searchbooking" method="post">
 <input type=text class="form-control" name="bookid" placeholder="search_by_bookingid"/>
    <br/>
    <button type="submit" class="btn btn-secondary" >SEARCH</button>
    </form>
<%
    try
    {
       
    %><table class = "booking__table">
      <thead>
          <tr>
             <th>BOOKING ID</th>
             <th>USER ID</th>
             <th>BOOKING NAME</th>
             <th>CHECK IN</th>
             <th>CHECK OUT</th>
             <th>ROOM NUMBER</th>
             <th>ROOM TYPE</th>
               
          
                         <th>ADDRESS</th>
          </tr>
      </thead>
      <tbody>
        <%BookingDetailsModel book=(BookingDetailsModel)request.getAttribute("searchbook");
        
        	
            %>
            <tr>
                <td><%=book.getBookingId() %></td>
             <td><%=book.getUserId() %></td>
              <td><%=book.getBookingName() %></td>
               <td><%=book.getCheckIn() %></td>
                <td><%=book.getCheckOut() %></td>
                 <td><%=book.getRoomNumber() %></td>
                  <td><%=book.getRoomType() %></td>
                  
                     <td><%=book.getAddress() %></td>
            </tr>
            
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