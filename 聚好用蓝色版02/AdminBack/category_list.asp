<!--#include file="../inc/access.asp"  -->
<!-- #include file="inc/functions.asp" -->
<!-- #include file="page_next.asp" -->
<%
'栏目文件夹获取
set rs_1=server.createobject("adodb.recordset")
sql="select FolderName from web_Models_type where [id]=2"
rs_1.open(sql),cn,1,1
if not rs_1.eof then
if rs_1("FolderName")<>"" then
MainClass_FolderName="/"&rs_1("FolderName")
else
MainClass_FolderName=""
end if
end if
rs_1.close
set rs_1=nothing%>
	<%
Call header()
%>
<script language="JavaScript">
<!--
function ask(msg) {
	if( msg=='' ) {
		msg='警告：删除后将不可恢复，确定要删除吗？';
	}
	if (confirm(msg)) {
		return true;
	} else {
		return false;
	}
}
//-->
</script>

<SCRIPT language=javascript>
<!--
function class_show(meval)
{
  var left_n=eval(meval);
  if (left_n.style.display=="none")
  { eval(meval+".style.display='';"); }
  else
  { eval(meval+".style.display='none';"); }
}
-->
</SCRIPT>
<style>
.TitleHighlight2{
	color:#CCC;}
.TitleHighlight2 a{
	color:#FFF;
	text-decoration:none;}
.contenttable a:hover{
	color:#FF0000;
	text-decoration:underline;}
.jhyBuildHtmlAlertTxt a{
color:#009900;
}
</style>
	<table cellpadding='3' cellspacing='1' border='0' class='tableBorder' align=center>
	<tr>
	  <th width="100%" height=25 class='tableHeaderText'>管理栏目</th>
	
	<tr><td height="400" valign="top"  class='forumRow'><br>
	    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
		  <tr><td width="100%" align="right" class="jhyBuildHtmlAlertTxt"><a href="html_items.asp"><strong>增加修改删除栏目后，请点击这里，去生成栏目静态>>></strong></a></td></tr>
          <tr>
            <td height="25" class='TipTitle'>&nbsp;√ 操作提示</td>
          </tr>
          <tr>
            <td height="30" valign="top" class="TipWords">
              <p>1、点击栏目后面的<font color="#03d8d8"><strong>“内容管理”</strong></font>打开后，可以<font color="#000000" size="+2"><strong>“添加”</strong></font>、删除、修改相应的的内容。</p>
			  <p>2、可以设置最高三级栏目，点击栏目名称所在行色块或前面的“+号”，即可展开下级栏目。<font color="#0000ff">（注：如果一级栏目为“单页”类型，其下的子目录也必须是“单页”类型）</font></p>
              <p>3、<font color="#FF0000">特别提醒：增加、修改、删除“栏目”后，请到“导航管理”中修改对应的导航，并重新生成所有静态。</font></p>
			  </td>
          </tr>
          <tr>
            <td height="10" ></td>
          </tr>
        </table>
	    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="25" class='forumRowHighLight'>&nbsp;| <a href="category_add.asp?ppid=1">添加新的一级栏目</a></td>
          </tr>
          <tr>
            <td height="30"></td>
          </tr>
      </table>
	    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="2" class="contenttable">
          <tr>
            <td width="6%" height="30" class="TitleHighlight">&nbsp;</td>
            <td width="30%" height="30" class="TitleHighlight"><div align="center" style="font-weight: bold;color:#ffffff">栏目名称(栏目ID)</div></td>
            <td width="7%" class="TitleHighlight"><div align="center" style="font-weight: bold;color:#ffffff">栏目排序</div></td>
            <td width="15%" class="TitleHighlight"><div align="center" style="font-weight: bold;color:#ffffff">栏目级别</div></td>
            <td width="42%" class="TitleHighlight"><div align="center" style="font-weight: bold;color:#ffffff">栏目操作</div></td>
          </tr>
		  <%'输出一级栏目
strFileName="category_list.asp" 
pageno=20
		set rs=server.createobject("adodb.recordset")
sql="select id,pid,ppid,name,folder,ClassType,[order] from category where ppid=1 order by [order],time"
rs.open(sql),cn,1,1
rscount=rs.recordcount
if not rs.eof and not rs.bof then
call showsql(pageno)
rs.move(rsno)
for p_i=1 to loopno
		  %>
          <tr >
            <td height="30" class="TitleHighlight2"  onClick="javascript:class_show('class_<%=rs("id")%>');" ><div align="center"><img src="images/tree_folder1.gif"></div></td>
            <td class="TitleHighlight2" onClick="javascript:class_show('class_<%=rs("id")%>');">&nbsp;<a href="<%=MainClass_FolderName&"/"&rs("folder")%>" target="_blank"><%=rs("name")%></a>(<%=rs("id")%>)</td>
            <td class="TitleHighlight2" onClick="javascript:class_show('class_<%=rs("id")%>');">
              <div align="center"><%=rs("order")%></div></td>
            <td class="TitleHighlight2" >
            <div align="center">
			<% select case rs("ClassType")
			case 1
			response.write "[文章] "
			ListName="Article_list.asp"
			case 2
			response.write "[产品] "
			ListName="Product_list.asp"
			case 4
			response.write "[招聘] "
			ListName="Info_list.asp"			
			case 5
			response.write "[单页] "
			ListName="#"						
			end select%>
			一级栏目            </div></td>
            <td class="TitleHighlight2" >
			<%if rs("ClassType")=5 then%>
            <div align="left"><a href="category_add.asp?pid_name=<%=rs("name")%>&pid=<%=rs("id")%>&ppid=2&page=<%=page%>&act=<%=act%>&keywords=<%=keywords%>">添加二级栏目</a> | <a href="category_edit.asp?id=<%=rs("id")%>&ppid=1&page=<%=page%>&act=<%=act%>&keywords=<%=keywords%>">栏目设置</a> | <a href="javascript:if(ask('警告：删除后将不可恢复，确定要删除吗？')) location.href='category_del.asp?id=<%=rs("id")%>&page=<%=page%>&act=<%=act%>&keywords=<%=keywords%>';">删除栏目</a></div>
			<%else%>
            <div align="left"><a href="category_add.asp?pid_name=<%=rs("name")%>&pid=<%=rs("id")%>&ppid=2&page=<%=page%>&act=<%=act%>&keywords=<%=keywords%>">添加二级栏目</a> | <a href="category_edit.asp?id=<%=rs("id")%>&ppid=1&page=<%=page%>&act=<%=act%>&keywords=<%=keywords%>">栏目设置</a> | <a href="<%=ListName%>?cid=<%=rs("id")%>&act=search"><font color="#00ffff">内容管理</font></a> | <a href="javascript:if(ask('警告：删除后将不可恢复，确定要删除吗？')) location.href='category_del.asp?id=<%=rs("id")%>&page=<%=page%>&act=<%=act%>&keywords=<%=keywords%>';">删除栏目</a></div>
			<%end if%>
			</td>
          </tr>
		    <tr id="class_<%=rs("id")%>" style="DISPLAY: none">
            <td height="35"  colspan="5" ><table width="100%" border="0" align="center" cellpadding="0" cellspacing="2">
					  <%'输出二级栏目
		  set rs2=server.createobject("adodb.recordset")
sql="select id,pid,ppid,name,folder,ClassType,[order] from category where ppid=2 and pid="&rs("id")&" order by [order],time"
rs2.open(sql),cn,1,1
if not rs2.eof and not rs2.bof then
		  do while not rs2.eof
		  %>
			  <tr ><td width="6%" height="27" class="TitleHighlight3"  onClick="javascript:class_show('class_<%=rs2("id")%>');"><div align="center"><img src="images/tree_folder1.gif"></div></td>
            <td width="30%" class="TitleHighlight3"  onClick="javascript:class_show('class_<%=rs2("id")%>');" >&nbsp;<a href="<%=MainClass_FolderName&"/"&rs("folder")&"/"&rs2("folder")%>" target="_blank"><%=rs2("name")%></a>(<%=rs2("id")%> | <%=rs2("folder")%>)</td>
            <td width="7%" class="TitleHighlight3"  onClick="javascript:class_show('class_<%=rs2("id")%>');" ><div align="center"><%=rs2("order")%></div></td>
            <td width="15%" class="TitleHighlight3"  >
              <div align="center">			<% select case rs2("ClassType")
			case 1
			response.write "[文章] "
			ListName="Article_list.asp"
			case 2
			response.write "[产品] "
			ListName="Product_list.asp"
			case 4
			response.write "[招聘] "
			ListName="Info_list.asp"				
			case 5
			response.write "[单页] "
			ListName="#"						
			end select%>二级栏目            </div></td>
            <td width="42%" class="TitleHighlight3"  >
			<%if rs2("ClassType")=5 then%>
              <div align="left"><a href="category_add.asp?pid_name=<%=rs("name")%>&pid_name2=<%=rs2("name")%>&pid=<%=rs2("id")%>&ppid=3">添加三级栏目</a> | <a href="category_edit.asp?id=<%=rs2("id")%>&pid_name=<%=rs("name")%>&ppid=2">栏目设置</a> | <a href="javascript:if(ask('警告：删除后将不可恢复，确定要删除吗？')) location.href='category_del.asp?id=<%=rs2("id")%>';">删除栏目</a> </div>
			<%else%>
              <div align="left"><a href="category_add.asp?pid_name=<%=rs("name")%>&pid_name2=<%=rs2("name")%>&pid=<%=rs2("id")%>&ppid=3">添加三级栏目</a> | <a href="category_edit.asp?id=<%=rs2("id")%>&pid_name=<%=rs("name")%>&ppid=2">栏目设置</a> | <a href="<%=ListName%>?cid=<%=rs("id")%>&pid=<%=rs2("id")%>&act=search"><font color="#00ffff">内容管理</font></a> | <a href="javascript:if(ask('警告：删除后将不可恢复，确定要删除吗？')) location.href='category_del.asp?id=<%=rs2("id")%>';">删除栏目</a> </div>
			<%end if%>  
			  </td></tr>
			  
			     <tr id="class_<%=rs2("id")%>" style="DISPLAY: none">
            <td height="35"  colspan="5" ><table width="100%" border="0" align="center" cellpadding="0" cellspacing="2">
					  <%'输出三级栏目
		  set rs3=server.createobject("adodb.recordset")
sql="select id,pid,ppid,name,folder,ClassType,[order] from category where ppid=3 and pid="&rs2("id")&" order by [order],time"
rs3.open(sql),cn,1,1
if not rs3.eof and not rs3.bof then
		  do while not rs3.eof
		  %>
			  <tr ><td width="7%" height="23" bgcolor="#F7F7F7" class='forumRowHighlight'  ></td>
            <td width="29%" class='forumRowHighlight'  >&nbsp;<a href="<%=MainClass_FolderName&"/"&rs("folder")&"/"&rs2("folder")&"/"&rs3("folder")%>" target="_blank"><%=rs3("name")%></a>(<%=rs3("id")%> | <%=rs3("folder")%>)</td>
            <td width="8%" class='forumRowHighlight'  ><div align="center"><%=rs3("order")%></div></td>
            <td width="14%" class='forumRowHighlight'  >
              <div align="center">			<% select case rs3("ClassType")
			case 1
			response.write "[文章] "
			ListName="Article_list.asp"
			case 2
			response.write "[产品] "
			ListName="Product_list.asp"
			case 4
			response.write "[招聘] "
			ListName="Info_list.asp"				
			case 5
			response.write "[单页] "
			ListName="#"						
			end select%>三级栏目            </div></td>
            <td width="42%" class='forumRowHighlight'  >
			<%if rs3("ClassType")=5 then%>
              <div align="left">&nbsp;<a href="category_edit.asp?id=<%=rs3("id")%>&pid_name=<%=rs("name")%>&pid_name2=<%=rs2("name")%>&ppid=3">栏目设置</a> | <a href="javascript:if(ask('警告：删除后将不可恢复，确定要删除吗？')) location.href='category_del.asp?id=<%=rs3("id")%>';">删除栏目</a> </div>
			<%else%>
              <div align="left">&nbsp;<a href="category_edit.asp?id=<%=rs3("id")%>&pid_name=<%=rs("name")%>&pid_name2=<%=rs2("name")%>&ppid=3">栏目设置</a> | <a href="<%=ListName%>?cid=<%=rs("id")%>&pid=<%=rs2("id")%>&ppid=<%=rs3("id")%>&act=search"><font color="#00ffff">内容管理</font></a> | <a href="javascript:if(ask('警告：删除后将不可恢复，确定要删除吗？')) location.href='category_del.asp?id=<%=rs3("id")%>';">删除栏目</a> </div>
			<%end if%>  
			  </td></tr>
					  <%
		  rs3.movenext
		  loop 
else
response.write "<div align='center'><span style='color: #FF0000'>无下级栏目！</span></div>"
end if 
		  rs3.close
		  set rs3=nothing
		  %> </table> </td>
          </tr>
					  <%
		  rs2.movenext
		  loop 
else
response.write "<div align='center'><span style='color: #FF0000'>无下级栏目！</span></div>"
end if 
		  rs2.close
		  set rs2=nothing
		  %> </table> </td>
          </tr>
		  		  <%
		  rs.movenext
		  next
		  else
response.write "<div align='center'><span style='color: #FF0000'>暂无数据！</span></div>"
		  end if
		  
		  rs2.close
		  set rs2=nothing
		  
		  rs3.close
		  set rs3=nothing
		  
		  rs.close
		  set rs=nothing
		  %>
		  		    <tr  >
              <td height="35"  colspan="5" ><div align="center">
                <%call showpage(strFileName,rscount,pageno,false,true,"")%>
           </div></td>
		    </tr>
      </table>
	    <br></td>
	</tr>
	</table>

<%
Call DbconnEnd()
 %>