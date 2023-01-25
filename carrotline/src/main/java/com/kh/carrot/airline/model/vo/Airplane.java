package com.kh.carrot.airline.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class Airplane {
	private String planeName;			//	`PLANE_NAME`	VARCHAR2(30)	NOT NULL	COMMENT '비행기고유번호(기종명+순번)',
	private String className;			//	`CLASS_NAME`	VARCHAR2(20)	NULL	COMMENT '좌석등급명',
	private int premiumCap;				//	`PREMIUM_CAPACITY`	NUMBER	NULL	COMMENT '프리미엄정원',
	private int semiCap;				//	`SEMIPREMIUM_CAPACITY`	NUMBER	NULL	COMMENT '세미프리미엄정원',
	private int frontCap;				//	`FRONT_CAPACITY`	NUMBER	NULL	COMMENT '프론트정원',
	private int standardCap;			//	`STANDARD_CAPACITY`	NUMBER	NULL	COMMENT '스탠다드정원',
	private int planeSizeCost;			//	`PLANE_SIZE_COST`	NUMBER	NULL	COMMENT '비행기기본비용',
	private String flightStatus;		//	`FLIGHT_STATUS`	VARCHAR2(1)	NULL	COMMENT '비행상태 (Y/N)'
}
