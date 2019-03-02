<template>
    <div class="app-event">
        <div class="cont">
            <!-- 头部视频播放模态框 -->
                <div class="mtkbg1">
                    <div class="mtk_bg">
                        <!-- 头部视频模态框 -->
                        <div class="mtkbg1_2">
                            <div class="head">
                                <div class="title">《守望先锋》：夏季运动会</div>
                            </div>
                            <div class="content">
                                <video src="img/event_img/1_OverWatch_OVR_2018-SummerGames_zhCN_YT.mp4.mp4" controls preload="auto"></video>
                            </div>
                            <a href="javascript:;" @click="getclose">关闭</a>
                        </div>
                        <!-- 皮肤模态框 -->
                        <div class="mtkbg2_2 mtkbg1_2">
                            <div class="head">
                                <div class="title"></div>
                                <div class="event_num"></div>
                            </div>
                            <a href="javascript:;" @click="getpifu_close">关闭</a>
                            <div class="event_img"><img src="img/event_img/pifu/pifu-1.png"></div>
                            <div class="control">
                                <a href="javascript:;" class="prev" @click="getprev1"></a>
                                <a href="javascript:;" class="next" @click="getnext1"></a>
                            </div>
                        </div>
                        <!-- 特写模态框 -->
                        <div class="mtkbg3_2 mtkbg1_2">
                            <div class="head">
                                <div class="title"></div>
                                <div class="event_num"></div>
                            </div>
                            <a href="javascript:;" @click="getbiaoqing_close">关闭</a>
                            <div class="event_video">
                                <video src="" controls preload="auto" autoplay></video>
                            </div>
                            <div class="control">
                                <a href="javascript:;" class="prev" @click="getprev2"></a>
                                <a href="javascript:;" class="next" @click="getnext2"></a>
                            </div>
                        </div>
                        <!-- 表情模态框 -->
                        <div class="mtkbg4_2 mtkbg1_2">
                            <div class="head">
                                <div class="title"></div>
                                <div class="event_num"></div>
                            </div>
                            <a href="javascript:;" @click="getbiaoqing_close">关闭</a>
                            <div class="event_video">
                                <video src="" controls preload="auto" autoplay></video>
                            </div>
                            <div class="control">
                                <a href="javascript:;" class="prev" @click="getprev3"></a>
                                <a href="javascript:;" class="next" @click="getnext3"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 头部 -->
                <div class="event1">
                    <div class="event1_left">
                        <img src="img/event_img/1_assets_img_pages_events_summer-games-2018_sg-logo-cn.png">
                        <h2>8月10日 - 8月31日</h2>
                        <a  target="_black" href="https://shop.battlenet.com.cn/zh-cn/product/overwatch-credits">购买补给</a>
                    </div>
                    <div class="event1_right">
                      <img src="img/event_img/1_assets_img_pages_events_summer-games-2018_characters-desktop.png">
                    </div>
                    <a href="javascript:;" @click="getplay"><img src="img/event_img/1_assets_img_pages_events_summer-games-2018_play-button.png"></a>
                </div>
                <div class="event2">
                    <div class="event2_center">
                        <h2>夏季运动会来了</h2>
                        <p class="event2_p1">最火热的运动盛会将带来更多的趣味华丽回归！今年，我们将以焕然一新的动感斗球竞技场，以及一系列丰厚奖励来欢庆竞技精神。解锁超过50种全新赛季物品，包括D.Va的破浪者皮肤、禅雅塔的高速直球皮肤、安娜的卡巴那等传奇皮肤，以及去年夏季运动会所有广受喜爱的装备。</p>
                        <p class="event2_p2"><a href="javascript:;" @click="getmore">更多信息</a></p>
                    </div>
                </div>
                <div class="event3">
                    <div class="event3_cont">
                        <div class="event3_container">
                            <div class="event_colum">
                                <h2>动感斗球</h2>
                                <h4>运动起来！</h4>
                                <p>如果没有体育竞技，就不能算是真正的运动会。所以动感斗球将再度回归，而且比以前更好玩！这项充满未来感的足球运动将带你进入快节奏的3v3竞技场展开角逐，包括全新的釜山体育场。</p>
                                <p>玩家可以选择两种模式：动感斗球或动感斗球杯。杯赛中的定级赛、竞技等级、排行榜、竞技点数、喷漆、头像等设计将为你带来更刺激的竞技体验。</p>
                            </div>
                        </div>
                    </div>
                    <!-- 手风琴部分 -->
                    <ul class="event3_sfq">
                        <li class="sfq1 sfq_w66" @mouseenter="getsfq1_enter" @mouseleave="getsfq1_leave()">
                            <div class="event3_zzc"></div>
                            <div class="intro opacity">
                                <h2>韩国釜山</h2>
                                <h6>动感斗球的选手们可以在位于世界各地的炫酷竞技场中展开巅峰对决。</h6>
                            </div>
                        </li>
                        <li class="sfq2" @mouseenter="getsfq2_enter" @mouseleave="getsfq2_leave">
                            <div class="event3_zzc event3_zz"></div>
                            <span>
                                <img src="img/event_img/1_assets_img_pages_events_summer-games-2018_divider-circle.png">
                            </span>
                            <div class="intro">
                                <h2>悉尼海滩</h2>
                                <h6>动感斗球的选手们可以在位于世界各地的炫酷竞技场中展开巅峰对决。</h6>
                            </div>
                        </li>
                        <li class="sfq3" @mouseenter="getsfq3_enter" @mouseleave="getsfq3_leave">
                            <div class="event3_zzc event3_zz"></div>
                            <span>
                                <img src="img/event_img/1_assets_img_pages_events_summer-games-2018_divider-circle.png">
                            </span>
                            <div class="intro">
                                <h2>里约热内卢</h2>
                                <h6>动感斗球的选手们可以在位于世界各地的炫酷竞技场中展开巅峰对决。</h6>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="event4">
                    <div class="content">
                        <div class="content_1">
                            <h2>皮肤</h2>
                            <ul>
                                <li v-for="item in skin" @click="getpifu">
                                    <div class="bgt" :style="'background-image:url('+item.sm+')'">
                                        <div class="hover" :num="item.pid" :big="item.big"></div>
                                        <span v-if="item.isnew==1">全新</span>
                                        <div class="bg"><h3>{{item.title}}</h3></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="content_2">
                                <h2>特写</h2>
                                <ul>
                                    <li v-for="item in feature" @click ="gettexie">
                                        <div class="bgt" :style="'background-image:url('+item.sm+')'">
                                            <div class="hover" :num="item.pid" :mp4="item.mp4"></div>
                                            <span v-if="item.isnew==1">全新</span>
                                            <div class="bg"><h3>{{item.title}}</h3></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="content_3">
                                    <h2>表情</h2>
                                    <ul>
                                        <li v-for="item in phiz" @click="getbiaoqing">
                                            <div class="bgt" :style="'background-image:url('+item.sm+')'">
                                                <div class="hover" :num="item.pid" :mp4="item.mp4"></div>
                                                <span v-if="item.isnew==1">全新</span>
                                                <div class="bg"><h3>{{item.title}}</h3></div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                    </div>
                </div>
                <div class="event5">
                    <video src="img/event_img/event5_video.webm" muted  loop preload="auto" autoplay></video>
                    <div class="event5_container">
                        <h2>比赛开始啦</h2>
                        <div>
                            <p>活动一下筋骨，调高旋律音量，用塞满了皮肤、国旗头像、语音、表情、姿势等全新物品的夏季运动会补给来庆祝竞技的盛会！你还可以使用游戏货币，以优惠的价格购买去年夏季运动会的传奇皮肤。共计200余件个性化物品等你来拿，机会不容错过。</p>
                        </div>
                        <a  target="_black" href="https://shop.battlenet.com.cn/zh-cn/product/overwatch-credits">购买补给</a>
                    </div>
                </div>
        </div>
        <a href="javascript:;" id="gotop" @click="gettop">TOP</a>
    </div>
