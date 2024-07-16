package com.boot.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.boot.dto.CorpInfoDTO;
import com.boot.dto.Criteria;

public interface PageService {
	public ArrayList<CorpInfoDTO> listWithPaging(Criteria cri);
//	public ArrayList<CorpInfoDTO> listWithSearch(Criteria cri);
	public int getTotalCount(Criteria cri);
	public List<String> corpKeywordsList(@Param("corp_name") String corp_name);
}
