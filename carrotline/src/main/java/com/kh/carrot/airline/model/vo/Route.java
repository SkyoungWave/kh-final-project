package com.kh.carrot.airline.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class Route {
	private String routeNo;			//	`ROUTE_NO`	VARCHAR2(6)	NOT NULL	COMMENT '노선코드(출발공항코드+도착공항코드)',
	private int flightTime;			//	`FLIGHT_TIME`	NUMBER	NOT NULL	COMMENT '비행시간(분)',
	private int flightMile;			//	`FLIGHT_MILE`	NUMBER	NOT NULL	COMMENT '비행거리(마일)',
	private int mileage;			//	`MILEAGE`	NUMBER	NOT NULL	COMMENT '마일리지',
	private int premiumCost;		//	`PREMIUM_COST`	NUMBER	NULL	COMMENT '프리미엄추가금',
	private int semiCost;			//	`SEMIPREMIUM_COST`	NUMBER	NULL	COMMENT '세미프리미엄추가금',
	private int frontCost;			//	`FRONT_COST`	NUMBER	NULL	COMMENT '프론트추가금',
	private int standardCost;		//	`STANDARD_COST`	NUMBER	NULL	COMMENT '스탠다드추가금',
	private String arvAriport;		//	`ARRIVAL_AIRPORT`	VARCHAR2(30)	NOT NULL	COMMENT '도착공항코드',
	private String dptAirport;		//	`DEPARTURE_AIRPORT`	VARCHAR2(30)	NOT NULL	COMMENT '출발공항코드'
}
