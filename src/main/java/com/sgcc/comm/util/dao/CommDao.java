package com.sgcc.comm.util.dao;

import java.util.Map;

/**
 * @author jerrywang
 */
public interface CommDao{

    /**
     * @Description 插入问题日志记录
     * @author JerryWang
     * @date 2017/4/29 14:55
     * @param param
     */
    void insertIssueRecord(Map<String, String> param);

}