/*
*  Copyright 2019-2023 Zheng Jie
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*  http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*/
package org.yuanshen.service.impl;

import org.yuanshen.domain.CustomList;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.yuanshen.service.CustomListService;
import org.yuanshen.domain.vo.CustomListQueryCriteria;
import org.yuanshen.mapper.CustomListMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import me.zhengjie.utils.PageUtil;
import java.util.List;
import java.util.Map;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import me.zhengjie.utils.PageResult;

/**
* @description 服务实现
* @author org.yuanshen
* @date 2024-04-06
**/
@Service
@RequiredArgsConstructor
public class CustomListServiceImpl extends ServiceImpl<CustomListMapper, CustomList> implements CustomListService {

    private final CustomListMapper customListMapper;

    @Override
    public PageResult<CustomList> queryAll(CustomListQueryCriteria criteria, Page<Object> page){
        return PageUtil.toPage(customListMapper.findAll(criteria, page));
    }

    @Override
    public List<CustomList> queryAll(CustomListQueryCriteria criteria){
        return customListMapper.findAll(criteria);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(CustomList resources) {
        save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(CustomList resources) {
        CustomList customList = getById(resources.getCustomId());
        customList.copy(resources);
        saveOrUpdate(customList);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deleteAll(List<Integer> ids) {
        removeBatchByIds(ids);
    }

    @Override
    public void download(List<CustomList> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (CustomList customList : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put(" customCost",  customList.getCustomCost());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}