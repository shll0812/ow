SET NAMES UTF8;
DROP DATABASE IF EXISTS ow;
CREATE DATABASE ow CHARSET=UTF8;
USE ow;

/**守望新闻主页内容**/
CREATE TABLE ow_news(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(32),	#新闻标题
  pic   VARCHAR(128),   #图片路径
  size VARCHAR(10)      #图片大小
);

/**守望新闻列表内容**/
CREATE TABLE ow_allnews(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(32),	#新闻标题
  time VARCHAR(32),	#发布时间
  content VARCHAR(128),	#新闻副标题
  pic VARCHAR(128),	#图片路径
  goods INT,		#点赞数
  mpic VARCHAR(128),    #单个新闻主页面图片路径
  mcontent VARCHAR(1024),#单个新闻主页面图片文字
  video VARCHAR(128),	#视频路径
  vtitle VARCHAR(128),	#视频标题
  vcontent VARCHAR(1024),#视频文字
  rcontent VARCHAR(1024) #结束语
);

/**守望单个新闻所有图片**/
CREATE TABLE ow_pics(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  aid INT,				  #所属新闻列表id值
  nid INT,                                #单个图片所属类别号
  class VARCHAR(16),			  #图片大小
  pic  VARCHAR(128)                       #图片路径
);

/**守望单个新闻所有图片来源**/
CREATE TABLE ow_source(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  aid INT,				  #所属新闻列表id值
  nid INT,                                #图片所属类别号
  content VARCHAR(128)			  #图片来源描述
);


/*********************/
/******数据导入*******/
/*********************/
/**新闻主页内容**/
INSERT INTO ow_news VALUES
(NULL,"2019欢度新春活动现已开启","./img/news/news-01.jpg","p2"),
(NULL,"定格动画:《饼干先锋》","./img/news/news-02.jpg","p1"),
(NULL,"英雄故事:艾什","./img/news/news-03.jpg","p1"),
(NULL,"《守望先锋》5折优惠","./img/news/news-04.jpg","p1"),
(NULL,"中韩交流赛回顾录像","./img/news/news-05.jpg","p1"),
(NULL,"韩寒贺岁新片《飞驰人生》观影推荐","./img/news/news-06.jpg","p2");

