package com.boot.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.boot.dto.CorpInfoDTO;
import com.boot.dto.ReviewCriteria;

public interface ReviewPageService {
	public ArrayList<CorpInfoDTO> listWithPaging(ReviewCriteria cri);
//	public ArrayList<CorpInfoDTO> listWithSearch(Criteria cri);
	public int getTotalCount(ReviewCriteria cri);
	public List<String> corpKeywordsList(@Param("corp_name") String corp_name);
	public List<String> corpWelfaresList(@Param("corp_name") String corp_name);
	public List<String> corpReviewsList(@Param("corp_name") String corp_name);
}
