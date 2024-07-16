package com.boot.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
//@NoArgsConstructor
public class ReviewCriteria {
	private int pageNum;//페이지 번호
	private int amount;//페이지당 글 갯수
	
	private String type;
	private String keyword;
	
	public ReviewCriteria() {
		this(1, 10);
	}
	
	public ReviewCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
