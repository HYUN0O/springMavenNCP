
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<form id="uploadForm">
	<table border="1">
		<tr>
			<th>��ǰ��</th>
			<td>
				<input type="text" name="imageName" id="imageName" size="35">
				<div id="imageNameDiv"></div>
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<textarea name="imageContent" id="imageContent" rows="10" cols="50"></textarea>
				<div id="imageContentDiv"></div>
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<span id="showImgList"></span>
				
				<img id="camera" src="../image/camera.jpg" width="30" height="30" alt="ī�޶�">
				<input type="file" name="img[]" id="img" multiple="multiple" style="visibility: hidden;">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="�̹��� ���ε�" id="uploadBtn">
				<input type="reset" value="���">
			</td>
		</tr>
	</table>
	<br>
	
	<div id="resultDiv"></div>
</form>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript" src="../js/upload.js"></script>
<script type="text/javascript">
$('#camera').click(function(){
	$('#img').trigger('click');//���� �̺�Ʈ �߻�
});

/* ���� ���� �̹��� �̸����� */
 $('#img').change(function(){
	 $('#showImgList').empty();
	 for(i = 0; i < this.files.length; i++){
		 readURL(this.files[i]);
	 }
 });
 
/* �������� �̹��� �̸����� */
function readURL(file) {
	var reader = new FileReader();
	
	var show;
	reader.onload = function(e){
		var img = document.createElement('img');
		img.src = e.target.result;
		img.width = 70;
		img.height = 70;
		$('#showImgList').append(img);
	}
	reader.readAsDataURL(file)
}
</script>
</body>
</html>