</template>
<script>
    export default {
        data(){
            return {
                skin:[],
                feature:[],
                phiz:[],
            }
        },
        methods:{
            gettop(){
                var a = document.getElementById("gotop");
                var t=setInterval(function(){
                        document.documentElement.scrollTop-=70;
                        document.body.scrollTop-=70;
                        if(document.documentElement.scrollTop<=0&&document.body.scrollTop<=0){
                            clearInterval(t);
                        }
                },20)
                
            },
            getpifu_close(){
                var mtkbg1 = document.querySelector(".mtkbg1");
                var mtkbg2_2 = document.querySelector(".mtkbg2_2");
                mtkbg2_2.style.top = "";
                mtkbg1.style.display = "none";
                mtkbg2_2.style.width = "1rem";
                mtkbg2_2.style.height = "1rem";
                mtkbg2_2.style.display = "none";
            },
            gettexie_close(){
                var mtkbg1 = document.querySelector(".mtkbg1");
                var mtkbg3_2 = document.querySelector(".mtkbg3_2");
                mtkbg3_2.style.top = "";
                mtkbg1.style.display = "none";
                mtkbg3_2.style.width = "1rem";
                mtkbg3_2.style.height = "1rem";
                mtkbg3_2.style.display = "none";
            },
            getbiaoqing_close(){
                var mtkbg1 = document.querySelector(".mtkbg1");
                var mtkbg4_2 = document.querySelector(".mtkbg4_2");
                mtkbg4_2.style.top = "";
                mtkbg1.style.display = "none";
                mtkbg4_2.style.width = "1rem";
                mtkbg4_2.style.height = "1rem";
                mtkbg4_2.style.display = "none";
            },
            getpifu(e){
                var tt = document.documentElement.scrollTop ||document.body.scrollTop;
                var mtkbg1 = document.querySelector(".mtkbg1");
                var pifu_li = document.querySelectorAll(".event4 .content_1 ul li");
                var mtkbg2_2 = document.querySelector(".mtkbg2_2");
                mtkbg1.style.display = "block";
                mtkbg2_2.style.display = "block";
                var pifu_title = e.target.parentElement.querySelector(".bg>h3");
                var pifumtk_title = document.querySelector(".mtkbg2_2 .head .title");
                pifumtk_title.innerHTML = pifu_title.innerHTML;
                var pifu_pid = e.target.getAttribute("num");
                var pifumtk_num = document.querySelector(".mtkbg2_2 .head .event_num");
                pifumtk_num.innerHTML = pifu_pid +"/28";
                var pifu_big = e.target.getAttribute("big");
                var pifumtk_big = document.querySelector(".mtkbg2_2 .event_img img");
                pifumtk_big.setAttribute("src",pifu_big);
                var  t = setTimeout(function(){
                    mtkbg2_2.style.top = tt + "px";
                    mtkbg2_2.style.width = "95rem";
                    mtkbg2_2.style.height = "58rem";
                },100)
            },
            gettexie(e){
                var tt = document.documentElement.scrollTop ||document.body.scrollTop;
                var mtkbg1 = document.querySelector(".mtkbg1");
                var pifu_li = document.querySelectorAll(".event4 .content_2 ul li");
                var mtkbg3_2 = document.querySelector(".mtkbg3_2");
                mtkbg1.style.display = "block";
                mtkbg3_2.style.display = "block";
                var pifu_title = e.target.parentElement.querySelector(".bg>h3");
                var pifumtk_title = document.querySelector(".mtkbg3_2 .head .title");
                pifumtk_title.innerHTML = pifu_title.innerHTML;
                var pifu_pid = e.target.getAttribute("num");
                var pifumtk_num = document.querySelector(".mtkbg3_2 .head .event_num");
                pifumtk_num.innerHTML = pifu_pid +"/7";
                var mp4 = e.target.getAttribute("mp4");
                var texiemtk_mp4 = document.querySelector(".mtkbg3_2 .event_video video");
                texiemtk_mp4.setAttribute("src",mp4);
                var  t = setTimeout(function(){
                    mtkbg3_2.style.top = tt + "px";
                    mtkbg3_2.style.width = "95rem";
                    mtkbg3_2.style.height = "58rem";
                },100)
            },
            getbiaoqing(e){
                var tt = document.documentElement.scrollTop ||document.body.scrollTop;
                var mtkbg1 = document.querySelector(".mtkbg1");
                var pifu_li = document.querySelectorAll(".event4 .content_3 ul li");
                var mtkbg4_2 = document.querySelector(".mtkbg4_2");
                mtkbg1.style.display = "block";
                mtkbg4_2.style.display = "block";
                var pifu_title = e.target.parentElement.querySelector(".bg>h3");
                var pifumtk_title = document.querySelector(".mtkbg4_2 .head .title");
                pifumtk_title.innerHTML = pifu_title.innerHTML;
                var pifu_pid = e.target.getAttribute("num");
                var pifumtk_num = document.querySelector(".mtkbg4_2 .head .event_num");
                pifumtk_num.innerHTML = pifu_pid +"/5";
                var mp4 = e.target.getAttribute("mp4");
                var biaoqingmtk_mp4 = document.querySelector(".mtkbg4_2 .event_video video");
                biaoqingmtk_mp4.setAttribute("src",mp4);
                var  t = setTimeout(function(){
                    mtkbg4_2.style.top = tt + "px";
                    mtkbg4_2.style.width = "95rem";
                    mtkbg4_2.style.height = "58rem";
                },100)
            },
            getsfq1_enter(e){
                var sfq = document.querySelectorAll(".event3_sfq li");
                var intro = document.querySelectorAll(".event3_sfq .intro");
                var event3_zzc = document.querySelectorAll(".event3_zzc");
                var a = e.target;
                    if(a.querySelector(".event3_zz")){
                    a.querySelector(".event3_zz").classList.remove("event3_zz");
                    }
                setTimeout(function(){
                    intro[0].classList.remove("opacity");
                    intro[1].classList.remove("opacity");
                    intro[2].classList.remove("opacity");
                    a.querySelector('.intro').classList.add("opacity");

                        event3_zzc[1].classList.add("event3_zz");
                        event3_zzc[2].classList.add("event3_zz");
                },0) 
                sfq[0].classList.remove("sfq_w66");
                sfq[1].classList.remove("sfq_w66");
                sfq[2].classList.remove("sfq_w66");
                a.style.width = "100%";
            },
            getsfq1_leave(){
                var sfq = document.querySelectorAll(".event3_sfq li");
                var intro = document.querySelectorAll(".event3_sfq .intro");
                var event3_zzc = document.querySelectorAll(".event3_zzc");
                    sfq[0].style.width = "";
                    sfq[0].classList.add("sfq_w66");
            },
            getsfq2_enter(e){
                var sfq = document.querySelectorAll(".event3_sfq li");
                var intro = document.querySelectorAll(".event3_sfq .intro");
                var event3_zzc = document.querySelectorAll(".event3_zzc");
                var a = e.target;
                    event3_zzc[0].classList.add("event3_zz");
                    event3_zzc[2].classList.add("event3_zz");
                    if(a.querySelector(".event3_zz")){
                    a.querySelector(".event3_zz").classList.remove("event3_zz");
                    }
                setTimeout(function(){
                    intro[0].classList.remove("opacity");
                    intro[1].classList.remove("opacity");
                    intro[2].classList.remove("opacity");
                    a.querySelector('.intro').classList.add("opacity");
                },0) 
                sfq[0].classList.remove("sfq_w66");
                sfq[1].classList.remove("sfq_w66");
                sfq[2].classList.remove("sfq_w66");
                a.style.width = "100%";
            },
            getsfq2_leave(){
                var sfq = document.querySelectorAll(".event3_sfq li");
                var intro = document.querySelectorAll(".event3_sfq .intro");
                var event3_zzc = document.querySelectorAll(".event3_zzc");
                    sfq[1].style.width = "";
                    sfq[1].classList.add("sfq_w66");
            },
            getsfq3_enter(e){
                var sfq = document.querySelectorAll(".event3_sfq li");
                var intro = document.querySelectorAll(".event3_sfq .intro");
                var event3_zzc = document.querySelectorAll(".event3_zzc");
                var a = e.target;
                    event3_zzc[0].classList.add("event3_zz");
                    event3_zzc[1].classList.add("event3_zz");
                    if(a.querySelector(".event3_zz")){
                    a.querySelector(".event3_zz").classList.remove("event3_zz");
                    }
                setTimeout(function(){
                    intro[0].classList.remove("opacity");
                    intro[1].classList.remove("opacity");
                    intro[2].classList.remove("opacity");
                    a.querySelector('.intro').classList.add("opacity");
                },0) 
                sfq[0].classList.remove("sfq_w66");
                sfq[1].classList.remove("sfq_w66");
                sfq[2].classList.remove("sfq_w66");
                a.style.width = "100%";
            },
            getsfq3_leave(){
                var sfq = document.querySelectorAll(".event3_sfq li");
                var intro = document.querySelectorAll(".event3_sfq .intro");
                var event3_zzc = document.querySelectorAll(".event3_zzc");
                    sfq[2].style.width = "";
                    sfq[2].classList.add("sfq_w66");
            },
            getmore(){
                var event2_a = document.querySelector(".event2_center a");
                var event3 = document.querySelector(".event3");
                var event4 = document.querySelector(".event4");
                if(event3.style.height==""){
                event3.style.height = "34.2%";
                event2_a.innerHTML = "隐藏信息";
                event4.classList.add("event4_bordertop");
                }else{
                event3.style.height = "";
                event2_a.innerHTML = "更多信息";
                event4.classList.remove("event4_bordertop");
                }
            },
            getclose(){//头部关闭
                var close = document.querySelector(".mtkbg1_2>a");
                var mtk_bg = document.querySelector(".mtk_bg");
                var mtkbg1_2 = document.querySelector(".mtkbg1_2");
                var video = document.querySelector(".content video");
                var mtkbg1 = document.querySelector(".mtkbg1");
                    mtkbg1.style.display = "none";
                    mtkbg1_2.style.top = "";                 
                    mtkbg1_2.style.width = "1rem";
                    mtkbg1_2.style.height = "1rem";
                    video.load();
                    mtkbg1_2.style.display = "none";
                mtkbg1_2.addEventListener('click',function(e){//阻止mtk_bg事件冒泡
                e.stopPropagation();
                })
            },
            getplay(){//头部播放
                var tt = document.documentElement.scrollTop ||document.body.scrollTop;
                var play = document.querySelector(".event1>a");
                var mtkbg1 = document.querySelector(".mtkbg1");
                var video = document.querySelector(".content video");
                var mtkbg1_2 = document.querySelector(".mtkbg1_2");
                    mtkbg1.style.display = "block";
                    mtkbg1_2.style.display = "block";
                var  t = setTimeout(function(){
                    mtkbg1_2.style.top = tt + "px"; 
                    mtkbg1_2.style.width = "95rem";
                    mtkbg1_2.style.height = "58rem";
                },100)
                    video.play();
            },
            getskin(){
                var url = "http://127.0.0.1:3000/event_skin";
                this.axios.get(url).then(result=>{
                    this.skin=result.data.data;
                })
            },
            getfeature(){
                var url = "http://127.0.0.1:3000/event_feature";
                this.axios.get(url).then(result=>{
                    this.feature=result.data.data;
                })
            },
            getphiz(){
                var url = "http://127.0.0.1:3000/event_phiz";
                this.axios.get(url).then(result=>{
                    this.phiz=result.data.data;
                })
            },
            getprev1(){
                var title = document.querySelector(".mtkbg1 .mtkbg2_2 .head>.title");
                var img = document.querySelector(".mtkbg1 .mtkbg2_2 .event_img img");
                var num = document.querySelector(".mtkbg2_2 .head .event_num");
                var a = num.innerHTML;
                a = a.split("/28").join("");
                a--;
                if(a<1){
                    a=28;
                }
                num.innerHTML = a + "/28";
                var skin = this.skin
                for(var key in skin){
                    var li = skin[a-1];
                        title.innerHTML=li.title;
                        img.setAttribute("src",li.big);
                }
            },
            getnext1(){
                var title = document.querySelector(".mtkbg1 .mtkbg2_2 .head>.title");
                var img = document.querySelector(".mtkbg1 .mtkbg2_2 .event_img img");
                var num = document.querySelector(".mtkbg2_2 .head .event_num");
                var a = num.innerHTML;
                a = a.split("/28").join("");
                a++;
                if(a>28){
                    a=1;
                }
                num.innerHTML = a + "/28";
                var feature = this.feature
                for(var key in feature){
                    var li = feature[a-1];
                        title.innerHTML=li.title;
                        img.setAttribute("src",li.big);
                }
            },
            getprev2(){
                var title = document.querySelector(".mtkbg1 .mtkbg3_2 .head>.title");
                var video = document.querySelector(".mtkbg1 .mtkbg3_2 .event_video video");
                var num = document.querySelector(".mtkbg3_2 .head .event_num");
                var a = num.innerHTML;
                a = a.split("/7").join("");
                a--;
                if(a<1){
                    a=7;
                }
                num.innerHTML = a + "/7";
                var feature = this.feature
                for(var key in feature){
                    var li = feature[a-1];
                        title.innerHTML=li.title;
                        video.setAttribute("src",li.mp4);
                }
            },
            getnext2(){
                var title = document.querySelector(".mtkbg1 .mtkbg3_2 .head>.title");
                var video = document.querySelector(".mtkbg1 .mtkbg3_2 .event_video video");
                var num = document.querySelector(".mtkbg3_2 .head .event_num");
                var a = num.innerHTML;
                a = a.split("/7").join("");
                a++;
                if(a>7){
                    a=1;
                }
                num.innerHTML = a + "/7";
                var feature = this.feature
                for(var key in feature){
                    var li = feature[a-1];
                        title.innerHTML=li.title;
                        video.setAttribute("src",li.mp4);
                }
            },
            getprev3(){
                var title = document.querySelector(".mtkbg1 .mtkbg4_2 .head>.title");
                var video = document.querySelector(".mtkbg1 .mtkbg4_2 .event_video video");
                var num = document.querySelector(".mtkbg4_2 .head .event_num");
                var a = num.innerHTML;
                a = a.split("/5").join("");
                a--;
                if(a<1){
                    a=5;
                }
                num.innerHTML = a + "/5";
                var phiz = this.phiz;
                for(var key in phiz){
                    var li = phiz[a-1];
                        title.innerHTML=li.title;
                        video.setAttribute("src",li.mp4);
                }
            },
            getnext3(){
                var title = document.querySelector(".mtkbg1 .mtkbg4_2 .head>.title");
                var video = document.querySelector(".mtkbg1 .mtkbg4_2 .event_video video");
                var num = document.querySelector(".mtkbg4_2 .head .event_num");
                var a = num.innerHTML;
                a = a.split("/5").join("");
                a++;
                if(a>5){
                    a=1;
                }
                num.innerHTML = a + "/5";
                var phiz = this.phiz;
                for(var key in phiz){
                    var li = phiz[a-1];
                        title.innerHTML=li.title;
                        video.setAttribute("src",li.mp4);
                }
            },
            headleScoll(){
                var tt =document.documentElement.scrollTop||document.body.scrollTop;
                var a =document.getElementById("gotop");
                if(tt>299){
                    a.style.display="inline";
                }else{
                    a.style.display="none";
                }
            }
        },
        created(){
            this.getskin();
            this.getfeature();
            this.getphiz();
        },
        mounted(){
            window.addEventListener("scroll",this.headleScoll);
        }
    }
</script>
<style>
    
</style>