package com.boot.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.dto.CorpInfoDTO;
import com.boot.dto.ReviewCriteria;

@Mapper
public interface ReviewPageDAO {
//	Criteria 객체를 이용해서 페이징 처리
	public ArrayList<CorpInfoDTO> listWithPaging(ReviewCriteria cri);
//	public ArrayList<CorpInfoDTO> listWithSearch(Criteria cri);
	public int getTotalCount(ReviewCriteria cri);
	public ArrayList<String> corpKeywordsList(@Param("corp_name") String corp_name);
	public ArrayList<String> corpWelfaresList(@Param("corp_name") String corp_name);
	public ArrayList<String> corpReviewsList(@Param("corp_name") String corp_name);
//	public ArrayList<String> corpKeywordsList(String corp_name);
}
