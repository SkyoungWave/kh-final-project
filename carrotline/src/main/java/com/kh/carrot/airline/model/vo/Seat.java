package com.kh.carrot.airline.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class Seat {
	private String seatCode;			//	`SEAT_CODE`	VARCHAR2(10)	NOT NULL	COMMENT '좌석코드',
	private String seatGrade;			//	`SEAT_GRADE`	VARCHAR2(20)	NULL	COMMENT '좌석등급',
	private String bookingStatus;		//	`BOOKING_STATUS`	VARCHAR2(1)	NOT NULL	DEFAULT 'N'	COMMENT '예매상태',
	private String planeName;			//	`PLANE_NAME`	VARCHAR2(30)	NOT NULL	COMMENT '비행기고유번호(기종명+순번)'
}
