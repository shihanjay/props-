<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>

<body>
<div id="app">
{{ msg }}
<!-- {{ momo }} -->

 <my-component v-bind:parent-msg="msg"></my-component> 

</div>

<script src="https://unpkg.com/vue@next"></script>
<script >
           
const app=Vue.createApp({
   data (){
     return {
         msg:'這是外層元件msg'
      }
   }
});

app.component('my-component', {
    template: `
      <div class="component">
        <div> 從 props 來的 parentMsg ==> {{ parentMsg }} </div>
        <div> 自己的 msg ==> {{ msg }} </div>
      </div>`,
       props: ['parentMsg'],
    data: () => {
      return {
        msg: '這是子元件的 msg'
      }
    }
  });

app.mount('#app');

</script>
</body>
</html>