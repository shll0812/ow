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
                <h2  class="ban1">源氏</h2>
                <p class="ban2">一名致命的半机械忍者，通过他的机械躯体寻得了身心的和谐。</p>
            </div>
            <div class="ban_img">

            </div>
        </div>
        <div class="home_heros">
            <ul class="home_hero_portrait_group">
                <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait" data-name="源氏" data-img="background-image: url(img/ys.png)" data-ban="一名致命的半机械忍者，通过他的机械躯体寻得了身心的和谐。">
                        <div class="home_hero_img">
                            <div class="home_heroimg"></div>
                        </div>
                        <span class="home_herolable">源氏</span>
                    </a>
                </li>
                <li class="home_relative">
                    <a href="" @mouseenter="enter($event)" class="home_hero_portait" data-name="D.Va" data-img="background-image: url(img/D.Va.png)" data-ban="一名致命的半机械忍者，通过他的机械躯体寻得了身心的和谐。">
                        <div class="home_hero_img">
                            <div class="home_heroimg"></div>
                        </div>
                        <span class="home_herolable">D.Av</span>
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
 methods: {
     enter(e){
    var   names=e.target.dataset.name
       console.log(names)
     }
 },
 
}

</script>
<style >
</style>