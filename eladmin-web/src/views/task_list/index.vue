<template>
  <div class="app-container">
    <!--工具栏-->
    <div class="head-container">
      <div v-if="crud.props.searchToggle">
        <!-- 搜索 -->
        <label class="el-form-item-label">打卡任务id</label>
        <el-input v-model="query.id" clearable placeholder="打卡任务id" style="width: 185px;" class="filter-item" @keyup.enter.native="crud.toQuery" />
        <label class="el-form-item-label">打卡积分</label>
        <el-input v-model="query.money" clearable placeholder="打卡积分" style="width: 185px;" class="filter-item" @keyup.enter.native="crud.toQuery" />
        <label class="el-form-item-label">是否为主线任务</label>
        <el-input v-model="query.main" clearable placeholder="是否为主线任务" style="width: 185px;" class="filter-item" @keyup.enter.native="crud.toQuery" />
        <label class="el-form-item-label">是否展示卡片</label>
        <el-input v-model="query.cardshow" clearable placeholder="是否展示卡片" style="width: 185px;" class="filter-item" @keyup.enter.native="crud.toQuery" />
        <date-range-picker
          v-model="query.show"
          start-placeholder="showStart"
          end-placeholder="showStart"
          class="date-item"
        />
        <rrOperation :crud="crud" />
      </div>
      <!--如果想在工具栏加入更多按钮，可以使用插槽方式， slot = 'left' or 'right'-->
      <crudOperation :permission="permission" />
      <!--表单组件-->
      <el-dialog :close-on-click-modal="false" :before-close="crud.cancelCU" :visible.sync="crud.status.cu > 0" :title="crud.status.title" width="500px">
        <el-form ref="form" :model="form" :rules="rules" size="small" label-width="80px">
          <el-form-item label="打卡任务id" prop="id">
            <el-input v-model="form.id" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="打卡标签" prop="tag">
            <el-input v-model="form.tag" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="打卡内容（类似标题）" prop="content">
            <el-input v-model="form.content" :rows="3" type="textarea" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="打卡积分" prop="money">
            <el-input v-model="form.money" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="打卡任务描述" prop="description">
            <el-input v-model="form.description" :rows="3" type="textarea" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="是否为主线任务" prop="main">
            未设置字典，请手动设置 Radio
          </el-form-item>
          <el-form-item label="时间">
            <el-date-picker v-model="form.show" type="datetime" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="是否展示卡片" prop="cardshow">
            <el-radio v-for="item in dict.task_status" :key="item.id" v-model="form.cardshow" :label="item.value">{{ item.label }}</el-radio>
          </el-form-item>
        </el-form>
        <div slot="footer" class="dialog-footer">
          <el-button type="text" @click="crud.cancelCU">取消</el-button>
          <el-button :loading="crud.status.cu === 2" type="primary" @click="crud.submitCU">确认</el-button>
        </div>
      </el-dialog>
      <!--表格渲染-->
      <el-table ref="table" v-loading="crud.loading" :data="crud.data" size="small" style="width: 100%;" @selection-change="crud.selectionChangeHandler">
        <el-table-column type="selection" width="55" />
        <el-table-column prop="id" label="打卡任务id" />
        <el-table-column prop="tag" label="打卡标签" />
        <el-table-column prop="content" label="打卡内容（类似标题）" />
        <el-table-column prop="money" label="打卡积分" />
        <el-table-column prop="description" label="打卡任务描述" />
        <el-table-column prop="main" label="是否为主线任务" />
        <el-table-column prop="show" label="时间" />
        <el-table-column prop="cardshow" label="是否展示卡片">
          <template slot-scope="scope">
            {{ dict.label.task_status[scope.row.cardshow] }}
          </template>
        </el-table-column>
        <el-table-column v-if="checkPer(['admin','taskList:edit','taskList:del'])" label="操作" width="150px" align="center">
          <template slot-scope="scope">
            <udOperation
              :data="scope.row"
              :permission="permission"
            />
          </template>
        </el-table-column>
      </el-table>
      <!--分页组件-->
      <pagination />
    </div>
  </div>
</template>

<script>
import crudTaskList from '@/api/taskList'
import CRUD, { presenter, header, form, crud } from '@crud/crud'
import rrOperation from '@crud/RR.operation'
import crudOperation from '@crud/CRUD.operation'
import udOperation from '@crud/UD.operation'
import pagination from '@crud/Pagination'

const defaultForm = { id: null, tag: null, content: null, money: null, description: null, main: null, show: null, cardshow: null }
export default {
  name: 'TaskList',
  components: { pagination, crudOperation, rrOperation, udOperation },
  mixins: [presenter(), header(), form(defaultForm), crud()],
  dicts: ['task_status'],
  cruds() {
    return CRUD({ title: 'task_api', url: 'api/taskList', idField: 'id', sort: 'id,desc', crudMethod: { ...crudTaskList }})
  },
  data() {
    return {
      permission: {
        add: ['admin', 'taskList:add'],
        edit: ['admin', 'taskList:edit'],
        del: ['admin', 'taskList:del']
      },
      rules: {
        id: [
          { required: true, message: '打卡任务id不能为空', trigger: 'blur' }
        ],
        tag: [
          { required: true, message: '打卡标签不能为空', trigger: 'blur' }
        ],
        content: [
          { required: true, message: '打卡内容（类似标题）不能为空', trigger: 'blur' }
        ],
        money: [
          { required: true, message: '打卡积分不能为空', trigger: 'blur' }
        ],
        description: [
          { required: true, message: '打卡任务描述不能为空', trigger: 'blur' }
        ],
        main: [
          { required: true, message: '是否为主线任务不能为空', trigger: 'blur' }
        ],
        cardshow: [
          { required: true, message: '是否展示卡片不能为空', trigger: 'blur' }
        ]
      },
      queryTypeOptions: [
        { key: 'id', display_name: '打卡任务id' },
        { key: 'money', display_name: '打卡积分' },
        { key: 'main', display_name: '是否为主线任务' },
        { key: 'cardshow', display_name: '是否展示卡片' }
      ]
    }
  },
  methods: {
    // 钩子：在获取表格数据之前执行，false 则代表不获取数据
    [CRUD.HOOK.beforeRefresh]() {
      return true
    }
  }
}
</script>

<style scoped>

</style>
