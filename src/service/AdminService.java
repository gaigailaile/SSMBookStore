package service;

import vo.BookAdmin;

import java.util.List;

/**
 * Created by ggll on 2017/8/23.
 */
public interface AdminService {
    public List<BookAdmin> adminLogin(BookAdmin bookAdmin);
}
