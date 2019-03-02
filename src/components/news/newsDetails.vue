<template>
<!--新闻内容-->
    <div class="news-details" v-cloak>
        <table></table>
        <!--新闻主体-->
        <div class="news-main">
            <!--左侧主内容--> 
            <div class="news-left" v-cloak>
                <h1>{{list.title}}</h1>
                <span>发布日期：{{list.time}}</span>
                <img :src="list.mpic">
                <p>{{list.mcontennt}}</p>
                <!--视频-->
                <div class="news-video">
                    <h3>{{list.vtitle}}</h3>
                    <video :src="list.video" controls preload="auto"></video>
                    <p>{{list.vcontent}}</p>
                </div>
                <!--附加图片-->
                <div class="news-other">
                    <h3>其他作品</h3>
                    <div v-for="item in source" :key="item.id">
                        <div class="other-pic">
                            <div v-for="(pic,i) in pics" :key="pic.id">
                                <img v-if="pic.nid==item.nid" :src="pic.pic" :class="pic.class" :num="i+1"  @click="openpic($event)">
                            </div>
                        </div>
                        <p>{{item.content}}</p>
                    </div>
                </div>
                <!--新闻结尾-->
                <div class="news-over">
                    <p>{{list.rcontent}}</p>
                    <p>注：本文内容均为玩家作品，绘画、视频等作品均已获得作者授权，《守望先锋》官网发布此文仅为分享，不代表赞同或承认其观点与意见。</p>
                    <!--分享-->
                    <div class="enjoy" v-if="enjoy">
                        <span>分享到:</span>
                        <a href="javascript:;"><img :src="img1"></a>
                        <a href="javascript:;"><img :src="img1"></a>
                        <a href="javascript:;"><img :src="img1"></a>
                    </div>
                </div>
                <!--评论-->
                <div class="content">
                    <h1>评论({{count}})</h1>
                    <div class="content-dl">
                        <a>登录后发表评论</a>
                    </div>
                    <div class="content-box">
                        <textarea id="content" rows="6"  maxlength="128" v-model="value" :class="{'bold':isb,'italic':isi}"></textarea>
                        <div class="font-pic">
                            <a href="javascript:;" @click="openface"></a>
                            <a href="javascript:;" :class="{'act':isi}" @click="isi=!isi"></a>
                            <a href="javascript:;" :class="{'act':isb}" @click="isb=!isb"></a>
                            <a href="javascript:;" @click="newscontent" :class="{'active':value}">发表</a>
                        </div>
                        <div class="face-pic" v-if="isface">
                            <ul>
                                <li  v-for="face in faces" :key="face.id" class="pact" :style="'background-image:url(./img/news/main-news/font-pic/'+face+'.gif)'" @click="totext" :num="face"></li>
                            </ul>
                        </div>
                    </div>
                    <div class="content-list">
                        <div class="content-now">评论</div>
                        <div>最新</div>
                        <div>只看自己</div>
                    </div>
                    <div class="content-all">
                        <div v-for="content in contents" :key="content.id">
                            <img :src="img2"/>
                            <div>
                                <a href="javascript:;">{{content.uname}}</a>
                                <span>{{content.ctime|datetimeFilter}}</span>
                                <p :class="{'bold':content.isb,'italic':content.isi}" v-html="content.content"></p>
                            </div>
                        </div>
                    </div>
                    <p v-if="nocontent">暂无评论</p>
                    <div class="news-page">
                        <a v-if="nowpno>1" href="javascript:;" @click="prvepage">上一页</a>
                        <a href="javascript:;" @click="firstpage">首页</a>
                        <a v-if="nowpno<page" href="javascript:;" @click="nextpage">下一页</a>
                        <div v-else></div>
                        <span>共{{page}}页 到第</span>
                        <input type="text" maxlength="5" v-model="pno">
                        <span>页</span>
                        <a href="javascript:;" @click="getnewcontent">确定</a>
                    </div>
                </div>
            </div>
            <div class="news-right">
                <h2>最新新闻</h2>
                <div v-for="news in leftnews" :key="news.id">
                    <a href="javascript:;" :style="'background-image:url('+news.pic+')'">
                    </a>
                    <div>
                        <a href="javascript:;">{{news.title}}</a>
                        <p>发布日期：{{news.time}}</p>
                    </div>
                </div>
            </div>
        </div>
        <!--回顶部-->
        <div class="news-return" v-if="istotop">
            <a href="javascript:;" @click="toTop">TOP</a>
        </div>
        <!--模态框-->
        <div class="mtk" v-if="show" :style="'height:'+height+'px'"></div>
        <transition name="fade" enter-active-class="animated zoomIn" leave-active-class="animated zoomOut">
            <div class="mtk" v-if="show" :style="'top:'+top+'px;background:none'">
            <div>
                <a href="javascript:;" @click="closepic"></a>
                <h2>{{showpic.num}}/16</h2>
                <div>
                    <a href="javascript:;" @click="prve"></a>
                    <a href="javascript:;" @click="next"></a>
                </div>
                <div>
                    <img :src="showpic.pic" :num="showpic.num"/>
                </div>
            </div>
            </div>
        </transition>
    </div>
