import Vue from 'vue'
import Router from 'vue-router'
/*import news from './components/news/news.vue'
import newsDetails from './components/news/newsDetails.vue'
import media from "./components/media/media.vue"
import expt from "./components/exports/index.vue"
import exptcom from "./components/exptcommit/community.vue"
import game from "./components/game/game.vue"
import home from "./components/home/home.vue"
import herodel from "./components/heroes/herodetails.vue"
import hero from "./components/heroes/hero.vue"
import event from "./components/event/event.vue"*/
lal: () => import('./components/lal/lal.vue')
news: () => import('./components/news/news.vue')
newsDetails: () => import('./components/news/newsDetails.vue')
media: () => import('./components/media/media.vue')
// expt: () => import('./components/exports/index.vue')
// exptcom: () => import('./components/exptcommit/community.vue')
game: () => import('./components/game/game.vue')
home: () => import('./components/home/home.vue')
herodel: () => import('./components/heroes/herodetails.vue')
hero: () => import('./components/heroes/hero.vue')
event: () => import('./components/event/event.vue')
login: () => import('./components/user/login.vue')
register: () => import('./components/user/register.vue')
//import hedel from "./components/heroes/herodetails.vue"

/*import Home from "./components/tabbar/Home.vue"
import NewsList from "./components/home/NewsList.vue"
import NewsInfo from "./components/home/NewsInfo.vue"
import GoodList from "./components/goods/GoodList.vue"
import GoodInfo from "./components/goods/GoodInfo.vue"
import Login from "./components/home/Login.vue"
import ShopCart from "./components/home/ShopCart.vue"
*/
Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',redirect:'/home'},
    {path:'/login',component:resolve=>require(['@/components/user/login.vue'],resolve)},
    {path:'/register',component:resolve=>require(['@/components/user/register.vue'],resolve)},
    {path:'/lal',component:resolve=>require(['@/components/lal/lal.vue'],resolve)},
    {path:'/herodel',component:resolve=>require(['@/components/heroes/herodetails.vue'],resolve)},
    {path:'/home',component:resolve=>require(['@/components/home/home.vue'],resolve)},
    {path:'/event',component:resolve=>require(['@/components/event/event.vue'],resolve)},
    {path:'/game',component:resolve=>require(['@/components/game/game.vue'],resolve)},
    {path:'/hero',component:resolve=>require(['@/components/heroes/hero.vue'],resolve)},
    // {path:'/exports',component:resolve=>require(['@/components/exports/index.vue'],resolve)},
    // {path:'/community',component:resolve=>require(['@/components/exptcommit/community.vue'],resolve)},
    {path:'/news',component:resolve=>require(['@/components/news/news.vue'],resolve)},
    {path:'/newsDetails',component:resolve=>require(['@/components/news/newsDetails.vue'],resolve)},
    {path:'/media',component:resolve=>require(['@/components/media/media.vue'],resolve)},
    
    /*{path:'/',redirect:'/Home'},
    {path:'/List',component:List},
    {path:'/Home',component:Home},
    {path:'/NewsList',component:NewsList},
    {path:'/NewsInfo',component:NewsInfo},
    {path:'/GoodList',component:GoodList},
    {path:'/GoodInfo',component:GoodInfo},
    {path:'/Login',component:Login},
    {path:'/ShopCart',component:ShopCart}*/
  ]
})