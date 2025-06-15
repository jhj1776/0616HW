package com.kh.hw0614.member;

import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member")
public class MemberJoinController {

    @Autowired
    private MemberService memberService;

    /**
     * TAC 기능
     */
    @GetMapping("tac")
    public String tac(){
        return "tac/tac";
    }

    /**
     * JOIN 기능
     */
    @GetMapping("join")
    public String join(){
        return "join/join";
    }

    @PostMapping("join")
    public String join(MemberVo vo){
        try {
        int result = memberService.join(vo);
        if(result!=1){
            throw new IllegalStateException("[MEMBER - 001] JOIN ERROR");
        }
        return "redirect:/member/login";

        }catch (Exception e){
            return "error/error";
        }
    }

    /**
     * LOGIN 기능
     */
    @GetMapping("login")
    public String login(){
        return "login/login";
    }

    @PostMapping("login")
    public String login(MemberVo vo, HttpSession session){
        MemberVo loginMember = memberService.login(vo);
        if(loginMember == null){
            session.setAttribute("alertMsg","Login Fail...");
        return "redirect:/member/login";
        }else{
            session.setAttribute("loginMember",loginMember);
        return "redirect:/home";
        }
    }
    @GetMapping("logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/home";
    }

    @GetMapping("findId")
    public String findId(){
        return "account/findId";
    }
    @PostMapping("findId")
    public String findId(String userNumber, HttpSession session){
        String foundId = memberService.findId(userNumber);
        if(foundId == null){
            session.setAttribute("notFoundId","User ID not Found");
            return "redirect:/member/findId";
        }else{
            session.setAttribute("id",foundId);
            return "redirect:/member/findId";
        }
    }

    @GetMapping("findPwd")
    public String findPwd(){
        return "account/findPwd";
    }

    @PostMapping("findPwd")
    public String findPwd(MemberVo vo, HttpSession session){
        MemberVo foundPwd = memberService.findPwd(vo);
        if(foundPwd == null){
            session.setAttribute("notFoundPwd","User Pwd not Found");
            return "redirect:/member/findPwd";
        }else{
            session.setAttribute("pwd",foundPwd);
            return "redirect:/member/findPwd";
        }
    }
}
