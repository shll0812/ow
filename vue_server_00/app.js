//app.js
//1:加载模块 express pool.js
const express = require("express");
const pool = require("./pool");
//2:创建服务器端对象 
var app = express();
//3:监听 3000
app.listen(3000);
//4:指定静态目录  public  
app.use(express.static("public"));
//5:加载跨域访问模块
const cors = require("cors");
//6:配置跨域访问模块 那个域名跨域访问允许
//  脚手架8080允许
//origin      允许跨域访问域名列表
//credentials 跨域访问保存session id
app.use(cors({
  origin:["http://127.0.0.1:8080",
  "http://localhost:8080"],
  credentials:true
}));
//6.1下载express-session并且配置
const session=require("express-session");
app.all('*', (req, res, next) => {
  res.header("Access-Control-Allow-Origin", req.headers.origin || '*');
  res.header("Access-Control-Allow-Headers", "Content-Type, Authorization, X-Requested-With");
  res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
  res.header("Access-Control-Allow-Credentials", true); // 可以带cookies
  if(req.method == 'OPTIONS') {
      res.sendStatus(200);
  } else {
      next();
  }
});
app.use(session({
  secret:"128位随机字符",
  resave:false,
  saveUninitialized:true,
  cookie:{
    maxAge:1000*60*60*8
  }
}));

//7.加载第三方模块body-parser
const bodyParser=require("body-parser")
//8.配置对json是否自动转换 
app.use(bodyParser.urlencoded({
  extended:false
}));
//功能一:home 组件轮播图片 
/*
app.get("/imageList",(req,res)=>{
   //1:将轮播图中所需图片 复制public/img
   //2:查询
   var list = [
     {id:1,img_url:"http://127.0.0.1:3000/img/banner1.png"},
     {id:2,img_url:"http://127.0.0.1:3000/img/banner2.png"},
     {id:3,img_url:"http://127.0.0.1:3000/img/banner3.png"},
     {id:4,img_url:"http://127.0.0.1:3000/img/banner4.png"},
   ];
   res.send(list); 
});

//功能二:获取新闻列表分页显示
//xz_news表 20 条数据 7行一页  三页
//1:请求参数  pno 页码 pageSize 页大小
//2:哪条sql
// SELECT id,title,img_url,ctime,point
// FROM xz_news
// LIMIT ?,?
//3:返回数据结果json
//  {code:1,data:[]} 
app.get("/newslist",(req,res)=>{
  //1:获取参数 pno pageSize
  var pno = req.query.pno;
  var pageSize = req.query.pageSize;
  //2:设置默认值  pno 1 pageSize 7
  if(!pno){
    pno = 1;
  }
  if(!pageSize){
    pageSize = 7;
  }
  //3:创sql语句 
  var sql = " SELECT id,title,img_url";
  sql +=" ,ctime,point";
  sql +=" FROM xz_news";
  sql +=" LIMIT ?,?";
  var ps = parseInt(pageSize);
  //(2-1)*7= 7
  var offset = (pno-1)*pageSize;
  pool.query(sql,[offset,ps],(err,result)=>{
     if(err)throw err;
     res.send({code:1,data:result});
  })
  //4:返回 
});*/
//新闻功能一.获取新闻页内容
app.get("/news",(req,res)=>{
  //1.sql语句
  var sql="SELECT * FROM ow_news";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

//新闻功能二.获取新闻列表内容
app.get("/allnews",(req,res)=>{
  //1.获取参数 pno
  pno=req.query.pno;
  //2:设置默认值  pno 1
  if(!pno){
    pno = 1;
  }
  //3.sql语句
  var sql="SELECT aid, title,time,content,pic,goods FROM ow_allnews LIMIT ?,6";
  var offset=(pno-1)*6;
  pool.query(sql,[offset],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

//新闻功能三.获取新闻单页内容
app.get("/newsDetails",(req,res)=>{
  var aid=2;
  var sql="SELECT title,time,mpic,mcontent,video,vtitle,vcontent,rcontent FROM ow_allnews WHERE aid=?";
  pool.query(sql,[aid],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result})
  })
})

//新闻功能四.获取图片
app.get("/newspic",(req,res)=>{
  var aid=2;
  var sql="SELECT nid,class,pic FROM ow_pics WHERE aid=?";
  pool.query(sql,[aid],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result})
  })
})

