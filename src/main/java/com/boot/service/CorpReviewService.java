package com.boot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.dao.CorpReviewDAO;
import com.boot.dto.CorpReviewDTO;

@Service
public class CorpReviewService {
	
	@Autowired
	private CorpReviewDAO corpReviewDAO;
	
	public List<CorpReviewDTO> reviewList() {
		return corpReviewDAO.reviewList();
	}
	
	public List<CorpReviewDTO> searchKeywords(List<String> keywords) {
		return corpReviewDAO.searchKeywords(keywords);
	}
}
