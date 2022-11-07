<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://unpkg.com/vue@next"></script>
<script type="module">
           
const app=Vue.createApp({
   data(){
     return {
         msg:'這是外層元件msg'
      }
   }
});

app.component('my-component',{
	template:'<div>Hello Vue 3.x!</div>'
});



app.mount('#app');
</script>
</head>
<body>
<div id="app">
{{msg}}
<my-component></my-component>
<my-component></my-component>

</div>


</body>
</html>