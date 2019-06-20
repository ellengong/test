package com.wz.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wz.dao.MemberMapper;
import com.wz.pojo.Member;

@Service
public class MemberServiceImpl implements IMemberService {
	@Autowired
	MemberMapper memberMapper;
	
	@Autowired
    IMemberService memberService;
	
	@Override
	public boolean addMember(Member member) {
		int count = memberMapper.addMember(member);
		
		if(count > 0) {
			return true;// 添加成功
		}
		
		return false;
	}
	
	@Override
	public List<Member> selectAll(){
		return memberMapper.selectAll();
	}
	
	@Override
	public int countPages(int singlePage) {
		int countMemb = memberMapper.countMember();
		int yushu = countMemb%singlePage;
		if(yushu > 0) {
			 return countMemb/singlePage + 1;
		} else {
			return countMemb/singlePage;
		}
	}

	@Override
	public List<Member> selectByPage(int fromPosition, int pageSize) {
		
		List<Member> list = memberMapper.selectByPage(fromPosition, pageSize);
		int countPages = countPages(10);
		
		if(null != list && list.size() > 0) {
			// 将总页数保存到list第一个元素的pages属性中
			list.get(0).setPages(countPages);
		}
		
		
		return list;
	}
}


