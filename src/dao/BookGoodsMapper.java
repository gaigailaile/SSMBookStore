package dao;

import java.math.BigDecimal;
import java.util.List;

import vo.BookGoods;

public interface BookGoodsMapper {
    public List<BookGoods> selectAll();
    public BookGoods selectOneInfo(BookGoods bookGoods);
    public int deleteOne(BookGoods bookGoods);
    public int insertOne(BookGoods bookGoods);
    public int updateOne(BookGoods bookGoods);
    public List<BookGoods> selectByTypeId(String s);
}