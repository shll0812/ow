<template>
<body class="home ">
    <div class="home_header">
        <!-- <div class="bg_video"> 
            <video autoplay loop="loop">  
                <source src="img/x.mp4" type="video/mp4">

            </video> 
         </div> -->
         <div class="bg_video">
                <video autoplay loop src="img/ty/img/x.mp4" muted></video>
            </div>
        <div class="header1">
            <div class="imglg">
                <img src="img/ty/img/logo-overwatch-full.png" alt=""> 
            </div> 
            <div class="tit">
                <h2>“年度最佳运营游戏奖” - The Game Awards</h2>
            </div>
            <div class="home_button">
                <div class="home_btn1">
                    <a href="javascript:;"><span>立即购买</span></a>
                </div>
                <div class="home_btn2">
                    <a href="javascript:;">
                        <span class="btn2_bg">

                        </span>
                        <span>
                            游戏介绍
                        </span>
                    </a>
                </div>
            </div>                
        </div>
        <div class="header2"></div>
    </div>
<!-- 2 -->
    <div class="home_inner">
        <h2>新闻公告</h2>
        <div class="innerimg1">
            <a href=""></a>
            <div>
                <a href="javascript:;">全新地图“巴黎”现已上线</a>
            </div>
        </div>
        <div class="innerimg2">
            <a href=""></a>
            <div>
                <a href="javascript:;">购《守望先锋》享5折特惠</a>
            </div>
        </div>
        <div>
            <a href="javascript:;" class="inner_btn">查看所有新闻</a>
        </div>
    </div>
    <!-- 3 -->
    <div class="home_inner2">
        <h2 class="intro-heading">为未来而战</h2>
        <p class="intro-text">军人、科学家、冒险家、奇人异士。
            <br />
            <br />在人类陷入空前危机之时，来自全球各个国家的特种精英们，为了结束战争、重铸秩序而团结在了一起。
            <br>
            他们，就是<strong>守望先锋</strong>。
            <br />
            <br />英雄们最终结束了这场危机，人类文明在随后的数十年内和平共存并迎来了一个探索、革新和发现的新时代。
            <br>
            尽管如此，守望先锋在多年后逐渐被人们所遗忘，最终难逃被解散的命运。
            <br />
            <br /> </p>
        <p class="intro-text">如今，世界各地争端再起，人们都翘首期待着新英雄的出现，或旧英雄的归来。
            <br />
            <br />你愿意与我们共同抗争吗？ </p><a href="javascript:;" class="m_lg">探索游戏</a>
    </div>
    <div class="home_container">
        <img class="container_img" src="img/ty/img/dorado-desktop.jpg" alt="">
        <div class="container1">
            <h2 class="intro-heading intro-heading-gradient-blue">各具特色的英雄</h2>
            <div class="intro-text u-center-block">
                <p>不论喜欢哪种游戏方式，你总能找到适合自己玩法的英雄。
                    <br />掌握他们独特的技能玩法，享受《守望先锋》的无穷乐趣！</p>
            </div>
        </div>
        <div class="home_hero">
            <div class="home_ban">
                <h2  class="ban1" >{{names}}</h2>
                <p class="ban2" >{{ban}}</p>
            </div>
            <div class="ban_img" :style="imgurl">

            </div>
        </div>
        <div class="home_heros">
            <ul class="home_hero_portrait_group">
                <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait" data-name="源氏" data-img="background-image:url(img/ty/img/ys.png)" data-ban="一名致命的半机械忍者，通过他的机械躯体寻得了身心的和谐。">
                        <div class="home_hero_img" :style="bgcolor">
                            <div class="home_heroimg ys"></div>
                        </div>
                        <span class="home_herolable">源氏</span>
                    </a>
                </li>
                <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait" data-name="D.Va" data-img="background-image:url(img/ty/img/dva.png)" data-ban="一名前职业玩家，而现在则利用自己的技巧驾驶一台尖端机甲保卫国家。">
                        <div class="home_hero_img">
                            <div class="home_heroimg dva"></div>
                        </div>
                        <span class="home_herolable">D.Av</span>
                    </a>
                </li>
                 <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait" data-name="堡垒" data-img="background-image:url(img/ty/img/bl.png)" data-ban="一名可以切换形态的机器人，为自然着迷而探索世界，同时也对人类保持着戒心。">
                        <div class="home_hero_img">
                            <div class="home_heroimg bl"></div>
                        </div>
                        <span class="home_herolable">堡垒</span>
                    </a>
                </li> <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait" data-name="安娜" data-img="background-image:url(img/ty/img/an.png)" data-ban="守望先锋的创始成员之一，“起死回生”重返战场保护亲人和朋友。">
                        <div class="home_hero_img">
                            <div class="home_heroimg an"></div>
                        </div>
                        <span class="home_herolable">安娜</span>
                    </a>
                </li> <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait" data-name="猎空" data-img="background-image:url(img/ty/img/lk.png)" data-ban="一名前守望先锋特工，同时也是可以穿梭时间的充满正义的冒险家。">
                        <div class="home_hero_img">
                            <div class="home_heroimg lk"></div>
                        </div>
                        <span class="home_herolable">猎空</span>
                    </a>
                </li> <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait" data-name="天使" data-img="background-image:url(img/ty/img/ts.png)" data-ban="一名集顶尖的治疗者、出色的科学家和坚定的和平主义者于一身的守护天使。">
                        <div class="home_hero_img">
                            <div class="home_heroimg ts"></div>
                        </div>
                        <span class="home_herolable">天使</span>
                    </a>
                </li> <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait" data-name="美" data-img="background-image:url(img/ty/img/m.png)" data-ban="一名能够操控天气，为了保护环境而选择战斗的科学家。">
                        <div class="home_hero_img">
                            <div class="home_heroimg m"></div>
                        </div>
                        <span class="home_herolable">美</span>
                    </a>
                </li> <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait" data-name="破坏球" data-img="background-image:url(img/ty/img/phq.png)" data-ban="驾驶这台滚动式坦克的是一只经过基因改造的仓鼠，他来自月球基地。">
                        <div class="home_hero_img">
                            <div class="home_heroimg phq"></div>
                        </div>
                        <span class="home_herolable">破坏球</span>
                    </a>
                </li> <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait" data-name="莱因哈特" data-img="background-image:url(img/ty/img/lyht.png)" data-ban="一名属于过去的勇士，时刻铭记着骑士的信条：无畏、公正、勇敢。">
                        <div class="home_hero_img">
                            <div class="home_heroimg lyht"></div>
                        </div>
                        <span class="home_herolable">莱因哈特</span>
                    </a>
                </li> <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait" data-name="士兵：76" data-img="background-image:url(img/ty/img/76.png)" data-ban="一名试图自己将守望先锋敌人绳之于法的独行侠。">
                        <div class="home_hero_img">
                            <div class="home_heroimg s76"></div>
                        </div>
                        <span class="home_herolable ">士兵：76</span>
                    </a>
                </li> <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait " data-name="麦克雷" data-img="background-image:url(img/ty/img/mkl.png)" data-ban="一名亡命天涯的神枪手，以自己的方式伸张正义。">
                        <div class="home_hero_img">
                            <div class="home_heroimg mkl"></div>
                        </div>
                        <span class="home_herolable">麦克雷</span>
                    </a>
                </li> <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait " data-name="黑百合" data-img="background-image:url(img/ty/img/hbh.png)" data-ban="一名完美的杀手：耐心、果断、无情。没有任何情感且事后毫无悔意。">
                        <div class="home_hero_img">
                            <div class="home_heroimg hbh"></div>
                        </div>
                        <span class="home_herolable">黑百合</span>
                    </a>
                </li> <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait " data-name="卢西奥" data-img="background-image:url(img/ty/img/lxa.png)" data-ban="一位国际名人，通过音乐和巡演激发社会正能量。">
                        <div class="home_hero_img">
                            <div class="home_heroimg lxa"></div>
                        </div>
                        <span class="home_herolable">卢西奥</span>
                    </a>
                </li> <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait " data-name="半藏" data-img="background-image:url(img/ty/img/bz.png)" data-ban="一名强大而致命的弓箭大师。">
                        <div class="home_hero_img">
                            <div class="home_heroimg bz"></div>
                        </div>
                        <span class="home_herolable">半藏</span>
                    </a>
                </li> 
            </ul>
        </div>
    </div>
    <div class="home_dd">

    </div>
    <div class="home_foot">
            <div class="foot_fg">

            </div>
            <div class="home_column">
                <h2 class="intro-heading-gradient-blue">这个世界需要英雄</h2>
                <p class="foot_text">现在即是未来，你来吗？</p><a href="javascript:;" target="_blank" class="m_lg">立即购买</a>
            </div>
    </div>

</body>
</template>
<script>

export default {
    data(){
        return{
            names:"源氏",
            ban:"一名致命的半机械忍者，通过他的机械躯体寻得了身心的和谐。",
            imgurl:"",
            // bgcolor:""
        }
    },
 methods: {
     enter(e){
   this.names=e.target.dataset.name
    this.ban=e.target.dataset.ban
    this.imgurl=e.target.dataset.img
    // this.bgcolor="background-color:rgba(245,145,51)"
    //    console.log(names)
    //     console.log(ban)

    
     }
 },
 
}

</script>
<style >
</style>