package com.wz.service;
import java.util.*;
import com.wz.pojo.Member;;

public interface IMemberService {
	List<Member> selectAll();
	
	boolean addMember(Member member);
}
