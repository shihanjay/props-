<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://unpkg.com/vue@next"></script>
<script type="module">
const vm=Vue.createApp({
	data () {
		return {
			selected:''
            
		}
	}
});

vm.mount('#app');

</script>
</head>
<body>
<div id="app">
<select v-model="selected">
<option disabled value="">請選擇</option>
<option value="台北市">台北市</option>
<option value="新北市">新北市</option>
<option value="基隆市">基隆市</option>
</select> 
<p>Selected:{{selected || '未選擇'}}</p>

</div>

</body>
</html>