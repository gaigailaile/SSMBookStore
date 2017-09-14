package action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.GoodsService;
import vo.BookGoods;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by ggll on 2017/8/23.
 */
@Controller
public class BookGoodsAction {
    @Autowired
    private GoodsService goodsService;
    @RequestMapping("/showgoods.action")
    public String showGoods(HttpServletRequest request){
        List<BookGoods> list = goodsService.selectAll();
        request.setAttribute("list",list);
        request.setAttribute("show","show");
        return "mainpage.jsp";
    }
    @RequestMapping("/showGoodsOne.action")
    public String showOne(BookGoods bookGoods,HttpServletRequest request){
        BookGoods bookGoods1 = goodsService.selectOneInfo(bookGoods);
        request.setAttribute("goods",bookGoods1);
        return "mainpage.jsp";
    }
}
