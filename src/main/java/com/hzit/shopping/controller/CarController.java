package com.hzit.shopping.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.hzit.shopping.bean.Car;
import com.hzit.shopping.service.ICarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CarController {
    @Autowired
    private ICarService service;

    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/car/list")
    @ResponseBody
    public List<Car> findall() {
        List<Car> list = service.list();
        return list;
    }

    /**
     * 根据cid查询
     * @param cid
     * @return
     */
    @RequestMapping("/car/{cid}")
    @ResponseBody
    public Car findcarbycid(@PathVariable String cid) {
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("cid", cid);
        Car one = service.getOne(queryWrapper);
        return one;
    }
}
