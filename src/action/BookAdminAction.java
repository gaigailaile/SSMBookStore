package action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import service.AdminService;
import service.GoodsService;
import vo.BookAdmin;
import vo.BookGoods;
import vo.BookMember;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created by ggll on 2017/8/23.
 */
@Controller
public class BookAdminAction {
    @Autowired
    private AdminService adminService;
    @Autowired
    private GoodsService goodsService;
    @RequestMapping("/adminlogin.action")
    public String adminLogin(BookAdmin bookAdmin, HttpSession httpSession, HttpServletRequest request){
        List<BookAdmin> list=adminService.adminLogin(bookAdmin);
        if(list.size()==1){
            httpSession.setAttribute("name",list.get(0).getName());
            httpSession.setAttribute("id",list.get(0).getId());
            request.setAttribute("admin","true");
            return "mainpage.jsp";
        }else {
            return "adminlogin.jsp";
        }
    }
    @RequestMapping("/addGoods.action")
    public String addGoods(MultipartFile file,BookGoods bookGoods){
        String fileName=null;
        if (!file.isEmpty()){
            fileName=file.getOriginalFilename();
            File file1 = new File("D:\\JavaEEWork\\SSMBookStore\\web\\images\\"+fileName);
            try {
                /*将文件内容传到新建的文件中*/
                file.transferTo(file1);
                System.out.println("上传成功:"+fileName);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        List<BookGoods> list = goodsService.selectAll();
        bookGoods.setId(list.size()+1);
        bookGoods.setImgurl("images/"+fileName);
        goodsService.insertOne(bookGoods);
        return "checkGoods.action";
    }
    @RequestMapping("/checkGoods.action")
    public String checkGoods(HttpServletRequest request){
        List<BookGoods> list = goodsService.selectAll();
        request.setAttribute("list",list);
        request.setAttribute("admincheck","true");
        return "mainpage.jsp";
    }
    @RequestMapping("/deleteGoods.action")
    public String deleteGoods(BookGoods bookGoods){
        goodsService.deleteOne(bookGoods);
        return "checkGoods.action";
    }
    @RequestMapping("/goAddGoods.action")
    public String goAddGoods(HttpServletRequest request){
        request.setAttribute("addGoods","true");
        return "mainpage.jsp";
    }
    @RequestMapping("/goUpdateGoods.action")
    public String goUpdateGoods(HttpServletRequest request,BookGoods bookGoods){
        request.setAttribute("UpdateGoods","true");
        BookGoods goods =goodsService.selectOneInfo(bookGoods);
        request.setAttribute("goods1",goods);
        return "mainpage.jsp";
    }
    @RequestMapping("/updateGoods.action")
    public String updateGoods(BookGoods bookGoods){
        goodsService.updateOne(bookGoods);
        System.out.println(bookGoods.getId());
        System.out.println(bookGoods.getName());
        return "checkGoods.action";
    }
}
