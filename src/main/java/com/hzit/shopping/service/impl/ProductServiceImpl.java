package com.hzit.shopping.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hzit.shopping.bean.Product;
import com.hzit.shopping.mapper.ProductMapper;
import com.hzit.shopping.service.IProductService;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl extends ServiceImpl<ProductMapper,Product> implements IProductService{
}
