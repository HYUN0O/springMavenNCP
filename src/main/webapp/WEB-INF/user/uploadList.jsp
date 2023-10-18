<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
table {
	border-collapse: collapse;
}
th, td {
	padding: 5px;
}
#uploadForm div {
	color: red;
	font-size: 8pt;
	font-weight: bold;
}
</style>
</head>
<body>
<table id="imageListTable" border="1" frame="hsides" rules="rows">
	<tr>
		<th width="100">번호</th>
		<th width="100">이미지</th>
		<th width="100">상품명</th>
	</tr>
	
	<!-- 동적처리 -->
</table>

<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript" src="../js/uploadList.js"></script>
</body>
</html>