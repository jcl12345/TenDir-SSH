<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
<head>
    <title>alert</title>
    <script src="../../statics/libs/jquery-1.7.2.js"></script>
    <link rel="stylesheet" href="../../statics/css/font-awesome.min.css">
    <!--layui ztree样式-->
    <link rel="stylesheet" href="../../statics/plugins/layui/css/layui.css" media="all">
    <script src="../../statics/plugins/layer/layer.js"></script>
    <script src="../../statics/plugins/layui/layui.js"></script>
    <script src="../../statics/plugins/ztree/jquery.ztree.all.min.js"></script>
    <link rel="stylesheet" href="../../statics/plugins/ztree/css/metroStyle/metroStyle.css">
    <!--js组件-->
    <script src="../../common/js/pageGrid.js"></script>
    <script src="../../common/js/selectTool.js"></script>
    <script src="../../common/js/radioTool.js"></script>
    <script src="../../common/js/checkboxTool.js"></script>
    <script src="../../common/js/treeTool.js"></script>
    <script src="../../common/js/labelTool.js"></script>
    <script src="../../common/js/linkSelectTool.js"></script>
    <script src="../../common/js/uploadTool.js"></script>
    <script src="../../common/js/HuploadTool.js"></script>
    <script src="../../common/js/tplTool.js"></script>
    <script src="../../common/js/editGrid.js"></script>
    <!--全局-->
    <script src="../../common/js/whole/cyLayer.js"></script>
    <script src="../../common/js/whole/common.js"></script>
    <script src="../../common/js/whole/setting.js"></script>
    <script src="../../common/js/whole/utils.js"></script>
    <script src="../../common/js/whole/monitor.js"></script>
    <!--样式-->
    <link rel="stylesheet" href="../../common/css/cyStyle.css">
    <link rel="stylesheet" href="../../common/css/cyType.css">
</head>
<body>
<div class="layui-input-inline">
    <button class="layui-btn" onclick="submitCode()">提交代码</button>
</div>
<div class="layui-tab">
    <ul class="layui-tab-title">
        <li class="layui-this">编写代码</li>
        <li id="showResult">查看效果</li>
        <li>参数详解</li>

    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <textarea class="layui-textarea" rows="28" class="layui-code">


             <button class="layui-btn" onclick="Alert.confirm('确认',function(){ Msg.msg('操作成功') } )">确认（是/否）</button> </br></br>

             <button class="layui-btn" onclick="Alert.alert('确认')">alert</button> </br></br>

             <button class="layui-btn"  onclick="Alert.prompt('文本框','1',function(value) {  Msg.success(value) })">prompt文本框</button>   <br> <br>

              <button class="layui-btn"  onclick="Alert.prompt('文本域','2',function(value) {    Msg.success(value)   })">prompt文本域</button>   <br> <br>


           </textarea>

        </div>

        <div class="layui-tab-item" id="result">

            <button class="layui-btn" onclick="Alert.confirm('确认',function(){Msg.msg('操作成功')})">确认（是/否）</button> </br></br>

            <button class="layui-btn" onclick="Alert.alert('确认')">重写alert</button> </br></br>

            <button class="layui-btn"  onclick="Alert.prompt('文本框','1',function(value) {
                  Msg.success(value)
              })">prompt文本框</button>   <br> <br>

            <button class="layui-btn"  onclick="Alert.prompt('文本域','2',function(value) {
                  Msg.success(value)
              })">prompt文本域</button>   <br> <br>


        </div>

        <div class="layui-tab-item">
            <table class="layui-table">
                <thead>
                <tr>
                    <th>类型</th>
                    <th>方法</th>
                    <th>参数</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>alert</td>
                    <td>Alert.alert(msg)</td>
                    <td>msg: 提示信息</td>
                </tr>
                <tr>
                    <td>confirm</td>
                    <td>Alert.confirm(msg,callback)</td>
                    <td> msg: 提示信息  callback 回调函数 </td>
                </tr>
                <tr>
                    <td>prompt</td>
                    <td>Alert.prompt(msg,type,callback)</td>
                    <td>msg:提示信息  type:  1文本框 2文本域 3文本域+文件上传   callback：回调函数</td>
                </tr>
                </tbody>
            </table>

        </div>
    </div>
</div>


</body>
<script>
    layui.use('element', function () {
    });

    function submitCode() {
        var code = $("textarea").val();
        $("#result").html(code);
        Msg.success("代码提交成功,请查看效果!");
        Tips.info("点此查看效果",$("#showResult"));
    }
</script>
</html>
