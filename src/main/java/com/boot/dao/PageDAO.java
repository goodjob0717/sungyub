package com.boot.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.boot.dto.CorpInfoDTO;
import com.boot.dto.Criteria;

@Mapper
public interface PageDAO {
//	Criteria 객체를 이용해서 페이징 처리
	public ArrayList<CorpInfoDTO> listWithPaging(Criteria cri);
	public int getTotalCount(Criteria cri);
}
