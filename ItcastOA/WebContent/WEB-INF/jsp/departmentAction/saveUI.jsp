<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
	<title>部门设置</title>
	<%@ include file="/WEB-INF/jsp/public/common.jspf" %>
</head>
<body>

<!-- 标题显示 --> 
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            部门信息
        </div>
        <div id="Title_End"></div>
    </div>
</div>


<!--显示表单内容-->
<div id=MainArea>

    <s:form action="departmentAction_%{id==null ? 'add' : 'edit'}">
    	<s:hidden name="id"></s:hidden>
        
        <div class="ItemBlock_Title1"><!-- 信息说明<DIV CLASS="ItemBlock_Title1">
        	<IMG BORDER="0" WIDTH="4" HEIGHT="7" SRC="${pageContext.request.contextPath}/style/blue/images/item_point.gif" /> 部门信息 </DIV>  -->
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                    <tr><td width="100">上级部门</td>
                        <td>
                        	<s:select name="parentId" cssClass="SelectStyle"
                        		list="#departmentList" listKey="id" listValue="name"
                        		headerKey="" headerValue="请选择部门"
                        	/>
                        </td>
                    </tr>
                    <tr><td>部门名称</td>
                        <td><s:textfield name="name" cssClass="InputStyle required"/></td>
                    </tr>
                    <tr><td>职能说明</td>
                        <td><s:textarea name="description" cssClass="TextareaStyle"></s:textarea></td>
                    </tr>
                </table>
            </div>
        </div>
        
        <!-- 表单操作 -->
        <div id="InputDetailBar">
              <input type="image" height="30px"  src="${pageContext.request.contextPath}/style/images/2.jpg"/>
             <a href="javascript:history.go(-1);"><font color="blue">返回</font></a>
        </div>
    </s:form>
</div>


</body>
</html>