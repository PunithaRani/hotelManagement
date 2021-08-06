package com.example.hotel_management;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;



@Controller

public class HotelAdminController {

	@Autowired
	HotelAdminService service;
	
	@RequestMapping("/user_details")
	//public List<UserdetailsModel> getUserdetails()
	public String getUserdetails(Model m)
	{
		List<UserdetailsModel> l=service.getUserdetails();
		m.addAttribute("l", l);
		return "user_details.jsp";

	}
	
	@RequestMapping("/booking_details")
	public String getBookingdetails(Model m)
	{
	
		List<BookingDetailsModel> booking=service.getBookingdetails();
		m.addAttribute("booking", booking);
		return "bookingdetails.jsp";
	}
	
	@RequestMapping("/search")
	public String getSeacheduservalue(@RequestParam(name="name") String name,Model m)
	{
		if(name.isEmpty())
			return "redirect:user_details";
	
		List<UserdetailsModel> search=service.getSeacheduservalue(name);
		m.addAttribute("search", search);
		
		return "search.jsp";
	}
	
	@RequestMapping("/searchbooking")
	public String getSeachedbookvalue(@RequestParam(name="bookid") String name,Model m)
	{
		if(name.isEmpty())
			return "redirect:booking_details";
	
		BookingDetailsModel searchbook=service.getSeachedbookvalue(Integer.parseInt(name));
		m.addAttribute("searchbook", searchbook);

		return "searchbooking.jsp";
	}
	
}
