package service;

import vo.BookGoods;

import java.util.List;

/**
 * Created by ggll on 2017/8/23.
 */
public interface GoodsService {
    public List<BookGoods> selectAll();
    public BookGoods selectOneInfo(BookGoods bookGoods);
    public int deleteOne(BookGoods bookGoods);
    public int insertOne(BookGoods bookGoods);
    public int updateOne(BookGoods bookGoods);
    public List<BookGoods> selectByTypeId(String s);
}
