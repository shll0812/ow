<template>
    <body>
        <div class="body">
            <div class="head"></div>
            <div class="mtbox show" >
                <div class="w-light-box">
                    <div class="head">
                        <div class="title">{{arr[index]}}</div>
                        <!-- <div class="num">{{nua}}/{{allength}}</div>-->
                    </div>
                    <div class="content">
                        <!-- video-f1-->
                        <div class="video show"  >
                                <div  class="v1" v-for="item in floor1" :key="item.id" >
                                        <video :data-id="item.video" :src="item.video" controls preload="auto" ></video>
                                </div>
                                <!--<div >
                                        <video src="video/shl/s1-2.mp4" controls preload="auto"></video>
                                </div>-->
                                <!--<div  class="v1">
                                        <video src="video/shl/s1-1.mp4" controls preload="auto"></video>
                                </div>-->
                        </div>
                        <!-- imgf2 -->
                        <div class="img2 " >
                                <div v-for="item in floor2" :key="item.id" :data-id="item.id">
                                        <img v-lazy="item.big"  >
                                </div>
                                <!--<div >
                                        <img src="img/shl/floor3/s1-2-b.jpg" alt="" >
                                </div>-->
                                <div >
                                        <img src="img/shl/floor3/s1-1-b.jpg" alt="" >
                                </div>
                        </div>
                        <!-- img f3 -->
                        <div class="img3 " >
                                <div v-for="item in floor3" :key="item.id" :data-id="item.id">
                                        <img v-lazy="item.big" >
                                </div>
                                <!--<div >
                                        <img src="img/shl/floor3/s1-2-b.jpg" alt="" >
                                </div>-->
                                <div >
                                        <img src="img/shl/floor3/s1-1-b.jpg" alt="" >
                                </div>
                        </div>
                        <!-- img f4 -->
                        <div class="img4 " >
                                <div v-for="item in floor4" :key="item.id" :data-id="item.id">
                                        <img v-lazy="item.big" >
                                </div>
                                <!--<div >
                                        <img src="img/shl/floor3/s1-2-b.jpg" alt="" >
                                </div>-->
                                <div >
                                        <img src="img/shl/floor3/s1-1-b.jpg" alt="" >
                                </div>
                            </div>
                            <!-- img f5 -->
                            <div class="img5 " >
                                <div v-for="item in floor5" :key="item.id" :data-id="item.id">
                                        <img v-lazy="item.big" >
                                </div>
                                <!--<div >
                                        <img src="img/shl/floor3/s1-2-b.jpg" alt="" >
                                </div>-->
                                <div >
                                        <img src="img/shl/floor3/s1-1-b.jpg" alt="" >
                                </div>
                        </div>
                        <!-- img f6 -->
                        <div class="img6 " >
                                <div  v-for="item in floor6" :key="item.id" :data-id="item.id">
                                        <img v-lazy="item.big"  >
                                </div>
                                <!--<div >
                                        <img src="img/shl/floor3/s1-2-b.jpg" alt="" >
                                </div>-->
                                <div >
                                        <img src="img/shl/floor3/s1-1-b.jpg" alt="" >
                                </div>
                        </div>
                    </div>
                    <div class="control">
                        <a href="javascript:;" class="prev"></a>
                        <a href="javascript:;" class="next"></a>
                    </div>
                </div> 
                <a href="javascript:;" class="closebox" @click="closeall">关闭</a>
            </div>
            <div class="boxModel" ></div>
            <div class="rightlist">
                <ul  id="a1">
                    <li class="actend" @mouseover="lifirst" @mouseleave="liend" @click="liact" data-lid="0">
                        <a href="javascript:;" data-lid="0">
                            <i data-lid="0"></i>
                            <span data-lid="0">视频</span>
                        </a>
                    </li>
                    <li  @mouseover="lifirst" @mouseleave="liend" @click="liact" data-lid="1">
                        <a href="javascript:;" data-lid="1">
                            <i data-lid="1"></i>
                            <span data-lid="1">漫画</span>
                        </a>
                    </li>
                    <li @mouseover="lifirst" @mouseleave="liend" @click="liact" data-lid="2">
                        <a href="javascript:;" data-lid="2">
                            <i data-lid="2"></i>
                            <span data-lid="2">游戏截图</span>
                        </a>
                    </li>
                    <li @mouseover="lifirst" @mouseleave="liend" @click="liact" data-lid="3">
                        <a href="javascript:;" data-lid="3">
                            <i data-lid="3"></i>
                            <span data-lid="3">原画</span>
                        </a>
                    </li>
                    <li @mouseover="lifirst" @mouseleave="liend" @click="liact" data-lid="4">
                        <a href="javascript:;" data-lid="4">
                            <i data-lid="4"></i>
                            <span data-lid="4">资料专栏</span>
                        </a>
                    </li>
                    <li @mouseover="lifirst" @mouseleave="liend" @click="liact" data-lid="5">
                        <a href="javascript:;" data-lid="5">
                            <i data-lid="5"></i>
                            <span data-lid="5">壁纸</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="sectionsf1 show" id="floor">
                    <div class="section1">
                        <h2>视频</h2>
                        <ul>
                            <li @click="openfirst" v-for="item in floor1" :key="item.id" :data-id="item.id" :style="'background-image:url('+item.sm+')'">
                                <div>
                                    <a href="javascript:;">
                                        <div>{{item.title}}</div>
                                    </a>
                                </div>
                            </li>
                            <!--<li @click="openfirst">
                                <div>
                                    <a href="javascript:;">
                                        <div>游戏视频</div>
                                    </a>
                                </div>
                            </li>
                            <li @click="openfirst">
                                <div>
                                    <a href="javascript:;">
                                        <div>动画短片：《重逢》</div>
                                    </a>
                                </div>
                            </li>
                            <li @click="openfirst">
                                <div>
                                    <a href="javascript:;">
                                        <div>动画短片：《星光闪耀》</div>
                                    </a>
                                </div>
                            </li>   
                            <li @click="openfirst">
                                <div>
                                    <a href="javascript:;">
                                        <div>动画短片：《荣耀》</div>
                                    </a>
                                </div>
                            </li>
                            <li @click="openfirst">
                                <div>
                                    <a href="javascript:;">
                                        <div>动画短片：《我们出发吧》</div>
                                    </a>
                                </div>
                            </li>   -->                                         
                        </ul>
                    </div>
            </div>
            <div class="sectionsf2 " id="floor">
                <div class="section1">
                    <h2>漫画</h2>
                    <ul>
                        <li v-for="item in floor2" :key="item.id" :data-id="item.id" :style="'background-image:url('+item.sm+')'">
                            <div>
                                <a href="javascript:;">
                                    <div>{{item.title}}</div>
                                </a>
                            </div>
                        </li>
                        <!--<li>
                            <div>
                                <a href="javascript:;">
                                    <div>漫画：《雪人大作战》</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>漫画：《万圣夜惊魂》</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>漫画：《搜索》</div>
                                </a>
                            </div>
                        </li>   
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>动画短片：《荣耀》</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>动画短片：《我们出发吧》</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>漫画：《威尼斯行动》</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>漫画：《雪人大作战》</div>
                                </a>
                            </div>
                        </li> -->                                           
                    </ul>
                </div>
            </div>
            <div class="sectionsf3 " id="floor">
                <div class="section1">
                    <h2>游戏截图</h2>
                    <ul>
                        <li v-for="item in floor3" :key="item.id" :data-id="item.id" :style="'background-image:url('+item.sm+')'">
                            <div>
                                <a href="javascript:;">
                                    <div>{{item.title}}</div>
                                </a>
                            </div>
                        </li>
                        <!--<li>
                            <div>
                                <a href="javascript:;">
                                    <div>艾什</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>艾什</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>釜山</div>
                                </a>
                            </div>
                        </li>   
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>釜山</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>釜山</div>
                                </a>
                            </div>
                        </li> 
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>釜山</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>“破坏球”</div>
                                </a>
                            </div>
                        </li>  -->                                      
                    </ul>
                </div>
            </div> 
            <div class="sectionsf4 " id="floor">
                <div class="section1">
                    <h2>原画</h2>
                    <ul>
                        <li v-for="item in floor4" :key="item.id" :data-id="item.id" :style="'background-image:url('+item.sm+')'">
                            <div>
                                <a href="javascript:;">
                                    <div>{{item.title}}</div>
                                </a>
                            </div>
                        </li>
                        <!--<li>
                            <div>
                                <a href="javascript:;">
                                    <div>布丽吉塔</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>莫伊拉</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>弗兰狂斯鼠归来</div>
                                </a>
                            </div>
                        </li>   
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>末日铁拳</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>奥丽莎</div>
                                </a>
                            </div>
                        </li> 
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>西游记</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>黑影</div>
                                </a>
                            </div>
                        </li> -->                                       
                    </ul>
                </div>
            </div> 
            <div class="sectionsf5 " id="floor">
                <div class="section1 ">
                    <h2>资料专栏</h2>
                    <ul>
                        <li v-for="item in floor5" :key="item.id" :data-id="item.id" :style="'background-image:url('+item.sm+')'">
                            <div>
                                <a href="javascript:;">
                                    <div>{{item.title}}</div>
                                </a>
                            </div>
                        </li>
                        <!--<li>
                            <div>
                                <a href="javascript:;">
                                    <div>美</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>源氏</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>路霸</div>
                                </a>
                            </div>
                        </li>   
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>狂鼠</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>卢西奥</div>
                                </a>
                            </div>
                        </li> 
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>士兵：76</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <a href="javascript:;">
                                    <div>查莉娅</div>
                                </a>
                            </div>
                        </li>  -->                                      
                    </ul>
                </div>
            </div>
            <div class="sectionsf6 " id="floor">
                <div class="section1">
                    <h2>资料专栏</h2>
                    <ul>
                        <li v-for="item in floor6" :key="item.id" :data-id="item.id" :style="'background-image:url('+item.sm+')'">
                            <div>
                                <div>
                                    <div>{{item.title}}</div>
                                    <ul class="load">
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">手机</span>
                                                <span class="type">(1080x1920)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">宽屏</span>
                                                <span class="type">(2560x1440)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">标准</span>
                                                <span class="type">(2048x1536)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">平板</span>
                                                <span class="type">(2048x2048)</span>
                                            </a>
                                        </li>                                    
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <!--<li>
                            <div>
                                <div >
                                    <div>英雄</div>
                                    <ul class="load">
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">手机</span>
                                                <span class="type">(1080x1920)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">宽屏</span>
                                                <span class="type">(2560x1440)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">标准</span>
                                                <span class="type">(2048x1536)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">平板</span>
                                                <span class="type">(2048x2048)</span>
                                            </a>
                                        </li>                                    
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <div>
                                    <div>守望先锋</div>
                                    <ul class="load">
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">手机</span>
                                                <span class="type">(1080x1920)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">宽屏</span>
                                                <span class="type">(2560x1440)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">标准</span>
                                                <span class="type">(2048x1536)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">平板</span>
                                                <span class="type">(2048x2048)</span>
                                            </a>
                                        </li>                                    
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <div >
                                    <div>天使</div>
                                    <ul class="load">
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">手机</span>
                                                <span class="type">(1080x1920)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">宽屏</span>
                                                <span class="type">(2560x1440)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">标准</span>
                                                <span class="type">(2048x1536)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">平板</span>
                                                <span class="type">(2048x2048)</span>
                                            </a>
                                        </li>                                    
                                    </ul>
                                </div>
                            </div>
                        </li>   
                        <li>
                            <div>
                                <div >
                                    <div>源氏</div>
                                    <ul class="load">
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">手机</span>
                                                <span class="type">(1080x1920)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">宽屏</span>
                                                <span class="type">(2560x1440)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">标准</span>
                                                <span class="type">(2048x1536)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">平板</span>
                                                <span class="type">(2048x2048)</span>
                                            </a>
                                        </li>                                    
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <div >
                                    <div>D.Va</div>
                                    <ul class="load">
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">手机</span>
                                                <span class="type">(1080x1920)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">宽屏</span>
                                                <span class="type">(2560x1440)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">标准</span>
                                                <span class="type">(2048x1536)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">平板</span>
                                                <span class="type">(2048x2048)</span>
                                            </a>
                                        </li>                                    
                                    </ul>
                                </div>
                            </div>
                        </li> 
                        <li>
                            <div>
                                <div >
                                    <div>士兵：76</div>
                                    <ul class="load">
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">手机</span>
                                                <span class="type">(1080x1920)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">宽屏</span>
                                                <span class="type">(2560x1440)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">标准</span>
                                                <span class="type">(2048x1536)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">平板</span>
                                                <span class="type">(2048x2048)</span>
                                            </a>
                                        </li>                                    
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <div >
                                    <div>猎空</div>
                                    <ul class="load">
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">手机</span>
                                                <span class="type">(1080x1920)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">宽屏</span>
                                                <span class="type">(2560x1440)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">标准</span>
                                                <span class="type">(2048x1536)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" target="_blank">
                                                <i></i>
                                                <span class="type">平板</span>
                                                <span class="type">(2048x2048)</span>
                                            </a>
                                        </li>                                    
                                    </ul>
                                </div>
                            </div>
                        </li> -->                                       
                    </ul>
                </div>
            </div>  
        </div>
    </body>
