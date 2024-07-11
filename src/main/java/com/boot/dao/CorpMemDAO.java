package com.boot.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.boot.dto.CorpMemDTO;

@Mapper
public interface CorpMemDAO {
	public ArrayList<CorpMemDTO> loginyn(HashMap<String, String> param);
	public void write(HashMap<String, String> param);
	public CorpMemDTO checkCorpId(String corpId);
}
