// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import Vuetify from 'vuetify'
import ElementUI from 'element-ui'
import './assets/demo.css'
import './assets/iconfont.css'
// import './assets/material-icons.css'
import 'material-design-icons/iconfont/material-icons.css'
import 'element-ui/lib/theme-chalk/index.css'
import 'vuetify/dist/vuetify.css'
import util from './util/util.js'
import config from './config/config.js'
import axios from 'axios'

Vue.use(Vuetify)
Vue.use(ElementUI)
Vue.use(util)
Vue.use(config)

Vue.config.productionTip = false

axios.defaults.baseURL = 'http://10.61.1.27:8008/api'   // 生产
Vue.prototype.axios = axios
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  template: '<App/>',
  components: { App }
})