/**守望新闻列表内容**/
INSERT INTO ow_allnews VALUES
(NULL,"探索《守望先锋》：巴黎之声","2019-02-09","我们探寻了巴黎丰富多样的环境音效，在全新的守望先锋地图中使其重现。音效设计主管Paul Lackey将为大家介绍巴黎的地图之声。","./img/news/arr-news-01.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"社区精选 恭贺新禧","2019-02-09","春来福到，福豕拱春又一载，社区精选依旧在。本期内容有：同人动画、小鱿头像、手机壁纸等等。","./img/news/arr-news-02.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"韩寒贺岁新片《飞驰人生》观影推荐","2019-02-09","韩寒导演在他执导的贺岁新片《飞驰人生》中为守望玩家们准备了数个小彩蛋，等待大家的发掘。","./img/news/arr-news-03.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"暴雪打折季 《守望先锋》无限畅玩包仅售38元","2019-02-09","2月1日-2月8日“暴雪打折季”守望狂欢周期间，《守望先锋》迎来史上最低价——“无限畅玩包”仅售38元，“传奇典藏版”仅售98元。","./img/news/arr-news-04.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"2019城市巡礼 2月16日在成都拉开序幕","2019-02-09","《守望先锋》2019城市巡礼将于2月16日（周六）在成都奥克斯广场举行。","./img/news/arr-news-05.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"2月1日-2月8日免费试玩开启 登录送补给箱","2019-02-09","2月1日至2月8日期间，所有玩家都可以免费畅玩《守望先锋》。同时，活动期间登录满30分钟即免费可获得2个标准补给箱奖励。","./img/news/arr-news-06.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"探索《守望先锋》：巴黎之声","2019-02-09","我们探寻了巴黎丰富多样的环境音效，在全新的守望先锋地图中使其重现。音效设计主管Paul Lackey将为大家介绍巴黎的地图之声。","./img/news/arr-news-01.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"社区精选 恭贺新禧","2019-02-09","春来福到，福豕拱春又一载，社区精选依旧在。本期内容有：同人动画、小鱿头像、手机壁纸等等。","./img/news/arr-news-02.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"韩寒贺岁新片《飞驰人生》观影推荐","2019-02-09","韩寒导演在他执导的贺岁新片《飞驰人生》中为守望玩家们准备了数个小彩蛋，等待大家的发掘。","./img/news/arr-news-03.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"暴雪打折季 《守望先锋》无限畅玩包仅售38元","2019-02-09","2月1日-2月8日“暴雪打折季”守望狂欢周期间，《守望先锋》迎来史上最低价——“无限畅玩包”仅售38元，“传奇典藏版”仅售98元。","./img/news/arr-news-04.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"2019城市巡礼 2月16日在成都拉开序幕","2019-02-09","《守望先锋》2019城市巡礼将于2月16日（周六）在成都奥克斯广场举行。","./img/news/arr-news-05.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"2月1日-2月8日免费试玩开启 登录送补给箱","2019-02-09","2月1日至2月8日期间，所有玩家都可以免费畅玩《守望先锋》。同时，活动期间登录满30分钟即免费可获得2个标准补给箱奖励。","./img/news/arr-news-06.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"探索《守望先锋》：巴黎之声","2019-02-09","我们探寻了巴黎丰富多样的环境音效，在全新的守望先锋地图中使其重现。音效设计主管Paul Lackey将为大家介绍巴黎的地图之声。","./img/news/arr-news-01.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"社区精选 恭贺新禧","2019-02-09","春来福到，福豕拱春又一载，社区精选依旧在。本期内容有：同人动画、小鱿头像、手机壁纸等等。","./img/news/arr-news-02.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"韩寒贺岁新片《飞驰人生》观影推荐","2019-02-09","韩寒导演在他执导的贺岁新片《飞驰人生》中为守望玩家们准备了数个小彩蛋，等待大家的发掘。","./img/news/arr-news-03.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"暴雪打折季 《守望先锋》无限畅玩包仅售38元","2019-02-09","2月1日-2月8日“暴雪打折季”守望狂欢周期间，《守望先锋》迎来史上最低价——“无限畅玩包”仅售38元，“传奇典藏版”仅售98元。","./img/news/arr-news-04.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"2019城市巡礼 2月16日在成都拉开序幕","2019-02-09","《守望先锋》2019城市巡礼将于2月16日（周六）在成都奥克斯广场举行。","./img/news/arr-news-05.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！"),
(NULL,"2月1日-2月8日免费试玩开启 登录送补给箱","2019-02-09","2月1日至2月8日期间，所有玩家都可以免费畅玩《守望先锋》。同时，活动期间登录满30分钟即免费可获得2个标准补给箱奖励。","./img/news/arr-news-06.jpg","247","./img/news/main-news/main-news-01.jpg","春来福到，福豕拱春又一载。至此新年到来之际，我们恭祝广大守望先锋的玩家们新年快乐，万事如意！同时，也特别感谢社区的作者们在过去一年中为大家创作的精彩作品。享受游戏，更要享受生活，《守望先锋》非常荣幸的再次陪你们过大年！","./video/news-01.mp4","同人动画连载第一集：重生","守望先锋的剧情一直是社区讨论的热点，然而，目前的剧情却依然疑团重重。社区玩家“潜行瞬杀”不甘于此，那么在他心中的平行世界里会发生怎么样的故事呢？让我们跟随他制作的动画中去一探究竟吧。","本周的社区精选至此告一段落，如果你发现了或者自己制作了精彩的《守望先锋》作品，无论是攻略、视频、画作、COSPLAY还是其他方式，都欢迎您通过电子邮件（邮箱地址：Ow_cmty@battlenet.com.cn）的方式发送给我们，我们会将你们的作品们分享展示给更多的社区玩家们。社区感谢有你，同时也需要更多英雄！");

