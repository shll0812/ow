<template>
    <div class="lshreg">
            <div class="container">
        <div>
            <p class="logo"></p>
        </div>
        <div class="title">
            <h1>创建账号</h1>
            <p class="create">创建暴雪游戏通行证，开启您的冒险旅程。</p>
        </div>
        <div class="main">
            <div class="mainlogin">
                <div>
                    <input type="text" placeholder="身份证号码" @focus="idcard" @blur="card" class="gird" v-model="id">
                    <div class="popover one" ref="idcard">
                        <div class="arrow"></div>
                        <div class="popover-content">
                            <p>请仔细核对并填写您真实有效的个人身证号码。</p>
                        </div>
                    </div>
                </div>
                <div>
                    <input type="text" placeholder="姓名" class="gird" v-model="uname">
                </div>
                <div>
                    <input type="text" placeholder="电子邮箱" class="gird " @blur="emaill" v-model="email" ref="emails">
                    <div ref="email" class="email">
                        <p class="help-block"><i></i>邮箱地址无效。</p>
                    </div>
                </div>
                <div style="position: relative;">
                    <input type="password" placeholder="密码" class="gird" v-model="pass" @focus="pss" @blur="passs">
                    <div class="rating" ref="rating">{{rating}}</div>
                    <div class="popover two" ref="pwd">
                        <div class="arrow"></div>
                        <div class="popover-content" >
                            <ul>
                                <li ref="li1">
                                    <i ref="i1" class="icon-gray"></i>使用8-16个字符。
                                </li>
                                <li ref="li2">
                                    <i ref="i2" class="icon-gray"></i>使用至少一个数字字符以及一个字母字符。
                                </li>
                                <li ref="li3">
                                    <i ref="i3" class="icon-gray"></i>请勿使用任何特殊字符。
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div style="position: relative;margin-top:20px">
                    <label for="checkbox">
                        <input type="checkbox" id="checkbox">
                        我已阅读并接受
                        <a href="#">隐私政策</a>
                    </label>
                </div>
                <div>
                    <button @click="register">免费注册暴雪通行证</button>
                </div>
                <div>
                    <p class="bottom">点击“免费注册暴雪游戏通行证”即表示我同意并接受<a href="#">暴雪战网最终用户许可协议</a></p>
                </div>
            </div>
        </div>
    </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            id:"",
            uname:"",
            email:"",
            pass:"",
            rating:"粗糙"
        }
    },
    watch: {
        pass:function(){
            var pass=this.pass;
            var reg1=/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/
            var reg2=/^[0-9]+[a-zA-Z]+[0-9a-zA-Z]*|[a-zA-Z]+[0-9]+[0-9a-zA-Z]$/
            var reg3=/^[^%\*\^~\'\"\/\\\<\>\|]+$/g
            var li1=this.$refs.li1
            var i1=this.$refs.i1
            var li2=this.$refs.li2
            var i2=this.$refs.i2
            var li3=this.$refs.li3
            var i3=this.$refs.i3
            if(pass==""){
                i1.classList.remove("dd")
                i1.classList.remove("green")
                li1.classList.remove("size")
            }else if(!reg1.test(pass)){
                i1.classList.add("dd")
                i1.classList.remove("green")
                li1.classList.remove("size")
            }else{
                i1.classList.remove("dd")
                i1.classList.add("green")
                li1.classList.add("size")
            }
            if(pass==""){
                i2.classList.remove("dd")
                i2.classList.remove("green")
                li2.classList.remove("size")      
            }else if(!reg2.test(pass)){
                i2.classList.add("dd")
                i2.classList.remove("green")
                li2.classList.remove("size")
            }else{
                i2.classList.remove("dd")
                i2.classList.add("green")
                li2.classList.add("size")
            }
            if(pass==""){
                i3.classList.remove("dd")
                i3.classList.remove("green")
                li3.classList.remove("size")
            }else if(!reg3.test(pass)){
                i3.classList.add("dd")
                i3.classList.remove("green")
                li3.classList.remove("size")
            }else{
                i3.classList.remove("dd")
                i3.classList.add("green")
                li3.classList.add("size")
            }
            var rating=this.$refs.rating
            var lg=this.pass.length
            if(lg<8){
                rating.classList.remove("uncommon")
                rating.classList.remove("rare")
                rating.classList.remove("epic")
                rating.classList.remove("dary")
                rating.classList.remove("common")
                this.rating="粗糙"
            }
            if(lg<10&&lg>=8){
                rating.classList.remove("uncommon")
                rating.classList.add("common")
                this.rating="普通"
            }
            if(lg<12&&lg>=10){
                rating.classList.remove("rare")
                rating.classList.add("uncommon")
                this.rating="优秀"
            }
            if(lg<14&&lg>=12){
                rating.classList.remove("epic")
                rating.classList.add("rare")
                this.rating="精良"
            }
            if(lg<15&&lg>=14){
                rating.classList.remove("dary")
                rating.classList.add("epic")
                this.rating="史诗"
            }
            if(lg<16&&lg>=15){
                rating.classList.add("dary")
                this.rating="传说"
            }
        }
    },
    methods: {
        pss(){
            var two=this.$refs.pwd
            //console.log(one)
            two.classList.remove("two")
        },
        passs(){
            var two=this.$refs.pwd
            two.classList.add("two")
            //console.log(one)
        },
        idcard(){
            var one=this.$refs.idcard
            //console.log(one)
            one.classList.remove("one")
        },
        card(){
            var one=this.$refs.idcard
            one.classList.add("one")
            //console.log(one)
        },
        emaill(){
            var email=this.email
            var reg=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/
            var div=this.$refs.email
            var divs=this.$refs.emails
            //console.log(email)
            if(email==""){
                div.classList.add("email")
                divs.classList.remove("gird-red")
                return
            }else if(!reg.test(email)){
                div.classList.remove("email")
                divs.classList.add("gird-red")
            }else{
                div.classList.add("email")
                divs.classList.remove("gird-red")
            }
        },
        /*emailll(){
            var email=this.email
            var reg=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/
            var divs=this.$refs.emails
            if(!reg.test(email)){
                divs.classList.add("girdred")
                console.log("fs")
            }else{
                divs.classList.remove("girdred")
            }
        }*/
        register(){
            var u = this.uname;
            var p = this.pass;
            var e = this.email;
            var i = this.id;
            //3:发送ajax请求
            var url = "http://127.0.0.1:3000/";
            url+="register?uname="+u+"&pass="+p+"&email="+e+"&id="+i;
            this.axios.get(url).then(result=>{
            if(result.data.code==1){
                alert("注册成功");
                this.id=""
                this.uname=""
                this.email=""
                this.pass=""
            }else{
                alert("注册失败")
            }
        })
       }
    },    
}
</script>
<style >
  @import "/css/register.css";   
</style>