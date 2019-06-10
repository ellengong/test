package com.wz.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

import com.wz.pojo.Member;
import com.wz.service.IMemberService;

@Controller
@RequestMapping(value = "member")
public class MemberController {
	@Autowired
	IMemberService memberService;
	
	@RequestMapping(value = "showall")
	public ModelAndView showAll(HttpSession session, HttpServletRequest request) {
		List<Member> listInfo = memberService.selectAll();
		
		request.setAttribute("list", listInfo);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("memberlist");

		return mv;
	}

	@RequestMapping(value = "addMember") 
	public ModelAndView addMember( Member memInfo) {
	
		

		ModelAndView mv = new ModelAndView();
		try {			
			boolean success = memberService.addMember(memInfo);
			System.out.println("submit test:"+memInfo.getName());
			if (success ) {
				mv.setViewName("success");
			} else {
				mv.setViewName("fail");
			}
		} catch (Exception e) {
			mv.setViewName("fail");
			e.printStackTrace();
			System.out.println("submit error:"+memInfo.getHometown());
			System.out.println(e.getMessage());
		}

		return mv;
	}
}
