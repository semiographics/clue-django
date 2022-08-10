// first-vue.js
<script src="https://unpkg.com/vue@3"></script>
// import main from './main.js'

const app = Vue.createApp({
  data() {
    return {
      count: 0,
      rawHtml: '<div id="app">Monkey Sex</div>'
    }
  }
})
app.mount('#app')
