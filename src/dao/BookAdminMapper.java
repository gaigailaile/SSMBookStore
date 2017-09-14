package dao;

import java.math.BigDecimal;
import java.util.List;

import vo.BookAdmin;

public interface BookAdminMapper {
    public List<BookAdmin> adminLogin(BookAdmin bookAdmin);
}