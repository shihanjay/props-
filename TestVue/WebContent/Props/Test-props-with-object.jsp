<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="app">
       <!-- :key="book.name" -->
    <ul v-for="book in books" class="book"  >
      <li>{{ book.name }}</li>
      <li>{{ book.author }}</li>
      <li>{{ book.publishedAt }}</li>
    </ul>

    <hr>
  <!-- :key="book.id" -->
    <my-component
      v-for="book in books"
      :book-info="book" />
  </div>
  
 <script src="https://unpkg.com/vue@next"></script>

  <script>
    const app = Vue.createApp({
      data() {
        return {
          books: [
            {
              name: '0 陷阱！0 誤解！8 天重新認識 JavaScript！',
              author: 'Kuro Hsu',
              publishedAt: '2019/09'
            },
            {
              name: '重新認識 Vue.js',
              author: 'Kuro Hsu',
              publishedAt: '2021/02'
            },
          ]
        }
      }
    });

    app.component('my-component', {
      props:{
    	 bookInfo:{
    		 type:Object
    	 }  
      },
      template: `
        <div class="child-app">
          <div>書名: <input type="text" v-model="bookInfo.name"></div>
          <div>作者: <input type="text" v-model="bookInfo.author"></div>
          <div>出版日: <input type="text" v-model="bookInfo.publishedAt"></div>
        </div>`,
     
    });

    app.mount('#app');
  </script>
  
 
</body>
</html>