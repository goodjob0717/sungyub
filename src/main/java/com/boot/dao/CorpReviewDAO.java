package com.boot.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.dto.CorpInfoDTO;
import com.boot.dto.CorpReviewDTO;

@Mapper
public interface CorpReviewDAO {
	public List<CorpReviewDTO> searchKeywords(List<String> keywords);// 아직 미구현
	public void writeReview(HashMap<String, String> param);
	public void writeKeywordList(HashMap<String, String> param);
	public void writeWelfare(HashMap<String, String> param);
	// 리뷰 작성 후 review_No 반환
    public int getReviewNo();
    // 필터링된 리뷰를 가져오는 메서드
    public List<CorpInfoDTO> filterReviews(@Param("keywords") List<String> keywords);
}
