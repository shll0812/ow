<template>
    <div class="app-news">
        <table></table>
        <!--主题新闻-->
        <div class="main-news">
            <ul>
                <li v-for="item in list" :key="item.nid" :class="item.size" :style="'background-image:url('+item.pic+')'" @click="jumpInfo">
                    <span>{{item.title}}</span>
                </li>
            </ul> 
        </div>
        <!--列表新闻-->
        <div class="arr-news">
            <div v-for="item in all" :key="item.id">
                <a href="javascript:;" :style="'background-image:url('+item.pic+')'" :data-aid="item.aid" @click="jumpInfo">
                </a>
                <div>
                    <a href="javascript:;">
                        {{item.title}}
                        <span><img src="/img/news/content.png">347</span>
                    </a>
                    <p>{{item.time}}</p>
                    <p>{{item.content}}</p>
                </div>
            </div>
            <!--记载更多新闻-->
            <button @click="getAllNews" v-if="more">加载更过</button>   
        </div>
        <!--回顶部-->
        <div class="news-return" v-if="istotop">
            <a href="javascript:;" @click="toTop">TOP</a>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            list:[],
            pno:0,
            all:[],
            more:true,
            istotop:false,
        };
    },
    //事件方法
    methods:{
        getList(){
            var url=`http://127.0.0.1:3000/news`;
            this.axios.get(url).then(result=>{
                this.list=result.data.data;
                //console.log(this.list)
            });
        },
        getAllNews(){
            this.pno++;
            var url=`http://127.0.0.1:3000/allnews?pno=${this.pno}`;
            this.axios.get(url).then(result=>{
                this.all=this.all.concat(result.data.data);
                if(!result.data.data[0]){
                    this.more=false;
                }
            });
        },
        jumpInfo(e){
            var aid=e.target.dataset.aid;
            //console.log(aid)
            if(!aid){
                aid=1
            }
            //const { href }=this.$router.push({path:"/newsDetails?aid="+aid});
            //window.open(`http://127.0.0.1:8080/#/newsDetails?aid=${aid}`, '_blank');
            this.$router.push({path:"/newsDetails?aid="+aid});
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
        },
    },
    //生命周期
    created() {
        this.getList();
        this.getAllNews()
    },
    mounted(){
        window.addEventListener('scroll', this.handleScroll)
    }
}
</script>
<style>

</style>