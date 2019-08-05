package com.hzit.shopping.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hzit.shopping.bean.Car;
import com.hzit.shopping.mapper.CarMapper;
import com.hzit.shopping.service.ICarService;
import org.springframework.stereotype.Service;

@Service
public class CarServiceImpl extends ServiceImpl<CarMapper,Car> implements ICarService {

}
