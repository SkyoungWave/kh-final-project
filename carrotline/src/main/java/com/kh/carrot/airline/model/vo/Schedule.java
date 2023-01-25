package com.kh.carrot.airline.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class Schedule {
	private int scheduleNo;				//	`SCHEDULE_NO`	NUMBER	NOT NULL	COMMENT '일정번호',
	private String flightName;			//	`FLIGHT_NAME`	VARCHAR2(20)	NULL	COMMENT '편명(출발공항코드+도착공항코드+순번)',
	private Date departmentTime;		//	`DEPARTURE_TIME`	DATE	NULL	COMMENT '출발일시',
	private Date arrivalTime;			//	`ARRIVAL_TIME`	DATE	NULL	COMMENT '도착일시',
	private int scheduleCost;			//	`SCHEDULE_COST`	NUMBER	NOT NULL	COMMENT '운항일정비용',
	private String planeName;			//	`PLANE_NAME`	VARCHAR(30)	NOT NULL	COMMENT '비행기고유번호(기종명+순번)',
	private String routeNo;				//	`ROUTE_NO`	VARCHAR2(6)	NOT NULL	COMMENT '노선코드(출발공항코드+도착공항코드)'
}