/**守望单个新闻图片**/
INSERT INTO ow_pics VALUES
(NULL,"2","1","sm","./img/news/main-news/news-other-01.jpg"),
(NULL,"2","1","sm","./img/news/main-news/news-other-02.jpg"),
(NULL,"2","1","sm","./img/news/main-news/news-other-03.jpg"),
(NULL,"2","2","sm","./img/news/main-news/news-other-04.jpg"),
(NULL,"2","2","sm","./img/news/main-news/news-other-05.jpg"),
(NULL,"2","2","sm","./img/news/main-news/news-other-06.jpg"),
(NULL,"2","2","sm","./img/news/main-news/news-other-07.jpg"),
(NULL,"2","2","sm","./img/news/main-news/news-other-08.jpg"),
(NULL,"2","2","sm","./img/news/main-news/news-other-09.jpg"),
(NULL,"2","2","sm","./img/news/main-news/news-other-10.jpg"),
(NULL,"2","2","sm","./img/news/main-news/news-other-11.jpg"),
(NULL,"2","2","sm","./img/news/main-news/news-other-12.jpg"),
(NULL,"2","3","bg","./img/news/main-news/news-other-13.jpg"),
(NULL,"2","4","bg","./img/news/main-news/news-other-14.jpg"),
(NULL,"2","5","md","./img/news/main-news/news-other-15.jpg"),
(NULL,"2","5","md","./img/news/main-news/news-other-16.jpg");

/**守望单个新闻所有图片来源**/
INSERT INTO ow_source VALUES
(NULL,"2","1","守望门神 —— 作者：郭策唯利是图"),
(NULL,"2","2","春节英雄小鱿 —— 作者：钟凌LOVE"),
(NULL,"2","3","禅雅塔“雀神”皮肤设计 —— 投稿：以撒97"),
(NULL,"2","4","迟到的圣诞 —— 投稿：超元气馒头"),
(NULL,"2","5","英雄头像 —— 作者：Relnix Han");

/**守望单个新闻评论**/
CREATE TABLE ow_news_content(
  cid INT PRIMARY KEY AUTO_INCREMENT,	  #评论顺序id
  aid INT,				  #所属新闻列表id值
  uname VARCHAR(128),			  #评论用户
  uid INT,				  #评论用户id
  content VARCHAR(1024),		  #评论内容
  isb TINYINT,				  #是否加粗
  isi TINYINT,			          #是否斜体
  ctime DATETIME			  #评论时间
);
INSERT INTO ow_news_content VALUES
(NULL,"2","逆袭的鲁路修","17","每一次都能出这么经典的动画，守望动画组真是难得","0","1",now()),
(NULL,"2","路人甲","11","社区的作者们真的都好棒啊，支持支持","0","0",now()),
(NULL,"2"," 飞奔的码","20","期待社区的作者们能有更多更好的作品出现","1","1",now()),
(NULL,"2","逆袭的鲁路修","17","守望门神已经贴好了，是时候开始战斗了","1","0",now()),
(NULL,"2","逆袭的鲁路修","17","66666666666666666666666","0","1",now()),
(NULL,"2","路人甲","11","66666666666666","0","0",now()),
(NULL,"2"," 飞奔的码","20","99999999999999999,6翻了","0","0",now()),
(NULL,"2","逆袭的鲁路修","17","66666666666666666666666","0","1",now()),
(NULL,"2","路人甲","11","66666666666666","0","0",now()),
(NULL,"2"," 飞奔的码","20","99999999999999999,6翻了","0","0",now()),
(NULL,"2","逆袭的鲁路修","17","66666666666666666666666","0","1",now()),
(NULL,"2","路人甲","11","66666666666666","0","0",now()),
(NULL,"2"," 飞奔的码","20","99999999999999999,6翻了","0","0",now()),
(NULL,"2","逆袭的鲁路修","17","66666666666666666666666","0","1",now()),
(NULL,"2","路人甲","11","66666666666666","0","0",now()),
(NULL,"2"," 飞奔的码","20","99999999999999999,6翻了","0","0",now()),
(NULL,"2","逆袭的鲁路修","17","66666666666666666666666","0","1",now()),
(NULL,"2","路人甲","11","66666666666666","0","0",now()),
(NULL,"2"," 飞奔的码","20","99999999999999999,6翻了","0","0",now()),
(NULL,"2","逆袭的鲁路修","17","66666666666666666666666","0","1",now()),
(NULL,"2","路人甲","11","66666666666666","0","0",now()),
(NULL,"2"," 飞奔的码","20","99999999999999999,6翻了","0","0",now()),
(NULL,"2","逆袭的鲁路修","17","66666666666666666666666","0","1",now()),
(NULL,"2","路人甲","11","66666666666666","0","0",now()),
(NULL,"2"," 飞奔的码","20","99999999999999999,6翻了","0","0",now()),
(NULL,"2","逆袭的鲁路修","17","66666666666666666666666","0","1",now()),
(NULL,"2","路人甲","11","66666666666666","0","0",now()),
(NULL,"2"," 飞奔的码","20","99999999999999999,6翻了","0","0",now()),
(NULL,"2","逆袭的鲁路修","17","66666666666666666666666","0","1",now()),
(NULL,"2","路人甲","11","66666666666666","0","0",now()),
(NULL,"2"," 飞奔的码","20","99999999999999999,6翻了","0","0",now()),
(NULL,"2","逆袭的鲁路修","17","66666666666666666666666","0","1",now()),
(NULL,"2","路人甲","11","66666666666666","0","0",now()),
(NULL,"2"," 飞奔的码","20","99999999999999999,6翻了","0","0",now()),
(NULL,"2","逆袭的鲁路修","17","66666666666666666666666","0","1",now()),
(NULL,"2","路人甲","11","66666666666666","0","0",now()),
(NULL,"2"," 飞奔的码","20","99999999999999999,6翻了","0","0",now()),
(NULL,"2","逆袭的鲁路修","17","66666666666666666666666","0","1",now()),
(NULL,"2","路人甲","11","66666666666666","0","0",now()),
(NULL,"2"," 飞奔的码","20","99999999999999999,6翻了","0","0",now());

