package com.boot.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.boot.dto.CorpReviewDTO;

public interface CorpReviewService {
	public List<CorpReviewDTO> searchKeywords(List<String> keywords);// 아직 미구현
	public void writeReview(@RequestParam HashMap<String, String> param);
}
