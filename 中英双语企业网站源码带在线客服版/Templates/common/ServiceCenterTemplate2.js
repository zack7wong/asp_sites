﻿lastScrollY=0;
function heartBeat(){ 
var diffY;
if (document.documentElement && document.documentElement.scrollTop)
    diffY = document.documentElement.scrollTop;
else if (document.body)
    diffY = document.body.scrollTop
else
    {/*Netscape stuff*/}
    
//alert(diffY);
percent=.1*(diffY-lastScrollY); 
if(percent>0)percent=Math.ceil(percent); 
else percent=Math.floor(percent); 
document.getElementById("lovexin12").style.top=parseInt(document.getElementById("lovexin12").style.top)+percent+"px";

lastScrollY=lastScrollY+percent; 
//alert(lastScrollY);
}
suspendcode12="<DIV id=\"lovexin12\" style='right:10px;POSITION:absolute;TOP:$web_top$px;z-index:1000'>";
var recontent='<table align="center" style="margin-left:1px;width:90px" border="0" cellpadding=0 cellspacing=0 height="32">' + 
'<tr>' + 
'<td style="border:0;padding:0;font-size:13px" height="32" ><table style="width:90px" border="0" cellspacing="0" cellpadding="0" height="1">' + 
'<tr>' + 
'<td style="border:0;padding:0;font-size:13px; background:none" height="20"><img src="/images/qqimg/head.gif"  border="0" style="margin:0px; padding:0px;" usemap="#MapMapMap"></td>' + 
'</tr>' + 
'<tr>' + 
'<td style="border:0;padding:0;font-size:13px;padding-left:1px;background:url(/images/qqimg/center_1.gif) repeat-y;" background="/images/qqimg/center_1.gif" height="19">' + 
'<table style="width:90px"  border="0" align="center" cellpadding="0" cellspacing="0" height="1">' + 
'<tr>' + 
'<td style="border:0;padding:0;background:none;font-size:13px" height="6"></td>' + 
'</tr>' + 
'<tr>' + 
'<td style="border:0;padding:0;background:none;font-size:13px" height="39">' + 
'<table  border="0" align="center" cellpadding="0" cellspacing="0" style="width:90px">' + 
'<!--begin-->' + 
$web_qqs$
$web_wangwang$
$web_Skypes$
$web_MSNs$
'<tr>' +  
'</td>' + 
'</tr>' + 
'<!--end-->' + 
'</table></td>' + 
'</tr>' + 
'</table></td>' + 
'</tr>' + 
'<tr>' + 
'<td style="border:0;padding:0;font-size:13px" height="1"><img src="/images/qqimg/end.gif" style="margin:0px; padding:0px;"></td>' + 
'</tr>' + 
'</table>' + 
'</td>' + 
'</tr>' + 
'</table>' + 
'<map name="MapMapMap" onclick="far_close()" style="cursor:handle">' + 
'<area shape="rect" coords="71,8,102,30" href="#">' + 
'</map>';

document.write(suspendcode12); 
document.write(recontent); 
document.write("</div>"); 
window.setInterval("heartBeat()",1);

function far_close()
{
	document.getElementById("lovexin12").innerHTML="";
}

function setfrme()
{
	var tr=document.getElementById("lovexin12");
	var twidth=tr.clientWidth;
	var theight=tr.clientHeight;
	var fr=document.getElementById("frame55la");
	fr.width=twidth-1;
	fr.height=theight-30;
}
//setfrme()
