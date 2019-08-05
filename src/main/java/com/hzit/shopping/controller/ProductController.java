package com.hzit.shopping.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.hzit.shopping.bean.Product;
import com.hzit.shopping.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private IProductService service;

    /**
     * 查询所有
     *
     * @return
     */
    @RequestMapping("/product/list")
    // @ResponseBody
    public String findlist(Model model) {


        System.out.println("第一次查询");
        List<Product> productlist = service.list();
        System.out.println("第二次查询");
        List<Product> list = service.list();
        model.addAttribute("productlist", productlist);
        return "commodity";
    }

    /**
     * 根据pid查询
     *
     * @param pid
     * @return
     */
    @RequestMapping("/product/{pid}")
    @ResponseBody
    public Product findcarbycid(@PathVariable String pid) {
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("pid", pid);
        Product one = service.getOne(queryWrapper);
        return one;
    }


    @RequestMapping("/product/add/{pid}")
    // @ResponseBody
    public String addcar(Model model) {
        List<Product> productlist = service.list();
        model.addAttribute("productlist", productlist);
        return "commodity";
    }



}
