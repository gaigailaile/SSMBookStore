package service;

import dao.BookGoodsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vo.BookGoods;

import java.util.List;

/**
 * Created by ggll on 2017/8/23.
 */
@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private BookGoodsMapper bookGoodsMapper;
    @Override
    public List<BookGoods> selectAll() {
        return bookGoodsMapper.selectAll();
    }

    @Override
    public BookGoods selectOneInfo(BookGoods bookGoods) {
        return bookGoodsMapper.selectOneInfo(bookGoods);
    }

    @Override
    public int deleteOne(BookGoods bookGoods) {
        return bookGoodsMapper.deleteOne(bookGoods);
    }

    @Override
    public int insertOne(BookGoods bookGoods) {
        return bookGoodsMapper.insertOne(bookGoods);
    }

    @Override
    public int updateOne(BookGoods bookGoods) {
        return bookGoodsMapper.updateOne(bookGoods);
    }

    @Override
    public List<BookGoods> selectByTypeId(String s) {
        return bookGoodsMapper.selectByTypeId(s);
    }
}
