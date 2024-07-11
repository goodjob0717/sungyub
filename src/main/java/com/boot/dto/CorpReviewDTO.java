package com.boot.dto;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CorpReviewDTO {
	private int review_No;
	private String user_id;
	private String corp_name;
	private String review_coment;
	
	private List<CorpKeywordListDTO> corpKeywordLists;
	private List<CorpWelfareDTO> corpWelfares;
}
