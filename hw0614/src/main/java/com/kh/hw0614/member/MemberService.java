package com.kh.hw0614.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

    @Autowired
    private MemberMapper memberMapper;

    public int join(MemberVo vo) {
        return memberMapper.join(vo);
    }

    public MemberVo login(MemberVo vo) {
        return memberMapper.login(vo);
    }

    public String findId(String userNumber) {
        return memberMapper.findId(userNumber);
    }

    public MemberVo findPwd(MemberVo vo) {
        return memberMapper.findPwd(vo);
    }
}
