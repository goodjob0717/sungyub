package com.boot.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.boot.dto.CorpInfoDTO;

public interface CorpReviewService {
	public List<CorpInfoDTO> filterReviews(List<String> keywords);
	public void writeReview(@RequestParam HashMap<String, String> param);
}
