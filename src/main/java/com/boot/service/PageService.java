package com.boot.service;

import java.util.ArrayList;

import com.boot.dto.CorpInfoDTO;
import com.boot.dto.Criteria;

public interface PageService {
	public ArrayList<CorpInfoDTO> listWithPaging(Criteria cri);
	public int getTotalCount(Criteria cri);
}
