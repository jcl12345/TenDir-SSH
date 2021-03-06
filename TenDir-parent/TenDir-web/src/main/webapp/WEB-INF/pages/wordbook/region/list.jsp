<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <%@include file="/common/jsp/includeList.jsp" %>
  <script src="${rootPath}/statics/js/wordbook/region/region.js" charset="utf-8"></script>
 </head>
<body> 
 
<div class="layui-btn-group demoTable">
  <button class="layui-btn" data-type="add"><i class="fa fa-plus">&nbsp;</i>新增</button>
  <button class="layui-btn" style="margin-left: 5px!important;" data-type="edit"><i class="fa fa-pencil-square-o">&nbsp;</i>修改</button>
  <button class="layui-btn layui-btn-danger" style="margin-left: 5px!important;" data-type="deleteBatch"><i class="fa fa-trash-o">&nbsp;</i>批量删除</button>
</div>

<div class="demoTable layui-form-pane" style="display: inline-block;float: right;">
<label class="layui-form-label">关键字</label>
  <div class="layui-inline">
    <input type="text" id="keyWord" name="keyWord" value="${keyWord }" lay-verify="required" placeholder="请输入关键词查询" autocomplete="off" class="layui-input">
  </div>
  <button class="layui-btn" data-type="searchBtn"><i class="fa fa-search">&nbsp;</i>查询</button>
</div>
<table class="layui-hide" id="regionTable" lay-filter="regionT"></table>
 
<script type="text/html" id="checkFlag">
  {{#  if(d.regionFlag == "1"){ }}
    <span class="layui-badge">正常</span>
  {{#  } }}
  {{#  if(d.regionFlag == "2"){ }}
    <span class="layui-badge layui-bg-cyan">禁用</span>
  {{#  } }}
</script>            
<script type="text/html" id="checkLevel">
  {{#  if(d.regionLevel == 0){ }}
    <span class="layui-badge">国家</span>
  {{#  } }}
  {{#  if(d.regionLevel == 1){ }}
    <span class="layui-badge layui-bg-orange">省/自治区</span>
  {{#  } }}
  {{#  if(d.regionLevel == 2){ }}
    <span class="layui-badge layui-bg-green">市/自治州</span>
  {{#  } }}
  {{#  if(d.regionLevel == 3){ }}
    <span class="layui-badge layui-bg-blue">区/县</span>
  {{#  } }}
</script>            

</body>
</html>