<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<ul class="am-list admin-sidebar-list">
    <!-- 首页 bar -->
    <li id="bar-home"><a href="manage.action"><span class="am-icon-home"></span> 首页</a></li>
    <!-- 新闻中心 -->
    <li class="admin-parent" id="bar-info">
        <a class="am-cf" href="info.action">
            <span class="am-icon-newspaper-o"></span> 信息中心
        </a>
    </li>
    <!-- 班级管理 -->
    <li class="admin-parent" id="bar-class">
        <a class="am-cf" href="javascript:void(0)" data-am-collapse="{target: '#class-manage'}">
            <span class="am-icon-institution"></span> 班级 / 校友组织
            <span class="am-icon-angle-right am-fr am-margin-right"></span>
        </a>
        <ul class="am-list am-collapse admin-sidebar-sub" id="class-manage">
            <li>
                <a href="cm.action" class="am-cf"><span class="am-icon-puzzle-piece"></span>所有班级</a>
            </li>
            <li><a href="#"><span class="am-icon-puzzle-piece"></span>创建班级</a></li>
            <li><a href="#"><span class="am-icon-th"></span>年级管理</a></li>
        </ul>
    </li>
    <!-- 校友论坛 -->
    <li class="admin-parent" id="bar-forum">
        <a class="am-cf" href="javascript:void(0)" data-am-collapse="{target: '#forum-manage'}">
            <span class="am-icon-group"></span> 校友论坛 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub" id="forum-manage">
            <li><a href="#" class="am-cf"><span class="am-icon-check"></span>
                个人资料 </a></li>
            <li><a href="#"><span class="am-icon-puzzle-piece"></span>
                帮助页</a></li>
            <li><a href="#"><span class="am-icon-th"></span>相册页面</a></li>
            <li><a href="#"><span class="am-icon-calendar"></span> 系统日志</a></li>
            <li><a href="#"><span class="am-icon-bug"></span>404</a></li>
        </ul>
    </li>
    <!-- 招聘管理 -->
    <li class="admin-parent" id="bar-job"><a class="am-cf"
                                             href="javascript:;" data-am-collapse="{target: '#job-manage'}">
        <span class="am-icon-suitcase"></span> 职业招聘 <span
            class="am-icon-angle-right am-fr am-margin-right"></span>
    </a>
        <ul class="am-list am-collapse admin-sidebar-sub" id="job-manage">
            <li><a href="job.action"><span class="am-icon-th"></span>
                所有招聘 </a></li>
            <li><a href="job/createJob.action"><span class="am-icon-th"></span>
                发布招聘 </a></li>
        </ul>
    </li>
    <!-- 权限管理 -->
    <li class="admin-parent" id="bar-right">
        <a class="am-cf" href="javascript:;" data-am-collapse="{target: '#right-manage'}">
            <span class="am-icon-eye"></span> 权限管理
            <span class="am-icon-angle-right am-fr am-margin-right"></span>
        </a>
        <ul class="am-list am-collapse admin-sidebar-sub" id="right-manage">
            <li id="all-rights"><a href="right/indexRight.action" class="am-cf">
                <span class="am-icon-search-plus"></span>所有权限</a></li>
            <li id="role-setting"><a href="" class="am-cf">
                <span class="am-icon-search-plus"></span>角色设置</a></li>
            <li id="right-setting"><a href="#">
                <span class="am-icon-puzzle-piece"></span>权限设置</a></li>
        </ul>
    </li>
    <!-- 系统设置 -->
    <li class="admin-parent" id="bar-system">
        <a class="am-cf" href="javascript:;" data-am-collapse="{target: '#system-setting'}">
            <span class="am-icon-gears"></span> 系统设置
            <span class="am-icon-angle-right am-fr am-margin-right"></span>
        </a>
        <ul class="am-list am-collapse admin-sidebar-sub" id="system-setting">
            <li id="dictionary"><a href="dict/indexDict.action" class="am-cf"><span
                    class="am-icon-search-plus"></span>字典</a></li>
            <li id="dictionary-data"><a href="dictData/indexDictData.action" class="am-cf"><span
                    class="am-icon-search-plus"></span>字典数据</a></li>
        </ul>
    </li>
    <!-- ... -->
    <li><a href="login/logout.action"><span class="am-icon-sign-out"></span> 注销</a></li>
</ul>

<!-- 公告 bookmark -->
<div class="am-panel am-panel-default admin-sidebar-panel">
    <div class="am-panel-bd">
        <p>
            <span class="am-icon-bookmark"></span> 公告
        </p>
        <p>时光静好，与君语；细水流年，与君同。—— 信电校友录</p>
    </div>
</div>


<!-- 社群 wiki -->
<div class="am-panel am-panel-default admin-sidebar-panel">
    <div class="am-panel-bd">
        <p>
            <span class="am-icon-tag"></span> 社群
        </p>
        <p>欢迎来到信电校友录后台管理!</p>
    </div>
</div>