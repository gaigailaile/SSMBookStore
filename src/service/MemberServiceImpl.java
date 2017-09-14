package service;

import dao.BookMemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vo.BookMember;

import java.util.List;

/**
 * Created by ggll on 2017/8/22.
 */
@Service
public class MemberServiceImpl implements MemberService{
    @Autowired
    private BookMemberMapper bookMemberMapper;
    @Override
    public List<BookMember> selectAll() {
        return bookMemberMapper.selectAll();
    }

    @Override
    public int register(BookMember bookMember) {
        return bookMemberMapper.register(bookMember);
    }

    @Override
    public BookMember selectById(int id) {
        return bookMemberMapper.selectById(id);
    }

    @Override
    public int updeteMoney(BookMember bookMember) {
        return bookMemberMapper.updeteMoney(bookMember);
    }

    @Override
    public List<BookMember> login(BookMember bookMember) {
        return bookMemberMapper.login(bookMember);
    }
}
