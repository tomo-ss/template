<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MyPage画面</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
	text-align: center;
}

#top {
	width: 780px;
	margin: 30px auto;
}

.item-info {
	display: inline-block;
	text-align: left;
	margin: 20px auto;
}

.item-info p {
	margin: 10px 0;
	font-weight: bold;
}

.form-area {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
}

#header, #footer {
	width: 100%;
	height: 80px;
	background-color: black;
}

#main {
	width: 100%;
	min-height: 500px;
}
</style>
</head>
<body>
	<div id="header"></div>

	<div id="main">
		<div id="top">
			<p>MyPage</p>
		</div>

		<s:if test="session.message == ''">
			<h3>ご購入情報は以下になります。</h3>
			<div class="item-info">
				<p>
					商品名：
					<s:property value="session.buyItem_name" />
				</p>
				<p>
					値段：
					<s:property value="session.total_price" />
					円
				</p>
				<p>
					購入個数：
					<s:property value="session.total_count" />
					個
				</p>
				<p>
					支払い方法：
					<s:property value="session.total_payment" />
				</p>
			</div>
			<div class="form-area">
				<s:form action="MyPageAction">
					<s:hidden name="deleteFlg" value="1" />
					<s:submit value="削除" />
				</s:form>
			</div>
		</s:if>

		<s:if test="session.message != null && session.message != ''">
			<h3>
				<s:property value="session.message" />
			</h3>
		</s:if>

		<br /> <span>前画面に戻る場合は</span> <a href='<s:url action="HomeAction" />'>ログアウト</a>
		<span>をお願いします</span>
	</div>

	<div id="footer"></div>
</body>
</html>