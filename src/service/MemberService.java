package service;

import vo.BookMember;

import java.util.List;

/**
 * Created by ggll on 2017/8/22.
 */
public interface MemberService {
    public List<BookMember> selectAll();
    public int register(BookMember bookMember);
    public List<BookMember> login(BookMember bookMember);
    public BookMember selectById(int id);
    public int updeteMoney(BookMember bookMember);
}
