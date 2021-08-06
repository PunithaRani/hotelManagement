package com.example.hotel_management;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HotelAdminBookingRepo extends JpaRepository<BookingDetailsModel, String>{

	BookingDetailsModel findBybookingId(int name);
}
