package action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.GoodsService;
import service.MemberService;
import vo.BookGoods;
import vo.BookMember;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ggll on 2017/8/22.
 */
@Controller
public class BookMemberAction {
    @Autowired
    private MemberService memberService;
    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/login.action")
    public String memberLogin(BookMember bookMember, HttpSession httpSession,HttpServletRequest request){
        List<BookMember> list=memberService.login(bookMember);
        if(list.size()==1){
            httpSession.setAttribute("name",list.get(0).getName());
            httpSession.setAttribute("id",list.get(0).getId());
            return "showgoods.action";
        }else {
            return "login.jsp";
        }
    }
    @RequestMapping("/register.action")
    public String memberRegister(BookMember bookMember){
        List<BookMember> list=memberService.selectAll();
        bookMember.setId(list.size()+1);
        int i = memberService.register(bookMember);
        if(i==1) {
            return "mainpage.jsp";
        }else {
            return "register.jsp";
        }
    }
    @RequestMapping("/buy.action")
    public String buy(BookGoods bookGoods,String counts,HttpServletRequest request,HttpSession session){
        BookGoods bookGoods1 = goodsService.selectOneInfo(bookGoods);
        int i = (Integer) session.getAttribute("id");
        BookMember bookMember = memberService.selectById(i);
        int count = Integer.parseInt(counts);
        int prices = bookGoods1.getPrice()*count;
        if(bookMember.getMoney()>prices){
            request.setAttribute("buyresult","购买成功");
            return "mainpage.jsp";
        }else {
            request.setAttribute("buyresult","失败，余额不足");
            return "mainpage.jsp";
        }
    }
    @RequestMapping("/cart.action")
    public String cart(HttpSession session, BookGoods bookGoods,String counts){
        List<BookGoods> list;
        List<Integer> count;
        BookGoods bookGoods1 = goodsService.selectOneInfo(bookGoods);
        if(session.getAttribute("list")==null){
            list = new ArrayList<>();
        }else {
            list =(List<BookGoods>) session.getAttribute("list");
        }
        if(session.getAttribute("count")==null){
            count = new ArrayList<>();
        }else {
            count = (List<Integer>) session.getAttribute("count");
        }
        list.add(bookGoods1);

        count.add(Integer.parseInt(counts));
        session.setAttribute("list",list);
        session.setAttribute("count",count);
        /*重定向*/
        return "redirect:cart.jsp";
    }
    @RequestMapping("/deleteShow.action")
    public String deleteShow(HttpSession session,String i){
        if(session.getAttribute("list")!=null&&session.getAttribute("count")!=null){
            List<BookGoods> list = (List<BookGoods>) session.getAttribute("list");
            List<Integer> count = (List<Integer>) session.getAttribute("count");
            int integer = Integer.parseInt(i);
            count.remove(integer);
            list.remove(integer);
            session.setAttribute("list",list);
            session.setAttribute("count",count);
        }
        return "redirect:cart.jsp";
    }
    @RequestMapping("/selectByType.action")
    public String showType(String type,HttpServletRequest request){
        String typeId=null;
        try {
            typeId = new String(type.getBytes("ISO8859-1"),"UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        List<BookGoods> list=goodsService.selectByTypeId(typeId);
        for (BookGoods goods:list) {
            System.out.println(goods.getImgurl()+"%"+goods.getName()+"$$$"+goods.getId());
        }
        request.setAttribute("lists",list);
        request.setAttribute("TypeGoods",typeId);
        return "forward:mainpage.jsp";
    }
}
