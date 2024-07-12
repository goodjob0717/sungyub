package com.boot.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CorpInfoDTO {
	private int corpInfo_No;
	private String corp_name;
	private String corp_type;
	private String corp_address;
	private int corpInfo_Sal;
	private int corpInfo_empNo;
	private int corpInfo_money;
	private String corpInfo_intro;
	private Timestamp corpInfo_birth;
}
