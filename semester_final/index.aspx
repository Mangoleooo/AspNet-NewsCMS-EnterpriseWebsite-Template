﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="semester_final.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>****有限公司</title>
<meta name="keywords" content="****有限公司" />
<meta name="description" content="****有限公司" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
<link type="text/css" href="css/style.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="js/lib.js"></script>
<!--解决 IE6 背景缓存-->
<!--[if IE 6]><script type="text/javascript">document.execCommand("BackgroundImageCache", false, true);</script><![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    	<div class="container header">
		<div class="f-l logo">
			<a title="****有限公司" class="d_b" href="index.aspx"><img src="./images/logo.png" alt="****有限公司" width="76" height="82" /></a>
		</div>
		<div class="f-r span811">
			<ul class="quick clearfix">
				<li class="tele01"></li>
				<li class="home"><a href="javascript:void(0);" id="setHomePage" onclick="SetHome(this)" style="behavior:url(#default#homepage);">设为首页</a></li>
				<li class="addpage"><a href="javascript:addToFavorite()">加入收藏</a></li>
			</ul>
			<div class="nav">
				<ul>
					<li><a href="index.aspx">首页</a></li>
					<li><a href="about.aspx">公司简介</a></li>
					<li>
						<a class="sub" href="news.aspx?newsId=9">行业动态</a>
						<ul>
							<li><a href="news.aspx?newsId=10">国内动态</a></li>
							<li><a href="news.aspx?newsId=11">国际动态</a></li>
						</ul>
					</li>
					<li>
						<a class="sub" href="product.aspx">产品中心</a>
						<ul>
							<li><a href="product.aspx?productColumnId=13">PVC热收缩膜</a></li>
						</ul>
					</li>
					<li><a href="news.aspx?newsColumnId=12">供求信息</a></li>
					<li><a href="feedback.aspx">用户留言</a></li>
					<li><a href="contact.aspx">联系我们</a></li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
	</div><!--header end-->
	
	<div class="banner"></div>
	
	<div class="content">
		<div class="container">
			
			<div class="f-l span270">
				<div class="sidebar">
					<div class="title"><h2 class="f-l">产品分类</h2></div>
					<div class="sort">
						<ul>
                            <asp:Repeater runat="server" ID="leftPObjlist" >
                                <ItemTemplate>                         
                                    <%--<li><a href="list.aspx?categoryId=<%# Eval("news_p_id") %>"><%# Eval("news_p_name") %></a></li>--%>
                                    <li><a href="product.aspx?categoryId=<%# Eval("id") %>"><%# Eval("name") %></a></li>
                                </ItemTemplate> 
                            </asp:Repeater>
							
						</ul>
					</div>
				</div>
				
				<div class="m-b"></div>
				
				<div class="sidebar">
					<div class="title"><h2 class="f-l">行业动态</h2><a class="f-r more" href="news.aspx?newsId=9">更多>></a></div>
					<div class="newslist">
						<ul>
                            <asp:Repeater runat="server" ID="leftNewsObjlist" >
                                <ItemTemplate>                         
                                    <%--<li><a href="list.aspx?categoryId=<%# Eval("news_p_id") %>"><%# Eval("news_p_name") %></a></li>--%>
                                    <li><a href="news_detail.aspx?newsId=<%# Eval("id") %>"><%# Eval("title") %></a></li>
                                </ItemTemplate> 
                            </asp:Repeater>
						</ul>
					</div>
				</div>
				
				<div class="m-b"></div>
				
				<div class="sidebar">
					<div class="title"><h2 class="f-l">联系方式</h2></div>
					<div class="contactlist">
						<%--<p>****有限公司<br />地 址：江苏省张家港市福新路***号<br />电 话：0512 - 5888****<br />传 真：0512 - 5888****<br />手机：139********</p>--%>
                        <p><%=semester_final.index.cName %><br />地 址：<%=semester_final.index.cAddress %><br />电 话：<%=semester_final.index.cPhone %><br />传 真：<%=semester_final.index.cFax %><br />手机：<%=semester_final.index.contactPhone %></p>
					</div>
				</div>
				
			</div><!--span270 end-->
			
			<div class="f-r span658">
				<div class="titlebox"><h2 class="f-l">公司介绍</h2><a class="f-r" href="about.aspx">更多>></a></div>
				<div class="about">
					<%--<img class="f-l" src="images/21sdf.jpg" width="206" height="136" alt="公司介绍" />--%>
                    <%=semester_final.index.cState %>
				</div>
				<div class="titlebox"><h2 class="f-l">推荐产品</h2><a class="f-r" href="product.aspx">更多>></a></div>
				<div class="scrollbox">
					<ul class="clearfix">
                    <asp:Repeater runat="server" ID="programObj" >
                        <ItemTemplate>
						    <li>
							    <a href="product_detail.aspx?productId=<%# Eval("id") %>"><img src="./admin/upload_images/<%# Eval("photo_url") %>" width="150" height="136" alt="PVC热收缩膜" /></a>
							    <span><a href="product_detail.aspx?productId=<%# Eval("id") %>"><%# Eval("title") %></a></span>
						    </li>
						</ItemTemplate>
                    </asp:Repeater>
					</ul>
				</div>
				
				<script type="text/javascript" src="js/Marquee.js"></script>
				<script type="text/javascript">
				    $(function () {
				        $('.scrollbox').kxbdSuperMarquee({
				            isMarquee: true,
				            isEqual: false,
				            scrollDelay: 15,
				            direction: 'left'
				        });
				    });
				</script>	
				
			</div><!--span658 end-->
			
			<div class="clear"></div>
			
			<div class="blank20"></div>
			
		</div>
	</div><!--content end-->
	
	<div class="footer">
		<div class="container">
			<div class="btmnav"><a href="index.aspx">首页</a><span>|</span><a href="about.aspx">公司简介</a><span>|</span><a href="news.aspx?newsId=9">行业动态</a><span>|</span><a href="product.aspx">产品中心</a><span>|</span><a href="news.aspx?newsColumnId=12">供求信息</a><span>|</span><a href="feedback.aspx">用户留言</a><span>|</span><a href="contact.aspx">联系我们</a></div>
			<p>地址：<%=semester_final.index.cAddress %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：<%=semester_final.index.cPhone %><br /></p>
		</div>
	</div><!--footer end-->
	
    </form>
</body>
</html>
