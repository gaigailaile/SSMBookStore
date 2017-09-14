package dao;

import java.math.BigDecimal;
import java.util.List;

import vo.BookMember;

public interface BookMemberMapper {
    public List<BookMember> selectAll();
    public List<BookMember> login(BookMember bookMember);
    public int register(BookMember bookMember);
    public BookMember selectById(int id);
    public int updeteMoney(BookMember bookMember);
}