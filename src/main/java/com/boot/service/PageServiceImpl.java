package com.boot.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.dao.PageDAO;
import com.boot.dto.CorpInfoDTO;
import com.boot.dto.Criteria;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("PageService")
public class PageServiceImpl implements PageService{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public ArrayList<CorpInfoDTO> listWithPaging(Criteria cri) {
		log.info("@# PageServiceImpl listWithPaging");
		log.info("@# cri=>"+cri);
		
		PageDAO dao = sqlSession.getMapper(PageDAO.class);
		ArrayList<CorpInfoDTO> list=dao.listWithPaging(cri);
		
		return list;
	}

	@Override
	public int getTotalCount(Criteria cri) {
		log.info("@# PageServiceImpl getTotalCount");
		
		PageDAO dao = sqlSession.getMapper(PageDAO.class);
		int total=dao.getTotalCount(cri);
		
		return total;
	}

	@Override
	public ArrayList<String> corpKeywordsList(String corp_name) {
	    log.info("@# PageServiceImpl corpKeywordsList");

	    PageDAO dao = sqlSession.getMapper(PageDAO.class);
	    ArrayList<String> corpKeywords = new ArrayList<>();

	    // dao.corpKeywordsList(corp_name)가 반환하는 리스트를 반복문으로 처리
	    List<String> keywords = dao.corpKeywordsList(corp_name);
	    for (String keyword : keywords) {
	        corpKeywords.add(keyword);
	        log.info("@# corpKeywords=>" + keyword);
	    }

	    return corpKeywords;
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
