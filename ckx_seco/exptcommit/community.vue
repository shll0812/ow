
<template>
   <section id="site"> 
       <section id="header"></section>
        <section id="overview">
            <div class="HeroesAmongUsOverview">
                <div class="u-align-center">
                    <h1>我们身边的英雄</h1>
                </div>
                <div class="column">
                    <p>每个英雄都有自己的故事，正是这些故事造就了今天的他们。英雄们敢于探寻这个世界未知的可能，并且一步一个脚印地为理想而战。这也是我们开展“我们身边的英雄”的原因：这个项目将在全球范围内表彰对世界产生影响的英雄，无论影响是大是小。而且我们知道，你一定有故事想和我们分享。</p>
                </div>
            </div>
        </section>
        <section id="videos">
           <div class="video_row">
                      <h2>《守望先锋》社区中的故事</h2>
                      </div>
                     <div class="roww"> 
                     <div class="roww_a">
                       <a href="#"  @mouseover="lifirst" @mouseleave="liend" @click="lookvideo">
                        <div class="roww_image">
                          <a href="javascript:;"class="ctr" >
                            <img src="img/ckx/image/aa4.png" >
                            
                         </a> 
                         <a  href="javascript:;">
                            <img class="bbb" src="img/ckx/image/a1_1.png">
                         </a>
                        </div>
                    </a>
                    
                    <div class="media-card-outside-caption">
                        <h3>KongdolE Production的英雄故事</h3>
                        <p>韩国KongdolE Production工作室应用了他们的工程学知识在现实中重现了这台全功能的托比昂炮台。</p>
                    </div>
                </div>
                    <div class="roww_b">
                       

                      <a href="#"  @mouseover="lifirs" @mouseleave="lien" @click="lookvideoa">
                        <div class="roww_imagea">
                          <a href="javascript:;"class="ctr" >
                            <img src="img/ckx/image/aa4.png" >
                            
                         </a> 
                         <a  href="javascript:;">
                            <img class="ccc" src="img/ckx/image/a1_1.png">
                         </a>
                        </div>
                    </a>
                    
                    <div class="media-card-outside-caption">
                        <h3>Vitor Silveira的英雄故事</h3>
                        <p>Vitor Silveira（游戏ID：Ravnuslock）发起了“Ecopoint Brazil”计划，通过植树来恢复巴西的生态环境。</p>
                    </div>
                </div>

                <div class="roww_c">
                       

                      <a href="#"  @mouseover="lifirsy" @mouseleave="lieny" @click="lookvideob">
                        <div class="roww_imageb">
                          <a href="javascript:;"class="ctr" >
                            <img src="img/ckx/image/aa4.png" >
                            
                         </a> 
                         <a  href="javascript:;">
                            <img class="ddd" src="img/ckx/image/a1_1.png">
                         </a>
                        </div>
                    </a>
                    
                    <div class="media-card-outside-caption">
                        <h3>Matilda Smedius的英雄故事</h3>
                        <p>从玩家变为游戏中的英雄。一年前接到了一个电话，随后她成为了《守望先锋》英雄布丽吉塔·林德霍姆的配音演员。</p>
                    </div>
                </div>
        </div>
        </section>
        <section id="stories">
            <div class="storyContent">
                <div class="HeroesAmongUs-news">
                    <div class="flex-contain">
                        <div class="flex-cont"> 
                            <a  href="javascript:;">
                                <img src="img/ckx/image/a2.jpg" >
                            </a>
                        </div>
                        <div class="media-card-out">
                                <h3>Marcin Rausch的英雄故事</h3>
                                <p>Marcin Rausch是Academic League的创始人，这是波兰最大的高校电竞联赛，专为高校学生打造。</p>
                            </div>
                    </div>
                </div>

                <div class="HeroesAmongUs-news">
                        <div class="flex-contain">
                            <div class="flex-cont"> 
                                <a class="" href="javascript:;">
                                    <img src="img/ckx/image/a1.jpg" >
                                </a>
                            </div>
                            <div class="media-card-out">
                                    <h3>KKUEM的英雄故事</h3>
                                    <p>Chae “Kkuem” Ji Yun在过去的十年间参与过诸多的书籍、游戏和其他美术项目。最近，她得到了一个为自己最喜欢的事物做出贡献的机会：那就是《守望先锋》。</p>
                                </div>
                        </div>
                    </div>




            </div>

        </section>
        <section id="submissions">
            <div class="u-nav-widt">
                <div class="h1">
                    <h2>提交你的故事</h2>
                    <p class="h1p">我们想要了解你生活中的英雄！</p>
                    <p class="h2p">你或你的英雄在《守望先锋》中得到了怎样的激励？是谁给予了这位英雄勇气，帮助这个世界变得更加美好？请告诉我们！你的故事也许可以让一个人受到更积极的影响，又或者能够造福整个社区！我们需要你的贡献。你所知的英雄故事是怎样的？</p>
                    <p class="h1_p">《守望先锋》团队将核实每一个英雄故事，并向适当的参与者了解更多的详情。被选中的故事可能会以博文或视频的方式呈现，以便与《守望先锋》社区的其他人分享。</p>
                    <a href="javascript:;" class="h1a">提交故事</a>
                </div>

            </div>
        
        
        
        
        
        
        
        </section>
                        <div id="popBox_a">
                                <div class="light-box_a">
                                    <div class="lihead_a">
                                        <div class="lititle_a">KongdolE Production的英雄故事</div>
                                        <a href="javascript:;" class="closeBtn_a" @click="closet"></a>
                                     </div>
                                    <div class="licontent_a">
                                        <video   src="img/ckx/image/a456b.mp4" controls loop muted autoplay="autoplay" preload="auto"></video>
                                    </div>
                                </div>
                        </div>

                         <div id="popBox_b">
                                <div class="light-box_b">
                                    <div class="lihead_b">
                                        <div class="lititle_b">Vitor Silveira的英雄故事</div>
                                        <a href="javascript:;" class="closeBtn_b" @click="closetb"></a>
                                     </div>
                                    <div class="licontent_b">
                                        <video   src="img/ckx/image/a345b.mp4" controls loop muted autoplay="autoplay" preload="auto"></video>
                                    </div>
                                </div>
                        </div>

                          <div id="popBox_c">
                                <div class="light-box_c">
                                    <div class="lihead_c">
                                        <div class="lititle_c">Matilda Smedius的英雄故事</div>
                                        <a href="javascript:;" class="closeBtn_c" @click="closetc"></a>
                                     </div>
                                    <div class="licontent_c">
                                        <video   src="img/ckx/image/a234b.mp4" controls loop muted autoplay="autoplay" preload="auto"></video>
                                    </div>
                                </div>
                        </div>

    </section>

