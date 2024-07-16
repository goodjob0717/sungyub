package com.boot.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.dao.ReviewPageDAO;
import com.boot.dto.CorpInfoDTO;
import com.boot.dto.ReviewCriteria;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("PageService")
public class ReviewPageServiceImpl implements ReviewPageService{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public ArrayList<CorpInfoDTO> listWithPaging(ReviewCriteria cri) {
		log.info("@# PageServiceImpl listWithPaging");
		log.info("@# cri=>"+cri);
		
		ReviewPageDAO dao = sqlSession.getMapper(ReviewPageDAO.class);
		ArrayList<CorpInfoDTO> list=dao.listWithPaging(cri);
		
		return list;
	}

	@Override
	public int getTotalCount(ReviewCriteria cri) {
		log.info("@# PageServiceImpl getTotalCount");
		
		ReviewPageDAO dao = sqlSession.getMapper(ReviewPageDAO.class);
		int total=dao.getTotalCount(cri);
		
		return total;
	}

	@Override
	public ArrayList<String> corpKeywordsList(String corp_name) {
	    log.info("@# PageServiceImpl corpKeywordsList");

	    ReviewPageDAO dao = sqlSession.getMapper(ReviewPageDAO.class);
	    ArrayList<String> corpKeywords = new ArrayList<>();

	    // dao.corpKeywordsList(corp_name)가 반환하는 리스트를 반복문으로 처리
	    List<String> keywords = dao.corpKeywordsList(corp_name);
	    for (String keyword : keywords) {
	        corpKeywords.add(keyword);
	        log.info("@# corpKeywords=>" + keyword);
	    }

	    return corpKeywords;
	}

	@Override
	public List<String> corpWelfaresList(String corp_name) {
	    log.info("@# PageServiceImpl corpWelfaresList");

	    ReviewPageDAO dao = sqlSession.getMapper(ReviewPageDAO.class);
	    ArrayList<String> corpWelfares = new ArrayList<>();

	    // dao.corpWelfaresList(corp_name)가 반환하는 리스트를 반복문으로 처리
	    List<String> welfares = dao.corpWelfaresList(corp_name);
	    for (String welfare : welfares) {
	    	corpWelfares.add(welfare);
	        log.info("@# corpWelfares=>" + welfare);
	    }

	    return corpWelfares;
	}

	@Override
	public List<String> corpReviewsList(String corp_name) {
	    log.info("@# PageServiceImpl corpReviewsList");

	    ReviewPageDAO dao = sqlSession.getMapper(ReviewPageDAO.class);
	    ArrayList<String> corpReviews = new ArrayList<>();

	    // dao.corpWelfaresList(corp_name)가 반환하는 리스트를 반복문으로 처리
	    List<String> reviews = dao.corpReviewsList(corp_name);
	    for (String review : reviews) {
	    	corpReviews.add(review);
	        log.info("@# corpReviews=>" + review);
	    }

	    return corpReviews;
	}

//	@Override
//	public ArrayList<CorpInfoDTO> listWithSearch(Criteria cri) {
//		log.info("@# PageServiceImpl listWithSearch");
//		log.info("@# cri=>"+cri);
//		
//		PageDAO dao = sqlSession.getMapper(PageDAO.class);
//		ArrayList<CorpInfoDTO> list=dao.listWithSearch(cri);
//		
//		return list;
//	}
}