//新闻功能五.获取图片来源
app.get("/newssource",(req,res)=>{
  var aid=2;
  var sql="SELECT aid,nid,content FROM ow_source WHERE aid=?";
  pool.query(sql,[aid],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result})
  })
})

//新闻功能六.获取右侧栏内容
app.get("/leftnews",(req,res)=>{
  //1.获取参数 pno
  var aid=req.query.aid;
  //2:设置默认值  aid=1
  if(!aid){
    aid = 1;
  }
  aid-=1;
  //3.sql语句
  var sql="SELECT aid,title,time,pic FROM ow_allnews LIMIT ?,4";
  pool.query(sql,[aid],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

//新闻功能七.获取评论
app.get("/getContent",(req,res)=>{
  //1.获取参数 aid
  var pno=req.query.pno;
  //2:设置默认值  pno=1
  if(!pno){
    pno=1
  }
  //3.sql语句
  var sql="SELECT uname,uid,content,isb,isi,ctime FROM ow_news_content LIMIT ?,15";
  var offset=(pno-1)*15;
  if(offset<0){
    offset=0;
  }
  pool.query(sql,[offset],(err,result)=>{
    if(err) throw err;
    //4.获取共有多少数据
    pool.query("SELECT COUNT(cid) FROM ow_news_content",(err,count)=>{
      if(err) throw err
      res.send({code:2,c:count,data:result}); 
    });
  })
})
//新闻功能九.添加评论
app.get("/setContent",(req,res)=>{
  //1. 
  var aid=req.query.aid;
  aid=2;
  var uname=req.query.uname;
  uname="流浪地球";
  var uid=req.query.uid;
  uid="1";
  var content=req.query.content;
  var isb=req.query.isb;
  var isi=req.query.isi;
  var ctime=new Date();
  //2.sql
  var sql="INSERT INTO ow_news_content VALUES(NULL,?,?,?,?,?,?,?)"
  pool.query(sql,[aid,uname,uid,content,isb,isi,ctime],(err,result)=>{
    if(err) throw err;
    //console.log(result);
    if(result.affectedRows>0){
      res.send({code:1,data:"评论成功"});
    }else{
      res.send({code:0,data:"评论失败"});
    }
  }) 
})
//功能十.event 皮肤获取图片、文字、地址
app.get("/event_skin",(req,res)=>{
  var sql = "SELECT * FROM event_skin";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})
//功能十一.event 特写获取图片、文字、地址
app.get("/event_feature",(req,res)=>{
  var sql = "SELECT * FROM event_feature";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})
//功能十二.event 表情获取图片、文字、地址
app.get("/event_phiz",(req,res)=>{
  var sql = "SELECT * FROM event_phiz";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})
//功能十:media-shl
app.get('/media',(req,res)=>{
  var mediaAll={
      floor1:{},
      floor2:{},
      floor3:{},
      floor4:{},
      floor5:{},
      floor6:{},
  };
      //查询轮播数据
      pool.query("select * from media_floor1",[],(err,result)=>{
        if(err) throw err; 
        mediaAll.floor1=result;
        
      })
      //查询描述详情数据
      pool.query("select * from media_floor2",[],(err,result)=>{
          if(err)throw err;
          mediaAll.floor2=result;
          
      })
      pool.query("SELECT * FROM media_floor3",[],(err,result)=>{
          if(err)throw err;
          mediaAll.floor3=result;
          
      })    
            // console.log(productAll.details);
            /*productAll.details=result;
              console.log(productAll.details)*/
      pool.query("select * from media_floor4",[],(err,result)=>{
          if(err)throw err;
          mediaAll.floor4=result;
          
      })    
      pool.query("select * from media_floor5",[],(err,result)=>{
          if(err)throw err;
          mediaAll.floor5=result;
          
      })    
      pool.query("select * from media_floor6",[],(err,result)=>{
        mediaAll.floor6=result;
        res.send(mediaAll)
      })
});