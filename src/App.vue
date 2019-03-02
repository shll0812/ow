<template>
 <div class="app-container">
    <div class="myheader">
    <div class="nav">
        <div class="navbar">
            <div class="main">
                <div class="nav-left">
                    <a href="#" class="nav-logo" @click="jump_home"></a>
                </div>
                <ul class="nav-main">
                    <li class="dropdown">
                        <a href="#" class="nav-btn " >游戏</a>
                    </li>
                    <li><a href="#" class="nav-btn" @click="jump_hero">英雄</a></li>
                    <li class="dropdown">
                        <a href="#" class="nav-btn ">活动</a>
                    </li>
                    <li><a href="#" class="nav-btn" @click="jump_media">视频图片</a></li>
                    <li class="dropdown">
                        <a href="#" class="nav-btn " >新闻</a>
                    </li>
                    <li><a href="#" class="nav-btn">电子竞技</a></li>
                    <li><a href="#" class="nav-btn">社区</a></li>
                    <li class="dropdown">
                        <a href="#" class="nav-btn">团队</a>
                    </li>
                </ul>
                <div class="nav-right">
                    <div class="nav-btn"@click="dropdown">你的通行证</div>
                    <div style="position: relative;" v-show="i==1">
                        <div class="login">
                            <div class="login-b">
                                <a href="#" class="login-login">登陆</a>
                            </div>
                            <div>
                                <a href="#" class="login-a">
                                    <div class="login-logo"></div>
                                    <div>注册</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div> 
    <router-view></router-view>
    <div class="myfooter">
            <div id="footer">
        <div class="footerWrap">
            <div class="support-feedback clearFix">
                <div class="cs">
                    <a class="cs-online" target="_blank" href="javascript:#">
                        <span class="icon icon-1"></span> 在线客服
                    </a>
                    <a class="cs-Feedback" target="_blank" href="javascript:#">
                        <span class="icon icon-2"></span> 反馈
                    </a>
                    <a target="_blank" class="cs-joinUs" href="javascript:#">
                        <span class="icon icon-3"></span>加入我们
                    </a>
                </div>
            </div>
            <div class="cprt">
                <a target="_blank" href="javascript:#"class="logo_bz"></a>
                <a target="_blank" href="javascript:#" class="logo_ne"></a>
                <div class="info">
                <ul class="f-cb">
                   <li><a target="_blank" href="javascript:#">隐私</a>|</li>
                   <li><a target="_blank" href="javascript:#">法律条款</a>|</li>
                   <li><a target="_blank" href="javascript:#" tppabs="https://dev.battle.net/">API</a></li>
                </ul>
                <p>&copy;2017 暴雪娱乐有限公司版权所有 <span class="t1">由上海网之易网络科技发展有限公司运营<a href="javascript:#" target="_blank" style="color: rgba(255,255,255,0.7)"> 著作权侵权</a></span>&nbsp;新广出审[2016]378号&nbsp;文网游进字[2016]0025号&nbsp;</p>
                <p><a href="javascript:#"  target="_blank" style="color: rgba(255,255,255,0.7)">沪网文〔2017〕9633-727号</a>&nbsp;<a href="javascript:#"  target="_blank" style="color: rgba(255,255,255,0.7)">增值电信业务经营许可证编号：沪B2－20080012</a>&nbsp;互联网违法和不良信息举报电话：0571-28090163</p>
                <p class="integrity">
                    <a href="javascript:#"target="_blank"><img src="img/lsh/img/police.png" ></a>
                    <a href="javascript:#" target="_blank"><img src="img/lsh/img/zx110.png" ></a>
                    <a href="javascript:#"  target="_blank"><img src="img/lsh/img/sgs-icon.png"></a>
                    <a href="javascript:#" target="_blank"><img src="img/lsh/img/icon20120516.png"></a>
                    <!--<span>| &nbsp;适龄提示：适合13岁及以上使用&nbsp;&nbsp;</span>
                    <a href="https://www.battlenet.com.cn/support/zh/article/280" target="_blank">家长监护工程></a>-->
                </p>
            </div>
            </div>
            <p class="tips">积极健康的游戏心态是健康游戏的开端，本游戏故事情节设置紧凑，请您合理控制游戏时间，避免沉溺游戏影响生活，注意自我保护，防范网络陷阱。
                <br>健康游戏忠告：抵制不良游戏，拒绝盗版游戏。注意自我保护，谨防受骗上当。适度游戏益脑，沉迷游戏伤身。合理安排时间，享受健康生活。</p>
        </div>
    </div>
    </div> 
 </div>