</template>
<script>
export default {
    data(){
        return {
            arr:["动画视频","漫画","游戏截图","原画","资料专栏","壁纸"],
            index:"0",
            allength:"2",
            nua:"1",
            floor1:[],
            floor2:[],
            floor3:[],
            floor4:[],
            floor5:[],
            floor6:[]
         }
    },
    methods: {
        getmedia(){
            var url=`http://127.0.0.1:3000/media`;
            this.axios.get(url).then(result=>{
                this.floor1=result.data.floor1
                this.floor2=result.data.floor2
                this.floor3=result.data.floor3
                this.floor4=result.data.floor4
                this.floor5=result.data.floor5
                this.floor6=result.data.floor6
                console.log(this.floor1)
                console.log(this.floor2)
                console.log(this.floor3)
                console.log(this.floor4)
                console.log(this.floor5)
                console.log(this.floor6)
            });
        },
        lifirst(e){
           // console.log(e.target);
            var a1=document.getElementById("a1");
            //console.log(e.target);
           
           for(var item of a1.children){
               if(item.firstElementChild.firstElementChild===e.target) {
                 //item.classList.remove("act");
                    item.classList.add("act");
                }
            }
            /*for(var a of li.children){
                //a.setAttribute("class","");
                a.classList.remove("act");
            }
            li.classList.add("act");
            /*console.log(li.classList)*/
           
        },
       liend(e){
            /*console.log(e.target)
            var li=e.target;
            li.classList.remove("act");
             console.log(111)
             */
            /*console.log(11)
            var a1=document.getElementById("a1");
            //console.log(e.target);
           
           for(var item of a1.children){
               
                 //item.classList.remove("act");
                    item.classList.remove("act");

            }*/
            var li=e.target
            console.log(li);
            li.classList.remove("act")
        },
        openfirst(){
            var boxM=document.querySelector("div.body>div.boxModel")
            boxM.classList.add("show");
            console.log(111)
            var box=document.querySelector('div.mtbox');
            
            //console.log(arr[i])
            box.style.opacity=1;
            box.style.width="80%";
            box.style.height="100%";
            /*var div_contentfirst=document.querySelectorAll("div.body>div.mtbox>div.w-light-box>div.content>div:first-child")
            div_contentfirst.classList.add('show');*/

        },
        //oiuhasdfbalksdjbflkjasdbhasdlfjbasjf
        liact(e){
            //var li=e.target
            var i=parseInt(e.target.dataset.lid);
            this.index=i;
            //console.log(i)
                          /*************************************/
               var box_show=document.querySelector(`div.mtbox>div.w-light-box>div.content>div:nth-child(${i+1})`)
               //console.log(box_show)
                var box_pt=document.querySelectorAll("div.mtbox>div.w-light-box>div.content")
                //console.log(box_pt)
                box_show.classList.add("show");
                var part=[];
                for(var oi=0;oi<box_pt.length;oi++){
                    part[oi]=document.querySelector((`div.mtbox>div.w-light-box>div.content>div:nth-child(${oi+1})`))
                }
                function addBox(part,obj){
                        var o=part.length;
                        while(o--){
                            if(part[o].classList.contains('show')==obj){
                                //console.log(t)//2
                                document.querySelector(`div.mtbox>div.w-light-box>div.content>div:nth-child(${o+1})`).classList.remove("show");
                                document.querySelector(`div.mtbox>div.w-light-box>div.content>div:nth-child(${i+1})`).classList.add('show');
                            }
                        }
                        return false;   
                    }
                    addBox(part,1) 
                    /***************************** */
                    var li=document.querySelector(`#a1>li:nth-child(${i+1})`)
                    var lis=document.querySelectorAll("#a1>li")
                    for(var a of lis){
                        a.setAttribute("class","");
                    }
                    var li_child=document.querySelector(`#a1>li:nth-child(${i+1})`)
                    //console.log(li_child)
                    li_child.classList.add("actend");
                    var nodes=[];
                    for(var b=0;b<li.parentElement.children.length;b++){
                    nodes[b]=document.querySelector(`div.body>div.sectionsf${b+1}`)}
                    /*********************************** */
                    if(nodes[0].classList.contains('show')){
                        document.querySelector(`div.body>div.sectionsf1`).classList.remove("show");
                        document.querySelector(`div.body>div.sectionsf${i+1}`).classList.add('show');
                    }else{
                        function contains(arrays,obj){
                            var t=nodes.length;
                            while(t--){
                                if(nodes[t].classList.contains('show')==obj){
                                    //console.log(t)//2
                                    document.querySelector(`div.body>div.sectionsf${t+1}`).classList.remove("show");
                                    document.querySelector(`div.body>div.sectionsf${i+1}`).classList.add('show');
                                }
                            }
                            return false;   
                        }
                        contains(nodes,1)    
                    }
                /**************************************** */
                var div_lb_img=document.querySelector("div.mtbox>div.w-light-box>div.head") 
                console.log(div_lb_img) 
                var all_img=document.querySelectorAll(`div.mtbox>div.w-light-box>div.content>div:nth-child(${i+1})>div`)
                console.log(all_img.length-1)
                this.allength=all_img.length-1;
                console.log(this.allength);
                /*var video=document.querySelector('div.mtbox>div.w-light-box>div.content>div.video>div.v1>video')  */   
                var active_elem=document.querySelectorAll(`div.body>div.sectionsf${i+1}>div.section1>ul>li`)
                console.log(active_elem)
                /*console.log(987)
                console.log(e.target)
                console.log(897)*/
                active_elem.forEach((sing,a,arr)=>
                    sing.addEventListener('click',function(){
                        /*var rs = sessionStorage.getItem("i") 
                        console.log(rs)*/
                        console.log(123);
                        
                        console.log(a);
                        var boxM=document.querySelector("div.body>div.boxModel")
                        boxM.classList.add("show");
                        console.log(111)
                        var box=document.querySelector('div.mtbox');
                        
                        console.log(arr[i])
                        box.style.opacity=1;
                        box.style.width="80%";
                        box.style.height="100vh";
                        //console.log(video)
                        //video.play();
                        //******************************* */
                        /********************************* */
                        /********************************* */
                        
                       /*div_lb_img.innerHTML=`                    
                        <div class="title">${arr[i]}</div>
                        <div class="num">1/${all_img.length-1}</div>`*/
                        var div_content=document.querySelectorAll("div.body>div.mtbox>div.w-light-box>div.content>div")
                        console.log(div_content);
                        if(div_content[0].classList.contains('show')){
                            document.querySelector("div.body>div.mtbox>div.w-light-box>div.content>div:nth-child(1)").classList.remove("show");
                            document.querySelector("div.body>div.mtbox>div.w-light-box>div.content>div:nth-child(2)").classList.remove("show");document.querySelector("div.body>div.mtbox>div.w-light-box>div.content>div:nth-child(3)").classList.remove("show");
                            document.querySelector("div.body>div.mtbox>div.w-light-box>div.content>div:nth-child(4)").classList.remove("show");
                            document.querySelector("div.body>div.mtbox>div.w-light-box>div.content>div:nth-child(5)").classList.remove("show");document.querySelector("div.body>div.mtbox>div.w-light-box>div.content>div:nth-child(6)").classList.remove("show");
                            document.querySelector(`div.body>div.mtbox>div.w-light-box>div.content>div:nth-child(${i+1})`).classList.add('show');
                        }else{
                            function contains(arrays,obj){
                                var tc=div_content.length;
                                while(tc--){
                                    if(nodes[tc].classList.contains('show')==obj){
                                        //console.log(t)//2
                                    /* document.querySelector(`div.body>div.mtbox>div.w-light-box>div.content>div:nth-child(${tc+1})`)*/
                                        document.querySelector("div.body>div.mtbox>div.w-light-box>div.content>div.show").classList.remove("show");
                                        document.querySelector(`div.body>div.mtbox>div.w-light-box>div.content>div:nth-child(${i+1})`).classList.add('show');
                                    }
                                }
                                return false;   
                            }
                            contains(nodes,1) 
                        }     
                        /**************************************** */
                                                /*********************************************************/
                                        /********************手动轮播图**********************/
                        /*var div_lb_img=document.querySelector("div.mtbox>div.w-light-box>div.head") */

                        var mtdiv=document.querySelector(`div.mtbox>div.w-light-box>div.content>div:nth-child(${i+1})`);
                            //var $ulIds=$("ul.point>li");
                            var L=1533,moved=0;
                        // mtdiv.setAttribute("width",L*3)
                            mtdiv.style.width=all_img.length*L+"px";
                            //console.log(all_img.length);
                            mtdiv.style.marginLeft=-(a-1)*L+"px"
                            /*console.log(123)
                            console.log(this)
                            console.log(234)*/
                            /*nua=parseInt(a)+1;
                            nub=nua*/
                            //var html=``;
                            
                            //console.log(this.nua);
                            console.log(666);
                            console.log(this.ai);
                            var prev=document.querySelector("div.mtbox>div.w-light-box>div.control>a.prev")
                            //console.log(prev);
                            var html="";
                            prev.addEventListener('click',function(){
                                    moved++;
                                // mtdiv.setAttribute("margin-left",-moved*L)
                                    mtdiv.style.marginLeft=-moved*L+"px";
                                    
                                    if(moved==all_img.length-1){
                                        moved=0
                                        //mtdiv.setAttribute("margin-left",0)
                                        mtdiv.style.marginLeft=0+"px";
                                        
                                    }   
                                    // html=`
                                    // <div class="title">游戏截图</div>
                                    // <div class="num">${moved+1}/${all_img.length-1}</div>
                                    // `
                                    // div_lb_img.innerHTML=html 
                            });
                            /************************************* */
                            var next=document.querySelector("div.mtbox>div.w-light-box>div.control>a.next")
                            console.log(next)
                            next.addEventListener('click',function(){
                                if(moved==0){
                                    moved=all_img.length-1;
                                    //mtdiv.setAttribute("margin-left",-moved*L)
                                    mtdiv.style.marginLeft=-moved*L+"px";
                                }
                                moved--;
                                //mtdiv.setAttribute("margin-left",-moved*L)
                                mtdiv.style.marginLeft=-moved*L+"px";
                                
                                /*html=`
                                    <div class="title">动画截图</div>
                                    <div class="num">${moved+1}/${all_img.length-1}</div>
                                    `
                                    var div_lb_img=document.querySelector("div.mtbox>div.w-light-box>div.head") 
                                    div_lb_img.innerHTML=html   */
                                    
                            })}))
                            
        },
        closeall(){
            var box=document.querySelector('div.mtbox');
            console.log(box);
             box.style.opacity=0;
             box.style.width="0%";
            box.style.height="0%";
            
            //console.log(video)
            //video.load();
            var boxM=document.querySelector("div.body>div.boxModel")
            boxM.classList.remove("show");
        }
    },
    //生命周期
    created(){
        this.getmedia()
    }
}
</script>
<style>
</style>