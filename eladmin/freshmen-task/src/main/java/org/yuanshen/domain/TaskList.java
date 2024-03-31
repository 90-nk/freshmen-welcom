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
package org.yuanshen.domain;

import lombok.Data;
import cn.hutool.core.bean.BeanUtil;
import io.swagger.annotations.ApiModelProperty;
import cn.hutool.core.bean.copier.CopyOptions;
import java.sql.Timestamp;
import java.io.Serializable;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
* @description /
* @author hugo
* @date 2024-03-31
**/
@Data
@TableName("task_list")
public class TaskList implements Serializable {

    @TableId(value = "id")
    @ApiModelProperty(value = "打卡任务id")
    private Integer id;

    @NotBlank
    @ApiModelProperty(value = "打卡标签")
    private String tag;

    @NotBlank
    @ApiModelProperty(value = "打卡内容（类似标题）")
    private String content;

    @NotNull
    @ApiModelProperty(value = "打卡积分")
    private Integer money;

    @NotBlank
    @ApiModelProperty(value = "打卡任务描述")
    private String description;

    @NotNull
    @ApiModelProperty(value = "是否为主线任务")
    private Integer main;

    @ApiModelProperty(value = "时间")
    private Timestamp show;

    @NotNull
    @ApiModelProperty(value = "是否展示卡片")
    private Integer cardshow;

    public void copy(TaskList source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
