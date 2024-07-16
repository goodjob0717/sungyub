package com.boot.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boot.dto.CorpInfoDTO;
import com.boot.dto.Criteria;
import com.boot.dto.PageDTO;
import com.boot.service.CorpReviewServiceImpl;
import com.boot.service.PageService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class CorpReviewController {
	
	@Autowired
    private CorpReviewServiceImpl corpreviewService;
	
	@Autowired
	private PageService pageService;

	@GetMapping("/corpReviewList")
    public String corpReviewList(Criteria cri, Model model) {
    	log.info("@# corpReviewList");
    	log.info("@# cri=>"+cri);
        
    	List<CorpInfoDTO> reviews = pageService.listWithPaging(cri);
    	int total = pageService.getTotalCount(cri);
		log.info("@# total=>"+total);
		
		model.addAttribute("reviews", reviews);
		model.addAttribute("pageMaker", new PageDTO(total, cri));
    	
		// reviews 리스트에서 각 CorpInfoDTO의 corp_name을 추출
		for (CorpInfoDTO review : reviews) {
			log.info("@# corp_name=>" + review.getCorp_name());

			List<String> corpKeywords = pageService.corpKeywordsList(review.getCorp_name());
			review.setCorp_keyword(corpKeywords);
			log.info("@# corpKeywords=>" + corpKeywords);
		}
        
		model.addAttribute("corpKeywords", reviews);
        
        return "corpReviewList";
    }
	
//	@GetMapping("/listWithSearch")
//	public String listWithSearch(Criteria cri, Model model) {
//		log.info("@# listWithSearch");
//		log.info("@# cri=>"+cri);
//		
//		List<CorpInfoDTO> reviews = pageService.listWithPaging(cri);
//		int total = pageService.getTotalCount(cri);
//		log.info("@# total=>"+total);
//		
//		model.addAttribute("reviews", reviews);
//		model.addAttribute("pageMaker", new PageDTO(total, cri));
//		
//		// reviews 리스트에서 각 CorpInfoDTO의 corp_name을 추출
//		for (CorpInfoDTO review : reviews) {
//			log.info("@# corp_name=>" + review.getCorp_name());
//			
//			List<String> corpKeywords = pageService.corpKeywordsList(review.getCorp_name());
//			review.setCorp_keyword(corpKeywords);
//			log.info("@# corpKeywords=>" + corpKeywords);
//		}
//		
//		model.addAttribute("corpKeywords", reviews);
//		
//		return "corpReviewList";
//	}

    @PostMapping("/filterReviews")
    @ResponseBody
    public List<CorpInfoDTO> filterReviews(@RequestBody List<String> keywords, Model model) {
    	log.info("@# filterReviews");
        log.info("@# keywords => " + keywords);
        
        // 선택된 키워드로 필터링된 리뷰를 가져옴
        List<CorpInfoDTO> filteredReviews = corpreviewService.filterReviews(keywords);
        log.info("@# filteredReviews=>"+filteredReviews);
        
        model.addAttribute("filteredReviews", filteredReviews);
        
        return filteredReviews;
    }
    
    @RequestMapping("/corpReviewWrite")
    public String corpReviewWrite() {
    	log.info("@# corpReviewWrite");
    	
		return "corpReviewWrite";
	}
    
    @PostMapping("/write_review")
    public String writeReview(@RequestParam HashMap<String, String> param) {
    	log.info("@# writeReview");
    	log.info("@# param=>" + param);
    	
    	corpreviewService.writeReview(param);
    	
    	return "redirect:corpReviewList";
    }
}