</template>
<script>
export default {
    data(){
        return {
            list:[],
            pics:[],
            source:[],
            leftnews:[],
            faces:[],
            show:false,
            height:0,
            top:0,
            isface:false,
            showpic:{
                pic:"",
                num:"",
            },
            pno:1,
            nowpno:1,
            count:"",
            page:"",
            value:"",
            isi:false,
            isb:false,
            nocontent:false,
            contents:[],
            come:"",
            istotop:false,
            img1:"./img/news/main-news/news-share.png",
            img2:"./img/news/main-news/content-name.png",
            enjoy:false,
        };
    },
    methods:{
        getNewsDetails(){
            var aid=2
            var url=`http://127.0.0.1:3000/newsDetails?aid=${aid}`;
            this.axios.get(url).then(result=>{
                this.list=result.data.data[0];
                //console.log(this.list)
            });
        },
        getnewspic(){
            var aid=2;
            var url=url=`http://127.0.0.1:3000/newspic?aid=${aid}`;
            this.axios.get(url).then(result=>{
                this.pics=result.data.data;
                //console.log(this.pics);
            });
        },
        getsource(){
            var aid=2;
            var url=url=`http://127.0.0.1:3000/newssource?aid=${aid}`;
            this.axios.get(url).then(result=>{
                this.source=result.data.data;
                //console.log(this.source);
            });
        },
        getleftnews(){
            var aid=2
            var url=`http://127.0.0.1:3000/leftnews?aid=${aid}`;
            this.axios.get(url).then(result=>{
                this.leftnews=result.data.data;
                //console.log(this.leftnews);
            });
        },
        getcontents(){
            this.pno=parseInt(this.pno);
            if(!this.pno){
                this.pno=1;
            }else if(this.pno<1){
                this.pno=1;
            }
            var pno=this.pno;
            var url=`http://127.0.0.1:3000/getcontent?pno=${pno}`;
            this.axios.get(url).then(result=>{
                this.contents=result.data.data;
                this.count=parseInt(result.data.c[0]["COUNT(cid)"]);
                this.page=Math.ceil(this.count/15);
                //console.log(this.page);
                //console.log(this.contents);
                this.nowpno=pno;
                if(this.page<this.nowpno){
                    this.nocontent=true;
                }else{
                    this.nocontent=false;
                };
                for(var i=0;i<this.contents.length;i++){
                    this.contents[i].content=this.contents[i].content.replace(/</ig,"&lt;");
                    this.contents[i].content=this.contents[i].content.replace(/>/ig,"&gt;");
                    this.contents[i].content=this.contents[i].content.replace(/!\d{1,2}!/ig,function(kword){
                        kword=kword.replace(/!/g,"");
                        //console.log(kword)
                        kword=parseInt(kword);
                        if(kword>96||kword<1){
                            kword=1;
                        }
                        var str=`<span style='background-image:url(./img/news/main-news/font-pic/${kword}.gif)'></span>`
                        return str;
                    });
                    //console.log(this.contents[i].content)
                }
            });
        },
        getfaces(){
            for(var i=1;i<97;i++){
                this.faces[i-1]=i;
            }
            //console.log(this.faces);
        },
        openpic(e){
            var num=parseInt(e.target.getAttribute("num"));
            //console.log(this.showpic.num)
            this.showpic.pic=this.pics[num-1].pic;
            //console.log(this.showpic.pic);
            this.showpic.num=num;
            this.show=true;
            this.height=document.body.scrollHeight||document.documentElement.scrollHeight;
            this.top=document.body.scrollTop||document.documentElement.scrollTop; 
        },
        closepic(){
            this.show=false;
        },
        prve(){
            var num=this.showpic.num;
            if(num==1){
                num=17;
            }
            num--;
            this.showpic.pic=this.pics[num-1].pic;
            this.showpic.num=num;
        },
        next(){
            var num=this.showpic.num;
            if(num==16){
                num=0;
            }
            num++;
            this.showpic.pic=this.pics[num-1].pic;
            this.showpic.num=num;
        },
        openface(){
            this.isface=!this.isface;
        },
        scrollTop(){
            var t=setInterval(function(){
                if(document.documentElement.scrollTop<=4100&&document.body.scrollTop<=4100){
                    clearInterval(t);
                }
                else{
                   document.documentElement.scrollTop-=50;
                   document.body.scrollTop-=50; 
                }
            },20)
        },
        prvepage(){
            this.pno--;
            this.getcontents();
            this.scrollTop();
        },
        nextpage(){
            this.pno++;
            this.getcontents();
            this.scrollTop()
        },
        firstpage(){
            this.pno=1;
            this.getcontents();
            this.scrollTop()
        },
        getnewcontent(){
            this.getcontents();
            this.scrollTop();
        },
        newscontent(){
            if(!this.value){
                return;
            }
            var aid=2;
            var uname="流浪地球";
            var uid="1";
            var content=this.value;
            if(this.isb){
                var isb=1;
            }else{
                var isb=0;
            }
            if(this.isi){
                var isi=1;
            }else{
                var isi=0;
            }
            var url=`http://127.0.0.1:3000/setcontent?aid=${aid}&uname=${uname}&uid=${uid}&content=${content}&isb=${isb}&isi=${isi}`;
            this.axios.get(url).then(result=>{
                //this.come=result.data.data;
                //console.log(result.data.data);
                alert(result.data.data)
                this.getcontents();
            });
            //console.log(this.value)
            //this.value="";
            //this.isb=false;
            //this.isi=false;
            this.value="";
            this.isb=false;
            this.isi=false;
            this.isface=false;
        },
        totext(e){
            var num=parseInt(e.target.getAttribute("num"));
            //console.log(num);
            this.value+="!"+num+"!";
        },
        toTop(){
            var t=setInterval(function(){
                if(document.documentElement.scrollTop<=0&&document.body.scrollTop<=0){
                    clearInterval(t);
                }
                else{
                   document.documentElement.scrollTop-=100;
                   document.body.scrollTop-=100; 
                }
            },20)  
        },
        handleScroll(){
            var scroll=document.body.scrollTop||document.documentElement.scrollTop;
            if(scroll>299){
                this.istotop=true;
            }else{
                this.istotop=false;
            }
        }
    },
    created(){
        this.getNewsDetails();
        this.getnewspic();
        this.getsource();
        this.getleftnews();
        this.getfaces();
        this.getcontents();
    },
    mounted(){
        window.addEventListener('scroll', this.handleScroll)
    }
}
</script>
<style>
[v-cloak]{
    display:none;
}
</style>