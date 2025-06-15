package com.kh.hw0614.member;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface MemberMapper {

    @Insert("""
            INSERT INTO MEMBER
           (
               NO
               ,USER_ID
               ,USER_PWD
               ,USER_NICK
               ,USER_NUMBER
           )
           VALUES
           (
               SEQ_MEMBER.NEXTVAL
               , #{userId}
               , #{userPwd}
               , #{userNick}
               , #{userNumber}
           )
            """)
    int join(MemberVo vo);

    @Select("""
            SELECT
                NO
                ,USER_ID
                ,USER_PWD
                ,USER_NICK
                ,USER_NUMBER
                ,CREATED_DATE
                ,DEL_YN
            FROM MEMBER
            WHERE USER_ID = #{userId}
            AND USER_PWD = #{userPwd}
            AND DEL_YN = 'N'
            """)
    MemberVo login(MemberVo vo);

    @Select("""
           SELECT
                USER_ID
            FROM MEMBER
            WHERE USER_NUMBER = #{userNumber}
           """)
    String findId(String userNumber);




    @Select("""
            SELECT
                    USER_PWD
            FROM MEMBER
            WHERE USER_ID = #{userId}
            AND USER_NUMBER = #{userNumber}
            """)
    MemberVo findPwd(MemberVo vo);
}