#创建皮肤表
CREATE TABLE event_skin(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(64),
	sm VARCHAR(256),
	big VARCHAR(256),
  isnew INT                                                                                                                                                      
);
#创建特写表
CREATE TABLE event_feature(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(64),
	sm VARCHAR(256),
	mp4 VARCHAR(256),
  isnew INT                                                                                                                                                     
);
#创建表情表
CREATE TABLE event_phiz(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(64),
	sm VARCHAR(256),
	mp4 VARCHAR(256),
  isnew INT                                                                                                                                                         
);
#添加皮肤表内容
INSERT INTO event_skin VALUES
(null,'卡巴那','img/event_img/pifu/pifu-1.jpg','img/event_img/pifu/pifu-1.png',1),
(null,'棒球捕手','img/event_img/pifu/pifu-2.jpg','img/event_img/pifu/pifu-2.png',1),
(null,'高速直球','img/event_img/pifu/pifu-3.jpg','img/event_img/pifu/pifu-3.png',1),
(null,'橄榄球哈特','img/event_img/pifu/pifu-4.jpg','img/event_img/pifu/pifu-4.png',1),
(null,'兜网球手','img/event_img/pifu/pifu-5.jpg','img/event_img/pifu/pifu-5.png',1),
(null,'墨西哥选手','img/event_img/pifu/pifu-6.jpg','img/event_img/pifu/pifu-6.png',1),
(null,'瑞典选手','img/event_img/pifu/pifu-7.jpg','img/event_img/pifu/pifu-7.png',1),
(null,'破浪者','img/event_img/pifu/pifu-8.jpg','img/event_img/pifu/pifu-8.png',1),
(null,'爱尔兰选手','img/event_img/pifu/pifu-9.jpg','img/event_img/pifu/pifu-9.png',1),
(null,'美国选手','img/event_img/pifu/pifu-10.jpg','img/event_img/pifu/pifu-10.png',0),
(null,'摩托车手','img/event_img/pifu/pifu-11.jpg','img/event_img/pifu/pifu-11.png',0),
(null,'冠军选手','img/event_img/pifu/pifu-12.jpg','img/event_img/pifu/pifu-12.png',0),
(null,'板球','img/event_img/pifu/pifu-13.jpg','img/event_img/pifu/pifu-13.png',0),
(null,'蓝色海岸','img/event_img/pifu/pifu-14.jpg','img/event_img/pifu/pifu-14.png',0),
(null,'瑞士选手','img/event_img/pifu/pifu-15.jpg','img/event_img/pifu/pifu-15.png',0),
(null,'烧烤老板：76','img/event_img/pifu/pifu-16.jpg','img/event_img/pifu/pifu-16.png',0),
(null,'沙滩游侠','img/event_img/pifu/pifu-17.jpg','img/event_img/pifu/pifu-17.png',0),
(null,'日本选手','img/event_img/pifu/pifu-18.jpg','img/event_img/pifu/pifu-18.png',0),
(null,'足球队员','img/event_img/pifu/pifu-19.jpg','img/event_img/pifu/pifu-19.png',0),
(null,'长跑选手','img/event_img/pifu/pifu-20.jpg','img/event_img/pifu/pifu-20.png',0),
(null,'前锋球员','img/event_img/pifu/pifu-21.jpg','img/event_img/pifu/pifu-21.png',0),
(null,'韩国选手','img/event_img/pifu/pifu-22.jpg','img/event_img/pifu/pifu-22.png',0),
(null,'田径选手','img/event_img/pifu/pifu-23.jpg','img/event_img/pifu/pifu-23.png',0),
(null,'瑞典选手','img/event_img/pifu/pifu-24.jpg','img/event_img/pifu/pifu-24.png',0),
(null,'法国选手','img/event_img/pifu/pifu-25.jpg','img/event_img/pifu/pifu-25.png',0),
(null,'潜泳选手','img/event_img/pifu/pifu-26.jpg','img/event_img/pifu/pifu-26.png',0),
(null,'举重选手','img/event_img/pifu/pifu-27.jpg','img/event_img/pifu/pifu-27.png',0),
(null,'胜利女神','img/event_img/pifu/pifu-28.jpg','img/event_img/pifu/pifu-28.png',0);
#添加特写表内容
INSERT INTO event_feature VALUES
(null,'守门讯员','img/event_img/texie/texie-1.jpg','img/event_img/texie/texie-1.mp4',1),
(null,'发球得分','img/event_img/texie/texie-2.jpg','img/event_img/texie/texie-2.mp4',1),
(null,'倒挂金钩','img/event_img/texie/texie-3.jpg','img/event_img/texie/texie-3.mp4',0),
(null,'跨栏飞人','img/event_img/texie/texie-4.jpg','img/event_img/texie/texie-4.mp4',0),
(null,'铅球发射','img/event_img/texie/texie-5.jpg','img/event_img/texie/texie-5.mp4',0),
(null,'空着灌篮','img/event_img/texie/texie-6.jpg','img/event_img/texie/texie-6.mp4',0),
(null,'百步穿杨','img/event_img/texie/texie-7.jpg','img/event_img/texie/texie-7.mp4',0);
#添加表情表内容
INSERT INTO event_phiz VALUES
(null,'乒乓','img/event_img/biaoqing/biaoqing-1.jpg','img/event_img/biaoqing/biaoqing-1.mp4',1),
(null,'沙滩球','img/event_img/biaoqing/biaoqing-2.jpg','img/event_img/biaoqing/biaoqing-2.mp4',0),
(null,'拳击','img/event_img/biaoqing/biaoqing-3.jpg','img/event_img/biaoqing/biaoqing-3.mp4',0),
(null,'颠球','img/event_img/biaoqing/biaoqing-4.jpg','img/event_img/biaoqing/biaoqing-4.mp4',0),
(null,'体操','img/event_img/biaoqing/biaoqing-5.jpg','img/event_img/biaoqing/biaoqing-5.mp4',0);