</template>

<script>
export default {
    data(){
        return{
           
        }
    },
  methods: {
    lifirst(e){
            var dia=document.querySelector(" div.roww_a>a>div.roww_image>a.ctr>img")
                    dia.classList.add("ctrlq");
            var dis=document.querySelector(" div.roww_a>a>div.roww_image>a:nth-child(2)")
            dis.classList.add("ctrcr");
          },
      
    liend(e){
        var dib=document.querySelector("div.roww_a>a>div.roww_image>a.ctr>img")
           // console.log(dib);
           dib.classList.remove("ctrlq");
           var dis=document.querySelector(" div.roww_a>a>div.roww_image>a:nth-child(2)")
           dis.classList.remove("ctrcr");
     },
      lifirs(e){
            var dia=document.querySelector(" div.roww_b>a>div.roww_imagea>a.ctr>img")
                dia.classList.add("ctrlq");
         var dis=document.querySelector(" div.roww_b>a>div.roww_imagea>a:nth-child(2)")
            dis.classList.add("ctrcr");
          },
      
    lien(e){
       var dib=document.querySelector("div.roww_b>a>div.roww_imagea>a.ctr>img")
           // console.log(dib);
           dib.classList.remove("ctrlq");
           var dis=document.querySelector(" div.roww_b>a>div.roww_imagea>a:nth-child(2)")
           dis.classList.remove("ctrcr");
     },
      lifirsy(e){
            var dia=document.querySelector(" div.roww_c>a>div.roww_imageb>a.ctr>img")
                dia.classList.add("ctrlq");
         var dis=document.querySelector(" div.roww_c>a>div.roww_imageb>a:nth-child(2)")
            dis.classList.add("ctrcr");
          },
      
    lieny(e){
       var dib=document.querySelector("div.roww_c>a>div.roww_imageb>a.ctr>img")
           // console.log(dib);
           dib.classList.remove("ctrlq");
           var dis=document.querySelector(" div.roww_c>a>div.roww_imageb>a:nth-child(2)")
           dis.classList.remove("ctrcr");
     },
    
      lookvideo(e){
            var lookvideo = e.target;
            //console.log(lookvideo);
            var popBox = document.getElementById("popBox_a");
            popBox.style.display = "block";
      },
      closet(){
          var popBox = document.getElementById("popBox_a");
          popBox.style.display = "none";
      },
 lookvideoa(e){
            var lookvideo = e.target;
            //console.log(lookvideo);
            var popBox = document.getElementById("popBox_b");
            popBox.style.display = "block";
      },
      closetb(){
          var popBox = document.getElementById("popBox_b");
          popBox.style.display = "none";
      },
       lookvideob(e){
            var lookvideo = e.target;
            //console.log(lookvideo);
            var popBox = document.getElementById("popBox_c");
            popBox.style.display = "block";
      },
      closetc(){
          var popBox = document.getElementById("popBox_c");
          popBox.style.display = "none";
      }


}
}
</script>
<style>

 
 
  

</style>