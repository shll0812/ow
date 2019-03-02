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
            <div class="main-login">
                <div>
                    <input type="text" placeholder="身份证号码" class="gird">
                    <div class="popover">
                        <div class="arrow"></div>
                        <div class="popover-content">
                            <p>请仔细核对并填写您真实有效的个人身证号码。</p>
                        </div>
                    </div>
                </div>
                <div>
                    <input type="text" placeholder="姓名" class="gird">
                </div>
                <div>
                    <input type="text" placeholder="电子邮箱" class="gird gird-red">
                    <div>
                        <p class="help-block"><i></i>邮箱地址无效。</p>
                    </div>
                </div>
                <div style="position: relative;">
                    <input type="password" placeholder="密码" class="gird">
                    <div class="rating">粗糙</div>
                    <div class="popover" style="display:block">
                        <div class="arrow"></div>
                        <div class="popover-content" >
                            <ul>
                                <li><i></i>使用8-16个字符。</li>
                                <li><i></i>使用至少一个数字字符以及一个字母字符。</li>
                                <li><i></i>请勿使用任何特殊字符。</li>
                                <li><i></i>请勿使用与您账号名称相似的密码。</li>
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
                    <button>免费注册暴雪通行证</button>
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
    
}
</script>
<style >
  @import "/css/register.css";   
</style>