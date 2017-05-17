package com.xzit.ar.manage.service.info;

import com.xzit.ar.common.exception.ServiceException;
import com.xzit.ar.common.page.Page;

import java.util.List;
import java.util.Map;

/**
 * TODO ${TODO}
 *
 * @author 董亮亮 1075512174@qq.com.
 * @Date:2017/5/17 17:23.
 */
public interface InfoService {

    /**
     * TODO 根据条件查询信息
     * @param page
     * @param query
     * @param state
     * @param infoType
     * @return
     * @throws ServiceException
     */
    List<Map<String, Object>> queryInfo(Page<Map<String, Object>> page,
                                        String query, String state, String infoType) throws ServiceException;
}
