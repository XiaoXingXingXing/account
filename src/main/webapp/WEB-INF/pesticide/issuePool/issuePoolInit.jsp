<%--
  Created by IntelliJ IDEA.
  User: jerrywang
  Date: 2017/1/15
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../comm/comm.jsp"%>
<link href="<%=path%>/pesticide/issuePool/css/issuePool.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<%=path%>/pesticide/issuePool/js/issuePoolInit.js"></script>
<br>
<div >
    <form class="form-inline row query-form" role="form" id="query_box">
        <div class="col-md-4">
            <input type="text" class="form-control" id="issue_code" name="issue_code" placeholder="编号" >
        </div>
        <div class="col-md-4">
            <input type="text" class="form-control" id="issue_name" name="issue_name" placeholder="任务名">
        </div>
        <div class="col-md-4">
            <select class="form-control" id="query_issue_type" name="query_issue_type">
                <option value="">-- 任务类型 --</option>
            </select>
        </div>
        <div class="col-md-4">
            <select class="form-control" id="query_state" name="query_state">
                <option value="">-- 任务状态 --</option>
            </select>
        </div>
        <div class="col-md-4">
            <input type="text" class="form-control" id="query_create_user" name="query_create_user" placeholder="发布者">
        </div>
        <div class="col-md-4">
            <input type="text" class="form-control" id="query_principal" name="query_principal" placeholder="接受者">
        </div>
    </form>
    <div id="grid">
    </div>
    <nav id="page-bar">
    </nav>
</div>

<script id="grid_template" type="text/html">
    {{if list.length == 0}}
    <div><span>未查询到任何数据！</span></div>
    {{/if}}
        {{each list as value i}}
        <div class="grid-item {{if value.ISSUE_TYPE == 'T'}}task{{/if}}{{if value.ISSUE_TYPE == 'B'}}bug{{/if}}"
             onclick="issuePool.js.detail('{{value.UUID}}','{{value.ISSUE_TYPE}}')">
            <div class="left">
                <div class="left code_title">
                    <div class="left code">
                        <span>{{value.CODE}}</span>
                    </div>
                    <div class="left title">
                        <span>{{value.TITLE}}</span>
                    </div>
                </div>
                <div class="left">
                    <span class="gray">{{value.VERSION_CODE}}</span>
                    <span class="gray">{{value.PRINCIPAL}}</span>
                    <span class="gray">{{value.CREATE_USER}}</span>
                </div>
            </div>
            <div class="right">
                <div class="priority">
                    <span class="glyphicon glyphicon-flag l{{value.PRIORITY}}"></span>
                </div>
            </div>
        </div>
        {{/each}}
</script>