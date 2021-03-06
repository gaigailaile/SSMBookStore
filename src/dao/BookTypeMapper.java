package dao;

import java.math.BigDecimal;
import vo.BookType;

public interface BookTypeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table BOOK_TYPE
     *
     * @mbggenerated Fri Aug 25 14:32:12 CST 2017
     */
    int deleteByPrimaryKey(BigDecimal id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table BOOK_TYPE
     *
     * @mbggenerated Fri Aug 25 14:32:12 CST 2017
     */
    int insert(BookType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table BOOK_TYPE
     *
     * @mbggenerated Fri Aug 25 14:32:12 CST 2017
     */
    int insertSelective(BookType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table BOOK_TYPE
     *
     * @mbggenerated Fri Aug 25 14:32:12 CST 2017
     */
    BookType selectByPrimaryKey(BigDecimal id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table BOOK_TYPE
     *
     * @mbggenerated Fri Aug 25 14:32:12 CST 2017
     */
    int updateByPrimaryKeySelective(BookType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table BOOK_TYPE
     *
     * @mbggenerated Fri Aug 25 14:32:12 CST 2017
     */
    int updateByPrimaryKey(BookType record);
}