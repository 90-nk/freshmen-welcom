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
package org.yuanshen.rest;

import me.zhengjie.annotation.Log;
import org.yuanshen.domain.TaskList;
import org.yuanshen.service.TaskListService;
import org.yuanshen.domain.vo.TaskListQueryCriteria;
import lombok.RequiredArgsConstructor;
import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.*;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import me.zhengjie.utils.PageResult;

/**
* @author hugo
* @date 2024-03-31
**/
@RestController
@RequiredArgsConstructor
@Api(tags = "task_api管理")
@RequestMapping("/api/taskList")
public class TaskListController {

    private final TaskListService taskListService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('taskList:list')")
    public void exportTaskList(HttpServletResponse response, TaskListQueryCriteria criteria) throws IOException {
        taskListService.download(taskListService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询task_api")
    @ApiOperation("查询task_api")
    @PreAuthorize("@el.check('taskList:list')")
    public ResponseEntity<PageResult<TaskList>> queryTaskList(TaskListQueryCriteria criteria, Page<Object> page){
        return new ResponseEntity<>(taskListService.queryAll(criteria,page),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增task_api")
    @ApiOperation("新增task_api")
    @PreAuthorize("@el.check('taskList:add')")
    public ResponseEntity<Object> createTaskList(@Validated @RequestBody TaskList resources){
        taskListService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改task_api")
    @ApiOperation("修改task_api")
    @PreAuthorize("@el.check('taskList:edit')")
    public ResponseEntity<Object> updateTaskList(@Validated @RequestBody TaskList resources){
        taskListService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping
    @Log("删除task_api")
    @ApiOperation("删除task_api")
    @PreAuthorize("@el.check('taskList:del')")
    public ResponseEntity<Object> deleteTaskList(@RequestBody List<Integer> ids) {
        taskListService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}