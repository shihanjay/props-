<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://unpkg.com/vue@next"></script>

</head>
<body>
<div id="app">
<p>總金額共{{subtotalMethods()}}元</p>
<p>總金額共{{subtotalMethods()}}元</p>
<p>總金額共{{subtotalMethods()}}元</p>
</div>
<script>
           
const vm=Vue.createApp({
	data () {
		return {
			quantity:100,
			price:100
		}
	},
	methods:{
		subtotalMethods:function(){
		//console.log('methods');
			alert('methods');
			return this.quantity * this.price;
		}
	}
	
}).mount('#app');


</script>
</body>
</html>