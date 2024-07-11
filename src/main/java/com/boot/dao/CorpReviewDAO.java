package com.boot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.boot.dto.CorpReviewDTO;

@Mapper
public interface CorpReviewDAO {
	public List<CorpReviewDTO> reviewList();
	public List<CorpReviewDTO> searchKeywords(List<String> keywords);
}
