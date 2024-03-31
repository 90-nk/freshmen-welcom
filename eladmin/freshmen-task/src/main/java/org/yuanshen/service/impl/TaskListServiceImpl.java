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

import org.yuanshen.domain.TaskList;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.yuanshen.service.TaskListService;
import org.yuanshen.domain.vo.TaskListQueryCriteria;
import org.yuanshen.mapper.TaskListMapper;
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
* @author hugo
* @date 2024-03-31
**/
@Service
@RequiredArgsConstructor
public class TaskListServiceImpl extends ServiceImpl<TaskListMapper, TaskList> implements TaskListService {

    private final TaskListMapper taskListMapper;

    @Override
    public PageResult<TaskList> queryAll(TaskListQueryCriteria criteria, Page<Object> page){
        return PageUtil.toPage(taskListMapper.findAll(criteria, page));
    }

    @Override
    public List<TaskList> queryAll(TaskListQueryCriteria criteria){
        return taskListMapper.findAll(criteria);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(TaskList resources) {
        save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(TaskList resources) {
        TaskList taskList = getById(resources.getId());
        taskList.copy(resources);
        saveOrUpdate(taskList);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deleteAll(List<Integer> ids) {
        removeBatchByIds(ids);
    }

    @Override
    public void download(List<TaskList> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (TaskList taskList : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("打卡标签", taskList.getTag());
            map.put("打卡内容（类似标题）", taskList.getContent());
            map.put("打卡积分", taskList.getMoney());
            map.put("打卡任务描述", taskList.getDescription());
            map.put("是否为主线任务", taskList.getMain());
            map.put("时间", taskList.getShow());
            map.put("是否展示卡片", taskList.getCardshow());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}