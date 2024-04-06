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
import org.yuanshen.domain.CustomList;
import org.yuanshen.service.CustomListService;
import org.yuanshen.domain.vo.CustomListQueryCriteria;
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
* @author org.yuanshen
* @date 2024-04-06
**/
@RestController
@RequiredArgsConstructor
@Api(tags = "api/custom管理")
@RequestMapping("/api/customList")
public class CustomListController {

    private final CustomListService customListService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('customList:list')")
    public void exportCustomList(HttpServletResponse response, CustomListQueryCriteria criteria) throws IOException {
        customListService.download(customListService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询api/custom")
    @ApiOperation("查询api/custom")
    @PreAuthorize("@el.check('customList:list')")
    public ResponseEntity<PageResult<CustomList>> queryCustomList(CustomListQueryCriteria criteria, Page<Object> page){
        return new ResponseEntity<>(customListService.queryAll(criteria,page),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增api/custom")
    @ApiOperation("新增api/custom")
    @PreAuthorize("@el.check('customList:add')")
    public ResponseEntity<Object> createCustomList(@Validated @RequestBody CustomList resources){
        customListService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改api/custom")
    @ApiOperation("修改api/custom")
    @PreAuthorize("@el.check('customList:edit')")
    public ResponseEntity<Object> updateCustomList(@Validated @RequestBody CustomList resources){
        customListService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping
    @Log("删除api/custom")
    @ApiOperation("删除api/custom")
    @PreAuthorize("@el.check('customList:del')")
    public ResponseEntity<Object> deleteCustomList(@RequestBody List<Integer> ids) {
        customListService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}