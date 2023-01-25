package com.kh.carrot.airline.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class Airport {
	private String airportCode;			//	`AIRPORT_CODE`	VARCHAR2(30)	NOT NULL	COMMENT '공항코드',
	private String airportName;			//	`AIRPORT_NAME`	VARCHAR2(20)	NOT NULL	COMMENT '공항명',
	private String country;				//	`COUNTRY`	VARCHAR2(20)	NOT NULL	COMMENT '국가명',
	private String city;				//	`CITY`	VARCHAR2(50)	NOT NULL	COMMENT '도시명'	
}
