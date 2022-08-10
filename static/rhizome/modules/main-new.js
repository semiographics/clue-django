import { createApp } from 'vue'
import { createPinia } from 'pinia'

// import Rhizomatic from './Rhizomatic.vue'
import router from './router'
import sqCanvas from './sqCanvas.js'

const app = createApp(sqCanvas)

app.use(createPinia())
app.use(router)

app.mount('#app')
