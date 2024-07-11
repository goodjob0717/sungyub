package com.boot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boot.dto.CorpReviewDTO;
import com.boot.service.CorpReviewService;

@Controller
public class CorpReviewController {
	
	@Autowired
    private CorpReviewService corpreviewService;

    @GetMapping("/corpReviewList")
    public String corpReviewList(Model model) {
        
    	List<CorpReviewDTO> reviews = corpreviewService.reviewList();
        model.addAttribute("reviews", reviews);
        
        return "corpReviewList";
    }

    @PostMapping("/search")
    @ResponseBody
    public List<CorpReviewDTO> searchKeywords(@RequestBody List<String> keywords) {
        return corpreviewService.searchKeywords(keywords);
    }
}

