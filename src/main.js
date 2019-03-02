import Vue from 'vue';
import App from './App.vue';
import router from './router';
import ElementUI from 'element-ui/node_modules/element-ui';
import 'element-ui/node_modules/element-ui/lib/theme-chalk/index.css';
import VueLazyload from 'vue-lazyload';
//使用懒加载组件
Vue.use(VueLazyload);
Vue.use(ElementUI);
//2:引入 animate库样式文件
//import "../css/news.css";
import animated from './animate.css';
import '../public/css/news.css';
import '../public/css/news_details.css';
import '../public/css/event.css';
import '../public/css/hero.css';
import '../public/css/media.css';
import '../public/css/herodetails.css';
import '../public/css/game.css';
import '../public/css/home.css';
//2:引入 mui库样式文件
/*import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'*/
//3:引入mint-ui 组件 Header
//import {Header,Swipe,SwipeItem,Button} from "mint-ui"
//4:注册Header组件
//Vue.component(Header.name,Header);
//Vue.component(Swipe.name,Swipe);
//Vue.component(SwipeItem.name,SwipeItem);
//Vue.component(Button.name,Button);
//5:引入 axios库 
import axios from "axios"
//6:配置跨域访问保存session
axios.defaults.withCredentials=true;
//7:将axios库配置Vue实例对象中
Vue.prototype.axios = axios;
//7.1加载第三方模块 qs
import qs from "qs";
//7.2配置qs模块
Vue.prototype.qs=qs;
//8.main.js 创建日期过滤器
Vue.filter("datetimeFilter",function(val){
  //8.1：创建日期对象
  var date=new Date(val);
  //8.2：获取年、月、日、时、分、秒
  var y=date.getFullYear();    //年
  var m=date.getMonth()+1;     //月 0-11
  var d=date.getDate();        //日
  var h=date.getHours();       //时
  var mi=date.getMinutes();    //分
  var s=date.getSeconds();     //秒
  //8.3：返回字符串y-m-d h:mi:s
  m>=10 || (m="0"+m);
  d<10 && (d="0"+d);
  return `${y}-${m}-${d} ${h}:${mi}:${s}`
});
new Vue({
  router,
  render: h => h(App),
}).$mount('#app')
