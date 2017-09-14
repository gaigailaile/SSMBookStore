package service;

import dao.BookAdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vo.BookAdmin;

import java.util.List;

/**
 * Created by ggll on 2017/8/23.
 */
@Service
public class AdminServiceImpl implements AdminService{
    @Autowired
    private BookAdminMapper bookAdminMapper;
    @Override
    public List<BookAdmin> adminLogin(BookAdmin bookAdmin) {
        return bookAdminMapper.adminLogin(bookAdmin);
    }
}