#****************************************************************************************************

CREATE TABLE media_floor1(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(64),
	sm VARCHAR(256),
	video VARCHAR(256),                                                                                                                                      pid INT        
);
CREATE TABLE media_floor2(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(64),
	sm VARCHAR(256),
	big VARCHAR(256),                                                                                                                                      pid INT        
);
CREATE TABLE media_floor3(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(64),
	sm VARCHAR(256),
	big VARCHAR(256),                                                                                                                                      pid INT        
);
CREATE TABLE media_floor4(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(64),
	sm VARCHAR(256),
	big VARCHAR(256),                                                                                                                                      pid INT        
);
CREATE TABLE media_floor5(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(64),
	sm VARCHAR(256),
	big VARCHAR(256),                                                                                                                                      pid INT        
);
CREATE TABLE media_floor6(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(64),
	sm VARCHAR(256),
	phone VARCHAR(256), 
  big VARCHAR(256),
  mid VARCHAR(256),
  ipad VARCHAR(256),
  pid INT        
);
INSERT INTO media_floor1 VALUES
(NULL,"动画视频","img/shl/floor1/s1-1.jpg","video/shl/s1-1.mp4","1"),
(NULL,"游戏视频2","img/shl/floor1/s1-2.jpg","video/shl/s1-2.mp4","1"),
(NULL,"动画短片：《重逢》","img/shl/floor1/s2-1.jpg","video/shl/s2-1.mp4","1"),
(NULL,"动画短片：《星光闪耀》","img/shl/floor1/s2-2.jpg","video/shl/s2-2.mp4","1"),
(NULL,"动画短片：《荣耀》","img/shl/floor1/s2-3.jpg","video/shl/s2-3.mp4","1"),
(NULL,"动画短片：《我们出发吧》","img/shl/floor1/s2-4.jpg","video/shl/s2-4.mp4","1"),
(NULL,"动画短片：《渗透》","img/shl/floor1/s3-1.jpg","video/shl/s2-1.mp4","1"),
(NULL,"动画短片：《最后的堡垒》","img/shl/floor1/s3-2.jpg","video/shl/s2-2.mp4","1"),
(NULL,"动画短片：《英雄》","img/shl/floor1/s3-3.jpg","video/shl/s2-3.mp4","1"),
(NULL,"动画短片：《双龙》","img/shl/floor1/s3-4.jpg","video/shl/s2-4.mp4","1"),
(NULL,"动画短片：《新生》","img/shl/floor1/s4-1.jpg","video/shl/s2-1.mp4","1"),
(NULL,"动画短片：《归来》","img/shl/floor1/s4-2.jpg","video/shl/s2-2.mp4","1"),
(NULL,"游戏视频1","img/shl/floor1/s4-3.jpg","video/shl/s2-3.mp4","1"),
(NULL,"剧场版宣传视频","img/shl/floor1/s4-4.jpg","video/shl/s2-4.mp4","1"),
(NULL,"动画视频：“守望动员令”","img/shl/floor1/s5-1.jpg","video/shl/s2-1.mp4","1"),
(NULL,"英雄故事：艾什","img/shl/floor1/s5-2.jpg","video/shl/s2-2.mp4","1"),
(NULL,"英雄故事：“破坏球”","img/shl/floor1/s5-3.jpg","video/shl/s2-3.mp4","1"),
(NULL,"英雄故事：布丽吉塔","img/shl/floor1/s5-4.jpg","video/shl/s2-4.mp4","1");
INSERT INTO media_floor2 VALUES
(NULL,"漫画：《威尼斯行动》","img/shl/floor2/s1-1.jpg","img/shl/floor3/s1-1-b.jpg","2"),
(NULL,"漫画：《雪人大作战》","img/shl/floor2/s1-2.jpg","img/shl/floor3/s1-2-b.jpg","2"),
(NULL,"漫画：《万圣夜惊魂》","img/shl/floor2/s1-3.jpg","img/shl/floor3/s1-3-b.jpg","2"),
(NULL,"漫画：《搜索》","img/shl/floor2/s1-4.jpg","img/shl/floor3/s1-4-b.jpg","2"),
(NULL,"漫画：《废土》","img/shl/floor2/s2-1.jpg","img/shl/floor3/s2-1-b.jpg","2"),
(NULL,"漫画：《伪装》","img/shl/floor2/s2-2.jpg","img/shl/floor3/s2-2-b.jpg","2"),
(NULL,"漫画：《危机》","img/shl/floor2/s2-3.jpg","img/shl/floor3/s2-3-b.jpg","2"),
(NULL,"漫画：《二进制》","img/shl/floor2/s2-4.jpg","img/shl/floor3/s2-4-b.jpg","2");
INSERT INTO media_floor3 VALUES
(NULL,"艾什","img/shl/floor3/s1-1.jpg","img/shl/floor3/s1-1-b.jpg","3"),
(NULL,"艾什","img/shl/floor3/s1-2.jpg","img/shl/floor3/s1-2-b.jpg","3"),
(NULL,"艾什","img/shl/floor3/s1-3.jpg","img/shl/floor3/s1-3-b.jpg","3"),
(NULL,"釜山","img/shl/floor3/s1-4.jpg","img/shl/floor3/s1-4-b.jpg","3"),
(NULL,"釜山","img/shl/floor3/s2-1.jpg","img/shl/floor3/s2-1-b.jpg","3"),
(NULL,"釜山","img/shl/floor3/s2-2.jpg","img/shl/floor3/s2-2-b.jpg","3"),
(NULL,"釜山","img/shl/floor3/s2-3.jpg","img/shl/floor3/s2-3-b.jpg","3"),
(NULL,"破坏球","img/shl/floor3/s2-4.jpg","img/shl/floor3/s2-4-b.jpg","3");
INSERT INTO media_floor4 VALUES
(NULL,"破坏球","img/shl/floor4/s1-1.jpg","img/shl/floor4/s1-1-b.jpg","4"),
(NULL,"布丽吉塔","img/shl/floor4/s1-2.jpg","img/shl/floor4/s1-2-b.jpg","4"),
(NULL,"莫伊拉","img/shl/floor4/s1-3.jpg","img/shl/floor4/s1-3-b.jpg","4"),
(NULL,"弗兰狂斯鼠归来","img/shl/floor4/s1-4.jpg","img/shl/floor4/s1-4-b.jpg","4"),
(NULL,"末日铁拳","img/shl/floor4/s2-1.jpg","img/shl/floor4/s2-1-b.jpg","4"),
(NULL,"奥丽莎","img/shl/floor4/s2-2.jpg","img/shl/floor4/s2-2-b.jpg","4"),
(NULL,"西游记","img/shl/floor4/s2-3.jpg","img/shl/floor4/s2-3-b.jpg","4"),
(NULL,"黑影","img/shl/floor4/s2-4.jpg","img/shl/floor4/s2-3-b.jpg","4");
INSERT INTO media_floor5 VALUES
(NULL,"D.Va","img/shl/floor5/s1-1.jpg","img/shl/floor3/s1-1-b.jpg","5"),
(NULL,"美","img/shl/floor5/s1-2.jpg","img/shl/floor3/s1-2-b.jpg","5"),
(NULL,"源氏","img/shl/floor5/s1-3.jpg","img/shl/floor3/s1-3-b.jpg","5"),
(NULL,"路霸","img/shl/floor5/s1-4.jpg","img/shl/floor3/s1-4-b.jpg","5"),
(NULL,"狂鼠","img/shl/floor5/s2-1.jpg","img/shl/floor3/s2-1-b.jpg","5"),
(NULL,"卢西奥","img/shl/floor5/s2-2.jpg","img/shl/floor3/s2-2-b.jpg","5"),
(NULL,"士兵：76","img/shl/floor5/s2-3.jpg","img/shl/floor3/s2-3-b.jpg","5"),
(NULL,"查莉娅","img/shl/floor5/s2-4.jpg","img/shl/floor3/s2-4-b.jpg","5");
INSERT INTO media_floor6 VALUES
(NULL,"纳米可乐 D.Va","img/shl/floor6/s1-1.jpg","img/shl/floor6/s1-1.jpg","img/shl/floor6/s1-1.jpg","img/shl/floor6/s1-1.jpg","img/shl/floor6/s1-1.jpg","6"),  
(NULL,"英雄","img/shl/floor6/s1-2.jpg","img/shl/floor6/s1-2.jpg","img/shl/floor6/s1-2.jpg","img/shl/floor6/s1-2.jpg","img/shl/floor6/s1-2.jpg","6");


/**守望用户列表**/
CREATE TABLE ow_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),	#用户名
  upwd  VARCHAR(32),    #密码
  email VARCHAR(64),    #电子邮箱
  idnumber VARCHAR(32)	#身份证号
);

INSERT INTO ow_user VALUES
(null,"测试1","123456789","15112@qq.com","12345678912345678912"),
(null,"测试2","123456789","15113@qq.com","12345678912345678912"),
(null,"测试3","123456789","15114@qq.com","12345678912345678912"),
(null,"测试4","123456789","15115@qq.com","12345678912345678912"),
(null,"测试5","123456789","15116@qq.com","12345678912345678912"),
(null,"无敌","123456789","153@qq.com","12345678912345678912"),
(null,"囧","123456789","154@qq.com","12345678912345678912"),
(null,"寂寞","123456789","155@qq.com","12345678912345678912");



