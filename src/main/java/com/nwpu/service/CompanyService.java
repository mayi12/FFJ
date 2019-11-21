package com.nwpu.service;

import com.nwpu.domain.Company;
import com.nwpu.domain.PageBean;

import java.util.List;

public interface CompanyService {

    /**
     * 查询所有
     * @return
     */
    public List<Company> findAll();

    /**
     * 查找指定条数
     * @param num
     * @return
     */
    public List<Company> findHotCompany(int num);

    /**
     * 根据名称查询
     * @return
     */
    public Company findByName(String name);

    // List<Company> search(String key, int i);

    /**
     * 分页查找
     * @param key
     * @param currentPage
     * @param rows
     * @return
     */
    PageBean<Company> findByPage(String key, int currentPage, int rows);
}