</template>
<script>
export default {
    data(){
        return{
          i:2
        }
    },
    mounted() {
        window.addEventListener('scroll', this.handleScroll)
    },
    methods: {
        dropdown(){
            if(this.i==1){
                this.i+=1;
            }else{
                this.i-=1;
            }
        },
        handleScroll () {
            var stop=this.scroll = document.documentElement.scrollTop;
            var navbar=document.querySelector(".navbar");
            var nav=document.querySelector(".nav");
            if(stop>=100){
                nav.style.top="0";
                navbar.style.margin="0";
            }else{
                nav.style.top="25px";
                navbar.style.margin="15px 20px 0";
            }
        },
        jump_home(){
            this.$router.push("/home");
        },
        jump_game(){
            this.$router.push("/game");
        },
        jump_hero(){
            this.$router.push("/hero");
        },
        jump_event(){
            this.$router.push("/vent");
        },
        jump_media(){
            this.$router.push("/media");
        },
        jump_news(){
            this.$router.push("/news");
        },
        jump_exports(){
            this.$router.push("/exports");
        },
        jump_commit(){
            this.$router.push("/community")
        }
    },
}
</script>
<style>
*{
    margin:0;
    padding:0;
}
ul{
    line-height: 1.4;
    list-style:none;
}
a{
    text-decoration:none;
}
a:hover{
    text-decoration:none;
}
.nav{
    position:fixed;
    width: 100%;
    display: block;
    z-index: 97;
    top:25px;
    transition:.3s;
}
.login{
    position: absolute;
    background: radial-gradient(ellipse farthest-side at center top,#283244 0,rgba(21,26,35,.95) 100%);
    border: 1px solid rgba(255,255,255,.15);
    width: 177px;
    left:0;
}
.login-login{
    display: inline-block;
    position: relative;
    background-color: #0e86ca;
    border: 1px solid #00aeff;
    font-size: 16px;
    color: #fff;
    padding:10px 50px;
    text-decoration: none;
    text-align: center;
    width:60px;
    transition:.5s
}
.login-login:hover{
    background-color: #00aeff;
}
.login-logo{
    background-image: url(../public/img/lsh/img/icon-sprite.png);
    background-position: -198px -16px;
    width: 31px;
    height: 23px;
}
.login-a{
    display:flex;
    padding: 0 20px;
    height: 44px;
    line-height: 44px;
    font-size: 16px;
    text-decoration: none;
    color: rgba(255,255,255,.7);
    transition: color .2s,background-color .2s;
    align-items: center;
    border-top: solid 1px rgba(255,255,255,.08);
}
.login-a:hover{
    color:#fff;
}
.login-b{
    width:100%;
    padding:8px;
}
.nav>::after{
    content: '';
    display: block;
    height: 0;
    clear: both;
}
.navbar{
    background-color: rgba(40,53,79,.9);
    margin:15px 20px 0;
    transition:.3s;
}
.main{
    position: relative;
}
.nav-left{
    float: left;
}
.nav-logo{
    background-repeat: no-repeat;
    background-position: center center;
    display: inline-block;
    width: 245px;
    height: 62px;
    background-image:url(../public/img/lsh/img/nav-logo-sm.png);
    margin-top:6px;
}
.nav-main{
    float:left;
}
.nav-main>li{
    display:inline-block;
    height: 100%;
    position: relative;
}
.active{
    background-color:rgba(31,118,188,.2);
}
.active::after{
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 75%;
    opacity: .2;
    background: -webkit-linear-gradient(top,rgba(60,209,255,0) 0,#3cd1ff 100%);
    background: linear-gradient(to bottom,rgba(60,209,255,0) 0,#3cd1ff 100%);
}
.active::before{
    content: '';
    position: absolute;
    bottom:0;
    left: 0;
    width: 100%;
    height: 1px;
    background-color: #00c3ff;
    box-shadow: 0px 0px 20px #00c3ff;
}
.nav-main>li:hover{
    background-color:rgba(138, 143, 150, 0.212);

    
}
.nav-btn{
    display:inline-block;
    padding: 24px 14px 22px;
    color: rgba(255,255,255,.85);
    width:100px;
    text-align: center;
    font-size:20px;
}
.nav-btn:hover{
    color:#fff;
}
.has::after{
    content: "";
    background-image: url(../public/img/lsh/img/caret-gray.png);
    width: 12px;
    height: 7px;
    display: inline-block;
    margin: 0 0 2px 8px;
    transform: rotate(0);
}
.as{
    background-color:rgba(138, 143, 150, 0.212);
}
.as::after{
    content: "";
    background-image: url(../public/img/lsh/img/caret-gray.png);
    width: 12px;
    height: 7px;
    display: inline-block;
    margin: 0 0 2px 8px;
    transform: rotate(180deg);
}
.nav-right{
    float:right;
}
.nav-right>.nav-btn{
    background-color:#f0a608;
    display:inline-block;
    width:150px;
    text-align: center;
    border:0;
}
.nav-border{
    height: 2px;
    background-color: rgba(0,0,0,.25);
    position: absolute;
    width: 100%;
    bottom: -2px;
}
.nav-dropdown{
    background-color: rgba(40,53,79,.9);
    position: absolute;
    top: 100%;
    width:150px;

}
.nav-menu{
    text-align: left;
    display:inline-block;
    width:100%;
    font-weight: 100;
    font-size: 13px;
    color:rgba(255,255,255,.85);
    position: relative;
    padding:15px 8px;
}
.nav-menu:hover{
    color:rgb(255, 255, 255);
}
.nav-menu::before{
    content:"";
    display: block;
    position: absolute;
    height:48px;
    background:-webkit-linear-gradient(right,rgba(60,209,255,0) 0,#3cd1ff3f 100%);
    left: 0;
    bottom:0;
    width:0;
    transition: .5s
}
.nav-menu:hover:before{
    width:100%;
}

@media  screen and (max-width:1530px){
    .nav-logo{    
        width:58px;
        height:58px;
        background-image:url("../public/img/lsh/img/nav-logo-condensed.png")}
    .nav{
        width:100%
    }
    .nav-btn{
        width:auto;
        font-size:13px;
    }
    .nav a{
        line-height: 1;
        letter-spacing: .05em;
        font-size:13px;
    }
    .nav-right>a{
        width:56px
    }
    .nav-left{
        height:58px
    }
    .nav-main ul a{
        font-size:12px; 
    }
    .nav-menu::before{
        height:42px;
    }
    .nav-logo{
        margin-top:0;
    }
    .nav-right>.nav-btn{
        padding-top:21px;
        padding-bottom:21px;
    }
}

/***************************************** */
myfooter {
    margin: 0;
    padding: 0;
    font: 14px/1.5 'Microsoft Yahei','Arial','sans-serif';
}
 #footer {
    background: #102e56;
}
#footer {
    position: relative;
    font-size: 12px;
    width: auto;
    margin: 0;
}
#footer .footerWrap {
    border-top: 1px solid rgba(34,117,187,0.5);
}
#footer .footerWrap {
    padding: 40px 0;
}
#footer .support-feedback {
    max-width: 1200px;
    margin: 0 auto 10px;
    color: #ccc;
    font-size: 14px;
}
#footer .cs {
    float: left;
}
#footer .cs a {
    color: #ccc;
}
#footer .footerWrap a {
    text-decoration: none;
    color:#fff;
}
.cs .cs-online {
    margin-right: 37px;
}
.cs .cs-Feedback {
    margin-right: 37px;
}
a {
    outline: none;
}
.support-feedback .icon-1 {
    background-position: -96px 0;
}
.support-feedback .icon-1, .support-feedback .icon-2, .support-feedback .icon-3{
    display: inline-block;
    height: 24px;
    margin-right: 7px;
    position: relative;
    top: 5px;
    width: 24px;
}
.support-feedback .icon {
    background-image: url(../public/img/lsh/img/sprite-24-blue.png);
    background-repeat: no-repeat;
    background-size: auto;
}
.support-feedback .icon-2 {
    background-position: -144px -24px;
    top: 6px;
}
.support-feedback .icon-3 {
    background-position: -24px -119px;
    top: 4px;
}
.cs a{
    color:#fff;
}
.clearFix:after {
    clear: both;
    content: ".";
    display: block;
    height: 0;
    visibility: hidden;
}
#footer .cprt {
    max-width: 1200px;
    margin: 50px auto 8px;
    padding: 0 0 30px;
    border-bottom: 1px solid #184f85;;
}
#footer .logo_bz {
    display: inline-block;
    overflow: hidden;
    width: 140px;
    height: 80px;
    vertical-align: middle;
    /*background: url(../public/img/lsh/img/blizzard.png) no-repeat 0 0;*/
}
#footer .logo_ne {
    display: inline-block;
    overflow: hidden;
    width: 105px;
    height: 33px;
    margin: 34px 0 0 20px;
    vertical-align: middle;
    background: url(../public/img/lsh/img/logo_ne.png) no-repeat 0 0;
}
#footer .cprt .info {
    position: relative;
    display: inline-block;
    padding: 20px 0 0 10%;
    text-align: left;
    vertical-align: middle;
    color: rgba(255,255,255,0.7);

}
ul, menu, dir {
    -webkit-padding-start: 0;
}
#footer .cprt .info ul li {
    color: #ccc;
    display: inline-block;
    font-size: 14px;
    padding-right: 10px;
}
ul li, .xl li {
    list-style: none;
}
#footer .cprt .info ul li a {
    color: rgba(255,255,255,0.7);
    padding-right: 10px;
}
#footer .integrity {
    padding-top:15px;;
}
#footer .integrity a {
    margin-right: 5px;
}
#footer .tips {
    text-align: center;
    color: rgba(255,255,255,0.3);
}
ul,p{
    margin:0
}
</style>
