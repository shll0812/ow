<template>
<div id="lwh">
    <section id="video_lunbo">
        <div class="video_box">
            <video src="img/lwh/img/1_assets_images_hero_dva_ability-fusion-cannons_video-ability.mp4" muted preload="none" autoplay loop class="video_show show " >
            </video>
            <video src="" muted="muted"  preload="none" autoplay loop  class="video_show show"></video>
            <video src="" muted="muted" preload="none" autoplay loop class="video_show show"></video>
            <video src="" muted="muted"  preload="none" autoplay loop class="video_show show"></video>
            <video src="" muted="muted" preload="none" autoplay loop class="video_show show"></video>
            <video src="" muted="muted" preload="none" autoplay loop class="video_show show"></video>
            <video src="" muted="muted" preload="none" autoplay loop class="video_show show"></video>
            <video src="" muted="muted" preload="none" autoplay loop class="video_show show"></video>
            <div class="video_text">
                <h1 class="hero_name">D.Va</h1>
                <ul class="button_list">
                    <li class="hero_button" :data-name="this.list[0].src" @click="vplay">
                    <svg viewBox="0 0 100 100" class="button_bg">
                        <circle cx="50" cy="50" r="50"></circle>
                    </svg>
                    <svg viewBox="0 0 100 100" class="progress_svg"></svg>
                    <img src="img/lwh/img/1_assets_images_hero_dva_icon-right-menu.png" class="hero_icon">
                    </li>
                    <li class="hero_button" :data-name="this.list[1].src" @click="vplay">
                    <svg viewBox="0 0 100 100" class="button_bg">
                        <circle cx="50" cy="50" r="50"></circle>
                    </svg>
                    <svg viewBox="0 0 100 100" class="progress_svg"></svg>
                    <img src="img/lwh/img/1_assets_images_hero_dva_ability-fusion-cannons_icon-ability.png" class="hero_icon">
                    </li>
                    <li class="hero_button" :data-name="this.list[2].src" @click="vplay">
                    <svg viewBox="0 0 100 100" class="button_bg">
                        <circle cx="50" cy="50" r="50"></circle>
                    </svg>
                    <svg viewBox="0 0 100 100" class="progress_svg"></svg>
                    <img src="img/lwh/img/1_assets_images_hero_dva_ability-light-gun_icon-ability.png" class="hero_icon">
                    </li>
                    <li class="hero_button" :data-name="this.list[3].src" @click="vplay">
                    <svg viewBox="0 0 100 100" class="button_bg">
                        <circle cx="50" cy="50" r="50"></circle>
                    </svg>
                    <svg viewBox="0 0 100 100" class="progress_svg"></svg>
                    <img src="img/lwh/img/1_assets_images_hero_dva_ability-boosters_icon-ability.png" class="hero_icon">
                    </li>
                    <li class="hero_button" :data-name="this.list[4].src" @click="vplay">
                    <svg viewBox="0 0 100 100" class="button_bg">
                        <circle cx="50" cy="50" r="50"></circle>
                    </svg>
                    <svg viewBox="0 0 100 100" class="progress_svg"></svg>
                    <img src="img/lwh/img/1_assets_images_hero_dva_ability-defense-matrix_icon-ability.png" class="hero_icon">
                    </li>
                    <li class="hero_button" :data-name="this.list[5].src" @click="vplay">
                    <svg viewBox="0 0 100 100" class="button_bg">
                        <circle cx="50" cy="50" r="50"></circle>
                    </svg>
                    <svg viewBox="0 0 100 100" class="progress_svg"></svg>
                    <img src="img/lwh/img/1_assets_images_hero_dva_ability-micro-missiles_icon-ability.png" class="hero_icon">
                    </li>
                    <li class="hero_button" :data-name="this.list[6].src" @click="vplay">
                    <svg viewBox="0 0 100 100" class="button_bg">
                        <circle cx="50" cy="50" r="50"></circle>
                    </svg>
                    <svg viewBox="0 0 100 100" class="progress_svg"></svg>
                    <img src="img/lwh/img/1_assets_images_hero_dva_ability-self-destruct_icon-ability.png" class="hero_icon">
                    </li>
                    <li class="hero_button" :data-name="this.list[7].src" @click="vplay">
                    <svg viewBox="0 0 100 100" class="button_bg">
                     <circle cx="50" cy="50" r="50"></circle>
                     </svg>
                      <svg viewBox="0 0 100 100" class="progress_svg"></svg>
                    <img src="img/lwh/img/1_assets_images_hero_dva_ability-call-mech_icon-ability.png" class="hero_icon">
                     </li>
                </ul>
                <div class="video-bottom"><img src="img/lwh//img/1_assets_img_dividers_wing.png" alt=""></div>
            </div>
        </div>
    </section>
    <section id="details" class="hero_details">
        <div class="hero_details_bg con_2"></div>
        <div class="hero_details_video">
            <div class="video_bg">
                <video class="con_1" src="img/lwh/img/1_assets_images_hero_dva_idle-video.webm" autoplay loop muted>
                </video>
            </div>
        </div>
        <div class="inner">
            <div class="hero_details_mobile">
                <div class="content_box">
                    <h1 class="hero-name">D.Va</h1>
                    <img src="img/lwh/img/full-portrait.png">
                </div>
            </div>
            <div class="hero_details_tabs">
                <div id="tabs">
                    <ul id="details_tabs">
                        <li class="tabs_title "   ><a class="tbt" href="javascript:;" @click="open">概况</a></li>
                        <li class="tabs_title1 acta"  ><a class="tbt" href="javascript:;" @click="open">故事</a></li> 
                    </ul>
                    <div class="tabs-content">
											<div class="tabs-pane2 con_2">
												<div class="hero-detail-wrapper1">
													 <h3 class="h4 hero-detail-title">简介</h3>
                                <ul class="hero-bio">
                                    <li class="name">
                                        <svg viewbox="0 0 32 32" role="presentation" class="icon hero-bio-icon">
																						<g id="namecard">
																							<path fill="none" d="M14.6,20.6c-0.1,0.2-0.2,0.5-0.3,0.7H15v-1.2C14.8,20.2,14.7,20.4,14.6,20.6z"></path>
																							<polygon fill="none" points="22,23.8 22.3,23.6 21.8,23.6 "></polygon>
																							<path d="M31.1,19c-0.8-2.2-2.1-2.4-4.1-3.2c-0.2-0.1-0.4-0.2-0.6-0.4c-0.4,0-0.6-0.3-0.8-0.6c-0.7-0.9-1.2-1.1-1.7-2.1    c-0.4-0.8-0.3-1.4,0.3-2.1c1.3-1.4,1.5-3,1.3-4.8c0-0.1,0-0.1,0-0.2c-0.1,0-0.2-0.1-0.3-0.1c-0.1,0-0.3-0.1-0.4,0    c-0.6,0.4-1.3-0.2-1.9,0.3l-0.1,0.1c-0.1,0-0.8,1-0.8,0.8c-0.1-0.3-0.1-0.5,0.2-0.7c0.6-0.5,1.2-1.1,1.9-1.5c0.1,0,0.2,0,0.2-0.1    C24.4,4.1,24.7,4,25,3.9c-0.5-1-1.5-1.7-2.8-1.8c-2.9-0.3-4.1,1-4.4,2.3c-0.5,2.4-0.8,4.2,1.1,6.2c0.3,0.4,0.6,0.8,0.4,1.3    c-0.6,1.6-1.5,2.3-2.7,3.6c-0.1,0-0.1-0.1-0.1-0.1c-0.1,0.1-0.2,0.2-0.3,0.2c-0.4,0.2-0.9,0.2-1.4,0.4c-1.4,0.4-2.1,1.5-2.6,2.8    l9.5,5.5h0.5l8.9-5.1C31.2,19.1,31.1,19,31.1,19z"></path>
																							<path d="M2.4,27.3c0.3-0.1,0.6,0,0.9,0c0.4,0,0.5,0,0.6-0.4C4,26.8,4,26.6,4.1,26.4c-0.3-0.1-0.5-0.3-0.5-0.7V10.4    c0-0.4,0.3-0.7,0.7-0.7h8.8l0.8-3.5H4.3C2,6.1,0.2,8,0.2,10.3v15.4c0,0.6,0.1,1.2,0.4,1.7C1.1,27.5,1.8,27.5,2.4,27.3z"></path>
																							<path d="M28.7,24.6v1.1c0,0.4-0.3,0.7-0.7,0.7H4.3l0,0c0,0.2-0.1,0.4,0,0.6c0.1,0.3-0.2,0.4-0.4,0.6c-0.4,0.3-0.9,0.5-1.3,0.8    c-0.3,0.2-0.7,0.3-1,0.5C2.3,29.6,3.3,30,4.4,30H28c2.3,0,4.2-1.9,4.2-4.2v-3.1L28.7,24.6z"></path>
																						</g>
                                        </svg><span class="hero-bio-copy">全称：宋哈娜，年龄：19岁</span></li>
                                    <li class="occupation">
                                        <svg viewbox="0 0 32 32" role="presentation" class="icon hero-bio-icon">
																						<g id="luggage">
		<polygon points="12.8,1.4 9.5,5.6 12.7,10.5 14.5,10.6 12.3,5.6 14.1,3.2 14.1,3.2 14.9,4.1 17.2,4.1 17.9,3.1 18,3.1 19.9,5.9    17.4,10.6 19.2,10.6 22.5,5.7 19.3,1.4  "></polygon>
		<g>
			<path d="M3.1,28c0.4,0,0.5,0,0.6-0.4c0.1-0.2,0.1-0.4,0.2-0.6c-0.3-0.1-0.5-0.3-0.5-0.7V12.1V11c0-0.4,0.3-0.7,0.7-0.7h23.8l0,0     c0-0.2,0.1-0.4,0-0.6c-0.1-0.3,0.2-0.4,0.4-0.6c0.4-0.3,0.9-0.5,1.3-0.8c0.3-0.2,0.7-0.3,1-0.5c-0.7-0.7-1.7-1.1-2.8-1.1H13.7H4.2     C1.9,6.8,0,8.7,0,11v3.1v12.4c0,0.6,0.1,1.2,0.4,1.7c0.6,0,1.2,0,1.8-0.1C2.5,28,2.8,28,3.1,28z"></path>
			<path d="M31.6,9.3c-0.6,0-1.2,0-1.8,0.1c-0.3,0.1-0.6,0-0.9,0c-0.4,0-0.5,0-0.6,0.4c-0.1,0.2-0.1,0.4-0.2,0.6     c0.3,0.1,0.5,0.3,0.5,0.7v14.3v1.1c0,0.4-0.3,0.7-0.7,0.7H4.1l0,0c0,0.2-0.1,0.4,0,0.6c0.1,0.3-0.2,0.4-0.4,0.6     c-0.4,0.3-0.9,0.5-1.3,0.8c-0.3,0.2-0.7,0.3-1,0.5c0.7,0.7,1.7,1.1,2.8,1.1h14.1h9.5c2.3,0,4.2-1.9,4.2-4.2v-3.1V11     C32,10.4,31.9,9.8,31.6,9.3z"></path>
		</g>
		<path d="M29.4,16.1l-0.5-5.6l-1.3-0.3c0,0-17.2-1-17.4-1S3.7,9.3,3.5,9.3s-1,1.7-1,1.7l0.6,5.2l3.5,3.1h9.2c0,0-0.1,0-0.1-0.1    L11,14.4c-0.2-0.2,0.1-0.6,0.3-0.4l4.6,2.1c0.1,0.1,0.2,0.1,0.3,0l4.6-2.1c0.3-0.2,0.6,0.2,0.3,0.4l-4.8,4.8c0,0-0.1,0-0.1,0.1H25    L29.4,16.1z"></path>
		<path d="M16.1,19.3h-0.2C16,19.3,16,19.3,16.1,19.3z"></path>
		<path d="M28.9,28c-0.4,0-0.5,0-0.6-0.4c-0.1-0.2-0.1-0.4-0.2-0.6c0.3-0.1,0.5-0.3,0.5-0.7V12.1V11c0-0.4-0.3-0.7-0.7-0.7H4.1l0,0    c0-0.2-0.1-0.4,0-0.6c0.1-0.3-0.2-0.4-0.4-0.6C3.3,8.9,2.9,8.6,2.4,8.4C2,8.3,1.7,8.1,1.4,7.9c0.7-0.7,1.7-1.1,2.8-1.1h14.1h9.5    c2.3,0,4.2,1.9,4.2,4.2v3.1v12.4c0,0.6-0.1,1.2-0.4,1.7c-0.6,0-1.2,0-1.8-0.1C29.5,28,29.2,28,28.9,28z"></path>
	</g>
																						</use>
                                        </svg><span class="hero-bio-copy">职业：（前）职业玩家，机甲驾驶员</span></li>
                                    <li class="base">
                                        <svg viewbox="0 0 32 32" role="presentation" class="icon hero-bio-icon">
																						<g id="world">
		<path d="M30,16.4l-2.1,2.1l-2.1-2.1h-1.7L23.5,17l-3.1-3v-1.4h-3l-1.7-1.7L13.6,13h2.3l0.9,0.9h2.4l4,4v1.3l-2.4,2.4v3.9l-2.9,2.9    h-1.2l-1.9-1.9v-5L13.5,20h-2.1l-2.2-2.2v-2.3l3-2.5v-2.8l4.9-4.9l1.5,1.5H22l2.5-2.5c-2.4-1.7-5.3-2.8-8.5-2.8    c-3,0-5.7,0.9-8,2.4h6.4l-3,3h-2L8,8.4H6.8V4.8c-0.7,0.6-1.4,1.3-2,2v3.1L2,12.8c-0.2,1-0.3,2-0.3,3.1c0,0.4,0,0.8,0.1,1.2L8.3,22    v2.3l-2,2c2.6,2.4,6.1,3.9,9.9,3.9c7.7,0,13.9-6,14.4-13.6L30,16.4z M22.1,25.2h-0.8v-3.7h0.8V25.2z"></path>
		<path fill="none" d="M29.9,16c0-7.6-6.2-13.8-13.8-13.8C8.4,2.2,2.2,8.4,2.2,16c0,4.8,2.4,9,6.1,11.5c0.4,0,0.8-0.1,1.2-0.2    s0.8,0,1.2,0c0.5,0,0.7,0,0.8-0.5c0.3-0.8,0.4-1.7,0.5-2.5c0-0.2,0.1-0.3,0.2-0.5c0.1,0.6,0,1.2-0.2,1.8c-0.1,0.4-0.2,0.8-0.1,1.3    c0.1,0.4-0.2,0.6-0.5,0.7c-0.4,0.3-0.9,0.6-1.4,0.8c1.8,0.9,3.8,1.4,6,1.4C23.7,29.8,29.9,23.6,29.9,16z"></path>
		<path d="M16,0C7.2,0,0,7.2,0,16c0,4.9,2.2,9.2,5.6,12.2c0.2-0.5,0.5-0.7,1.1-0.6c0.5,0,1.1,0,1.6,0C4.6,25,2.2,20.8,2.2,16    C2.2,8.4,8.4,2.2,16,2.2S29.8,8.4,29.8,16S23.6,29.8,16,29.8c-2.1,0-4.1-0.5-6-1.4c-0.1,0-0.2,0.1-0.3,0.2c-0.7,0.3-1.3,0.7-2,1    c0,0,0,0-0.1,0C10.2,31.2,13,32,16,32c8.8,0,16-7.2,16-16S24.8,0,16,0z"></path>
	</g>
                                        </svg><span class="hero-bio-copy"> 行动基地：韩国，釜山</span></li>
                                    <li class="affiliation">
                                        <svg viewbox="0 0 32 32" role="presentation" class="icon hero-bio-icon">
																						<g id="shield">
		<polygon fill="none" points="20.8,8 17,-3.8 13.2,8 0.7,8 10.8,15.3 6.9,27.2 17,19.8 27.1,27.2 23.2,15.3 33.3,8 "></polygon>
		<polygon fill="none" points="20.8,8 17,-3.8 13.2,8 0.7,8 10.8,15.3 6.9,27.2 17,19.8 27.1,27.2 23.2,15.3 33.3,8 "></polygon>
		<path d="M28.8,2.3c-0.2-0.2-0.5-0.1-0.8,0c0.6,0.2,0.9,0.6,1.3,0.9c-0.4,0-0.6-0.2-1-0.3c-0.1,0-0.3-0.1-0.4,0    c-0.6,0.4-1.3,0.5-1.9,1L25.9,4c-0.1,0-0.8-0.4-0.8-0.6C25,3.1,25,2.9,25.3,2.7c0.6-0.5,1.2-1.1,2-1.5c0.1,0,0.2,0,0.2-0.1    c0.1-0.4,0.4-0.6,0.9-0.6c0.4,0,0.7,0,1.1,0c-0.5-0.4-1.2-0.6-1.9-0.6H5.3c-1.9,0-3.5,1.6-3.5,3.5v17.9c0,1.1,0.5,2,1.2,2.7v0.3    l4.4,2.5c0.2-0.3,0.6-0.5,1.1-0.4c1.1,0,2.1,0,3.2-0.2c0.4-0.1,0.9-0.1,1.3,0c0.5,0.1,0.8,0,0.9-0.5c0.3-0.9,0.4-1.9,0.6-2.9    c0-0.2,0.1-0.4,0.2-0.5c0.1,0.7,0,1.4-0.2,2.1c-0.1,0.5-0.3,0.9-0.2,1.4c0.1,0.4-0.3,0.6-0.5,0.8c-0.6,0.4-1.2,0.8-1.9,1.1    c-0.6,0.3-1.1,0.5-1.7,0.9l6.1,3.5l13.4-7.7v-0.2c0.8-0.6,1.3-1.6,1.3-2.7V3.6c0-0.7-0.2-1.4-0.6-1.9c-0.4,0.2-0.8,0.4-1.2,0.7    C29.1,2.4,29,2.4,28.8,2.3z M23.9,23.8l-7-5.1l-7,5.1l2.7-8.3l-7-5.1h8.7L17,2.1l2.7,8.3h8.7l-7,5.1L23.9,23.8z"></path>
	</g>

                                        </svg><span class="hero-bio-copy">隶属：韩国陆军特别机动部队</span></li>
                                </ul>
                            </div>

												<div class="hero-detail-wrapper2">
													<p class="h4 hero-detail-title">“玩游戏就是要赢。”</p>
                                <div class="hero-bio-backstory pad-sm">
                                    
                                    <p>D.Va曾是一名职业玩家，而现在则利用自己的技巧驾驶一台尖端机甲保卫国家。</p>
                                    <p>二十年前，韩国遭到一台从东海出现的巨型机甲怪兽的攻击。这台怪物在被击退前对多个沿海城市造成了毁灭性的破坏。为了应对这一威胁，韩国政府部署了一支机械化无人机部队“MEKA”，用以应对未来的智能机械威胁、保卫城市。</p>
                                    <p>随着一系列袭击事件的不断发生，韩国政府最担心的事情还是发生了。每过几年，那台巨型机械怪兽就会从海中出现袭击韩国和邻国。这台智能机械可以从每一次的遭遇战中学习，使用新武器和能力并且以不同形态出现。尽管韩国每次都能成功将其击退，但这台智能机械并未被彻底摧毁。</p>
                                    <p>随着智能机械不断进化，它最终干扰了MEKA的无人机控制网络，迫使军方派驾驶员驾驶这些机甲。由于难以找到合适的候选人，政府开始向那些拥有足以操控机甲尖端武器系统的必要反应和本能的国内职业玩家寻求帮助，其中就包括顶尖玩家之一的“D.Va”宋哈娜。作为一名为了获胜不惜一切代价的精英玩家，D.Va从来都不会对对手表现出丝毫的仁慈。</p>
                                    <p>D.Va将这次新任务视为一款全新的游戏，无所畏惧地和其他MEKA机甲冲向战场，随时准备保卫自己的国家。最近，她开始向她的粉丝直播战斗行动，而这也让她成为了世界巨星。</p>
                                
                                </div>

												</div>
											</div>
                        <div class="tabs-panel con_1">
                            <div class="hero-wrapper">
                                <div class="row">
                                    <div class="hero-role">
                                        <h3 class="hero-details-title">角色类型</h3>
                                        <h4 class="hero-details-role">重装</h4>
                                        <svg viewBox="0 0 32 32" role="presentation" class="icon hero-detail-role-icon">
                                            <g id="tank">
                                                <path d="M29 10.7v6.2c0 .6-.1 1.1-.4 1.6-2.9 5.3-6.8 9.7-11.8 13.2-.6.4-1 .4-1.6 0-4.9-3.4-8.8-7.8-11.7-13-.3-.6-.4-1.2-.4-1.8 0-3.9.1-7.8 0-11.7-.1-2.9 2.1-3.3 4-3.8C10.4.6 13.3 0 16.6 0c3.1 0 7.7 1.1 9.4 1.6 1.3.4 2.7.9 2.9 2.2.1 1.1 0 2.2.1 3.3v3.6z"></path>
                                            </g>
                                        </svg>
                                    </div>
                                    <div class="col">
                                        <div class="col-difficulty">
                                            <h3 class="hero-details-title">难度</h3>
                                            <span class="star"></span>
                                            <span class="star"></span>
                                            <span class="star-empty"></span>
                                        </div>
                                    </div>
                                </div>
                        <p class="hero-description">
                                    D.Va拥有一部强大的机甲，它具有两台全自动的近距离聚变机炮、可以使机甲飞跃敌人或障碍物的推进器、 还有可以抵御来自正面的远程攻击的防御矩阵。
                                </p>
</div>
                <hr class="tab-separator">
                <div class="hero-pad">
                    <h3 class="hero-details-title">技能</h3>
                    <div class="hero-abilities"></div>
                    <div class="hero-ability">
                        <div class="hero-icon-container">
                            <div class="hero-ability-icon-bg m-small"><img src="img/lwh/img/1_assets_images_hero_dva_ability-fusion-cannons_icon-ability.png" class="hero-ability-icon m-weapon"></div>
                        </div>
                        <div class="hero-ability-descriptor">
                            <h4 class="h5">机甲：聚变机炮</h4>
                            <svg  class="iconl"></svg>
    <p>D．Va的机甲装备有两台近距离旋转机炮。它们可以在不重新装填的情况下进行持续高伤害的火力输出，但使用时会降低D.Va的移动速度。</p>
                        </div>
                    </div>
                    <div class="hero-ability1">
                            <div class="hero-icon-container">
                                <div class="hero-ability-icon-bg m-small"><img src="img/lwh/img/1_assets_images_hero_dva_ability-light-gun_icon-ability.png" class="hero-ability-icon m-weapon"></div>
                            </div>
                            <div class="hero-ability-descriptor">
                                <h4 class="h5">驾驶员：光枪</h4>
                                <svg  class="iconl"></svg>
        <p>离开机甲时，D.Va可以用中距离全自动冲击枪继续战斗</p>
                            </div>
                        </div>
                        <div class="hero-ability2">
                                <div class="hero-icon-container">
                                    <div class="hero-ability-icon-bg m-small"><img src="img/lwh/img/1_assets_images_hero_dva_ability-boosters_icon-ability.png" class="hero-ability-icon m-weapon"></div>
                                </div>
                                <div class="hero-ability-descriptor">
                                    <h4 class="h5">机甲：推进器</h4>
                                    <svg  class="iconl"></svg>
            <p>D.Va的机甲可以飞向空中。当加速器启动时，D.Va可以向前飞行。她可以改变飞行方向或撞开前方的敌人。</p>
                                </div>
                            </div>
                            <div class="hero-ability2">
                                    <div class="hero-icon-container">
                                        <div class="hero-ability-icon-bg m-small"><img src="img/lwh/img/1_assets_images_hero_dva_ability-defense-matrix_icon-ability.png" class="hero-ability-icon m-weapon"></div>
                                    </div>
                                    <div class="hero-ability-descriptor">
                                        <h4 class="h5">机甲：防御矩阵</h4>
                                        <svg  class="iconl"></svg>
                <p>D.Va可以激活正前方的目标锁定矩阵，挡住前方射来的飞射物。</p>
                                    </div>
                                </div>
                                <div class="hero-ability1">
                                        <div class="hero-icon-container">
                                            <div class="hero-ability-icon-bg m-small"><img src="img/lwh/img/1_assets_images_hero_dva_ability-micro-missiles_icon-ability.png" class="hero-ability-icon m-weapon"></div>
                                        </div>
                                        <div class="hero-ability-descriptor">
                                            <h4 class="h5">微型飞弹</h4>
                                            <svg  class="iconl"></svg>
                    <p>D.Va射出一连串高爆飞弹。</p>
                                        </div>
                                    </div>
                                    <div class="hero-ability2">
                                            <div class="hero-icon-container">
                                                <div class="hero-ability-icon-bg m-small"><img src="img/lwh/img/1_assets_images_hero_dva_ability-self-destruct_icon-ability.png" class="hero-ability-icon m-weapon"></div>
                                            </div>
                                            <div class="hero-ability-descriptor">
                                                <h4 class="h5">机甲：自毁</h4>
                                                <svg  class="iconl"></svg>
                        <p>D.Va可以从机甲中弹出并将反应器设定为自爆，对附近敌人造成巨大伤害。</p>
                                            </div>
                                        </div>
                                        <div class="hero-ability2">
                                                <div class="hero-icon-container">
                                                    <div class="hero-ability-icon-bg m-small"><img src="img/lwh/img/1_assets_images_hero_dva_ability-call-mech_icon-ability.png" class="hero-ability-icon m-weapon"></div>
                                                </div>
                                                <div class="hero-ability-descriptor">
                                                    <h4 class="h5">驾驶员：呼叫机甲</h4>
                                                    <svg width="24" height="24"></svg>
                            <p>如果D.Va的装甲战斗机甲被摧毁，她可以呼叫一台全新的机甲回到战斗。</p>
                                                </div>
                                            </div>
                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="media">
			<div class="inner-center">
				<h2>视频图片</h2>
				<div class="media-row">
					<ul class="media-gallery">
						<li class="media-item" @click="getbigimg">
							<div class="media-border"><a href="javascript:;" class="media-content" ><img src="img/lwh/img/2_media_screenshots_Dva01-thumb.jpg"><div class="media-card">壁纸：D.Va</div></a></div>
						</li>
						<li class="media-item" @click="getbigimg">
							<div class="media-border"><a href="javascript:;" class="media-content" ><img src="img/lwh/img/2_media_artwork_dva-thumb.jpg"><div class="media-card">游戏截图：D.Va</div></a></div>
						</li>
						<li class="media-item" @click="getbigimg">
							<div class="media-border"><a href="javascript:;" class="media-content" ><img src="img/lwh/img/2_media_ReferenceKits_dva_thumb.jpg"><div class="media-card">游戏截图：D.Va</div></a></div>
						</li>
						<li class="media-item" @click="getbigimg">
							<div class="media-border"><a href="javascript:;" class="media-content" ><img src="img/lwh/img/2_media_screenshots_Dva03-thumb.jpg"><div class="media-card">游戏截图：D.Va</div></a></div>
						</li>
					</ul>
				</div>
			</div>
		</section>
    <section id="outter">
			<div class="outter-top"><img src="img/lwh/img/1_assets_img_dividers_wing.png"></div>
			<nav class="hero-select-navigation">
            <h1 class="nav-title">请选择一名英雄</h1>
            
            <div class="hero-type-container">
                <h3 class="hero-select-title"><span class="heading-line"></span><span class="text">重装</span><span class="heading-line"></span></h3> 
                <ul class="js-hero-portrait-group align-center">
                    
                    
                    <li class="hero-item">
                        <a href="dva-1.htm" tppabs="http://ow.blizzard.cn/heroes/dva" data-hero-id="dva" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_dva_icon-portrait.png);" class="image"></div>
                            </div><span class="label">D.Va</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="orisa-1.htm" tppabs="http://ow.blizzard.cn/heroes/orisa" data-hero-id="orisa" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_orisa_icon-portrait.png);" class="image"></div>
                            </div><span class="label">奥丽莎</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="reinhardt-1.htm" tppabs="http://ow.blizzard.cn/heroes/reinhardt" data-hero-id="reinhardt" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_reinhardt_icon-portrait.png);" class="image"></div>
                            </div><span class="label">莱因哈特</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="roadhog-1.htm" tppabs="http://ow.blizzard.cn/heroes/roadhog" data-hero-id="roadhog" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_roadhog_icon-portrait.png);" class="image"></div>
                            </div><span class="label">路霸</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="winston-1.htm" tppabs="http://ow.blizzard.cn/heroes/winston" data-hero-id="winston" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_winston_icon-portrait.png);" class="image"></div>
                            </div><span class="label">温斯顿</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="zarya-1.htm" tppabs="http://ow.blizzard.cn/heroes/zarya" data-hero-id="zarya" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_zarya_icon-portrait.png);" class="image"></div>
                            </div><span class="label">查莉娅</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="wrecking-ball-1.htm" tppabs="http://ow.blizzard.cn/heroes/wrecking-ball" data-hero-id="wrecking-ball" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/2_heroes_wrecking-ball_icon-portrait.png);" class="image"></div>
                            </div><span class="label">破坏球</span></a>
                    </li>
									</ul>
								</div>
								<div class="hero-type-container">
                <h3 class="hero-select-title"><span class="heading-line"></span><span class="text">输出</span><span class="heading-line"></span></h3> 
                <ul class="js-hero-portrait-group align-center">
                    
                    
                    <li class="hero-item">
                        <a href="dva-1.htm" tppabs="http://ow.blizzard.cn/heroes/dva" data-hero-id="dva" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/2_heroes_Hero29_icon-portrait-n7d.png);" class="image"></div>
                            </div><span class="label">艾什</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="orisa-1.htm" tppabs="http://ow.blizzard.cn/heroes/orisa" data-hero-id="orisa" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_bastion_icon-portrait.png);" class="image"></div>
                            </div><span class="label">堡垒</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="reinhardt-1.htm" tppabs="http://ow.blizzard.cn/heroes/reinhardt" data-hero-id="reinhardt" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_doomfist_icon-portrait.png);" class="image"></div>
                            </div><span class="label">末日铁拳</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="roadhog-1.htm" tppabs="http://ow.blizzard.cn/heroes/roadhog" data-hero-id="roadhog" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_genji_icon-portrait.png);" class="image"></div>
                            </div><span class="label">源氏</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="winston-1.htm" tppabs="http://ow.blizzard.cn/heroes/winston" data-hero-id="winston" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_hanzo_icon-portrait.png);" class="image"></div>
                            </div><span class="label">半藏</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="zarya-1.htm" tppabs="http://ow.blizzard.cn/heroes/zarya" data-hero-id="zarya" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_junkrat_icon-portrait.png);" class="image"></div>
                            </div><span class="label">狂鼠</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="wrecking-ball-1.htm" tppabs="http://ow.blizzard.cn/heroes/wrecking-ball" data-hero-id="wrecking-ball" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_mccree_icon-portrait.png);" class="image"></div>
                            </div><span class="label">麦克雷</span></a>
                    </li>
										<li class="hero-item">
                        <a href="wrecking-ball-1.htm" tppabs="http://ow.blizzard.cn/heroes/wrecking-ball" data-hero-id="wrecking-ball" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_mei_icon-portrait.png);" class="image"></div>
                            </div><span class="label">美</span></a>
                    </li>
										<li class="hero-item">
                        <a href="wrecking-ball-1.htm" tppabs="http://ow.blizzard.cn/heroes/wrecking-ball" data-hero-id="wrecking-ball" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_pharah_icon-portrait.png);" class="image"></div>
                            </div><span class="label">法老之鹰</span></a>
                    </li>
										<li class="hero-item">
                        <a href="wrecking-ball-1.htm" tppabs="http://ow.blizzard.cn/heroes/wrecking-ball" data-hero-id="wrecking-ball" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_reaper_icon-portrait.png);" class="image"></div>
                            </div><span class="label">死神</span></a>
                    </li>
										<li class="hero-item">
                        <a href="wrecking-ball-1.htm" tppabs="http://ow.blizzard.cn/heroes/wrecking-ball" data-hero-id="wrecking-ball" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_soldier-76_icon-portrait.png);" class="image"></div>
                            </div><span class="label">士兵：76</span></a>
                    </li>
										<li class="hero-item">
                        <a href="wrecking-ball-1.htm" tppabs="http://ow.blizzard.cn/heroes/wrecking-ball" data-hero-id="wrecking-ball" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_sombra_icon-portrait.png);" class="image"></div>
                            </div><span class="label">黑影</span></a>
                    </li>
										<li class="hero-item">
                        <a href="wrecking-ball-1.htm" tppabs="http://ow.blizzard.cn/heroes/wrecking-ball" data-hero-id="wrecking-ball" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_symmetra_icon-portrait.png);" class="image"></div>
                            </div><span class="label">秩序之光</span></a>
                    </li>
										<li class="hero-item">
                        <a href="wrecking-ball-1.htm" tppabs="http://ow.blizzard.cn/heroes/wrecking-ball" data-hero-id="wrecking-ball" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_torbjorn_icon-portrait.png);" class="image"></div>
                            </div><span class="label">托比昂</span></a>
                    </li>
										<li class="hero-item">
                        <a href="wrecking-ball-1.htm" tppabs="http://ow.blizzard.cn/heroes/wrecking-ball" data-hero-id="wrecking-ball" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_tracer_icon-portrait.png);" class="image"></div>
                            </div><span class="label">猎空</span></a>
                    </li>
										<li class="hero-item">
                        <a href="wrecking-ball-1.htm" tppabs="http://ow.blizzard.cn/heroes/wrecking-ball" data-hero-id="wrecking-ball" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_widowmaker_icon-portrait.png);" class="image"></div>
                            </div><span class="label">黑百合</span></a>
                    </li>
									</ul>
								</div>
								<div class="hero-type-container">
                <h3 class="hero-select-title"><span class="heading-line"></span><span class="text">支援</span><span class="heading-line"></span></h3> 
                <ul class="js-hero-portrait-group align-center">
                    
                    
                    <li class="hero-item">
                        <a href="dva-1.htm" tppabs="http://ow.blizzard.cn/heroes/dva" data-hero-id="dva" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_ana_icon-portrait.png);" class="image"></div>
                            </div><span class="label">安娜</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="orisa-1.htm" tppabs="http://ow.blizzard.cn/heroes/orisa" data-hero-id="orisa" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_brigitte_icon-portrait.png);" class="image"></div>
                            </div><span class="label">布丽吉塔</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="reinhardt-1.htm" tppabs="http://ow.blizzard.cn/heroes/reinhardt" data-hero-id="reinhardt" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_lucio_icon-portrait.png);" class="image"></div>
                            </div><span class="label">卢西奥</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="roadhog-1.htm" tppabs="http://ow.blizzard.cn/heroes/roadhog" data-hero-id="roadhog" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_mercy_icon-portrait.png);" class="image"></div>
                            </div><span class="label">天使</span></a>
                    </li>
                    
                    
                    
                    <li class="hero-item">
                        <a href="winston-1.htm" tppabs="http://ow.blizzard.cn/heroes/winston" data-hero-id="winston" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_moira_icon-portrait.png);" class="image"></div>
                            </div><span class="label">莫伊拉</span></a>
                    </li>

                    <li class="hero-item">
                        <a href="zarya-1.htm" tppabs="http://ow.blizzard.cn/heroes/zarya" data-hero-id="zarya" class="hero-portrait m-color-inverted">
                            <div class="wrap">
                                <div style="background-image: url(img/lwh/img/1_assets_images_hero_zenyatta_icon-portrait.png);" class="image"></div>
                            </div><span class="label">禅雅塔</span></a>
                    </li>
									</ul>
								</div>
                                </nav>
        </section>
        <div class="blackout open" blackout=""></div>
        <div class="lightbox open" lightbox="main">
            <div class="lightbox-container">
                <div class="lightbox-header">
                    <h1 class="gallery-title">游戏截图</h1>
                    <p class="gallery-index"></p>
                </div>
                <div class="lightbox-body m-controls">
                    <a href="#" class="lightbox-prev" @click="lookimg"></a>
                    <a href="#" class="lightbox-next" @click="lookimg"></a>
                    <a href="#" class="lightbox-content"></a>
                </div>
                    <div class="lightbox-footer">
                        <p class="m-name">游戏截图：D.Va</p>
                    </div>
                </div>
                    <div class="lightbox-close" @click="close">
                    </div>
    </div>
</div>
</template>
<script>
export default {
    data(){
        return{
            list:[
            {src:"img/lwh/img/1_assets_images_hero_dva_ability-fusion-cannons_video-ability.mp4"},
            {src:"img/lwh/img/1_assets_images_hero_dva_ability-boosters_video-ability.mp4"},
            {src:"img/lwh/img/1_assets_images_hero_dva_ability-call-mech_video-ability.mp4"},
            {src:"img/lwh/img/1_assets_images_hero_dva_ability-defense-matrix_video-ability.mp4"},
            {src:"img/lwh/img/1_assets_images_hero_dva_ability-light-gun_video-ability.mp4"},
            {src:"img/lwh/img/1_assets_images_hero_dva_ability-micro-missiles_video-ability.mp4"},
            {src:"img/lwh/img/1_assets_images_hero_dva_ability-self-destruct_video-ability.mp4"},
            {src:"img/lwh/img/1_assets_images_hero_dva_intro-video.mp4"}
            ]
        }
    },
    methods: {
        open(e){
            /*var lis = document.querySelectorAll("#details_tabs>li");*/
            var li=e.target.parentElement;
            //for(var item of lis){
                console.log(li.nextElementSibling != null);
                console.log(222)
                if(li.nextElementSibling != null){
                   /* console.log(li.classList)
                    console.log(li.nextElementSibling.)
                    console.log(666)*/
                    li.classList.remove("acta");
                    li.nextElementSibling.classList.add("acta");
                    var bg = document.querySelector("#details>div.hero_details_bg");
                    var bg2 = document.querySelector(".hero_details_video>div.video_bg");
                    var pane2 = document.querySelector("#tabs>div.tabs-content>div.tabs-pane2");
                    bg.style.display="none";
                    bg2.style.display="block";
                    pane2.style.display="none";
                    pane2.nextElementSibling.style.display="block";
                }else{
                    console.log(555)
                    console.log(li.classList)
                    //console.log(li.previousElementSibling.classList)
                    li.classList.remove("acta");
                    console.log(li.classList)
                    console.log(111)
                    li.previousElementSibling.classList.add("acta");
                    console.log(li.previousElementSibling.classList)
                    console.log(222)
                    var pane1 = document.querySelector("#tabs>div.tabs-content>div:nth-child(2)");
                    var bg = document.querySelector("#details>div.hero_details_bg");
                    var bg2 = document.querySelector(".hero_details_video>div.video_bg");
                    console.log(bg);
                    bg.style.display="block";
                    bg2.style.display="none";
                    console.log(pane1)
                    pane1.style.display="none";
                    pane1.previousElementSibling.style.display="block";
                }
            //}
        },
        getbigimg(e){
            var sbgimg = e.target.parentElement.parentElement.parentElement; 
            console.log(sbgimg);
            if(sbgimg.nextElementSibling !=null){
                var blackout = document.querySelector(".blackout");
                console.log(blackout);
                blackout.style.visibility = "visible";
                blackout.style.opacity = "1";
                var lightbox = document.querySelector(".lightbox"); 
                lightbox.style.visibility = "visible";
                lightbox.style.opacity = "1";
            }
        },
        lookimg(e){
            var prev = e.target;
            console.log(prev);
            if(prev.nextElementSibling !=null){
                var lightcont = document.querySelector(".lightbox-content");
                lightcont.style.background ="url(img/lwh/img/2_media_screenshots_Dva02.jpg)";   
            }else if(lightcont.style.background-iamge){
                lightcont.style.background ="url(img/lwh/img/2_media_screenshots_Dva04.jpg)";
            }else{
                lightcont.style.background ="url(img/lwh/img/2_media_screenshots_Dva03.jpg)";
            }
        },
        close(e){
            var lightclose = e.target;
            console.log(lightclose);
            var blackout = document.querySelector(".blackout");
                blackout.style.visibility = "hidden";
                blackout.style.opacity = "0";
                var lightbox = document.querySelector(".lightbox"); 
                lightbox.style.visibility = "hidden";
                lightbox.style.opacity = "0";
        },
        //轮播视频
        vplay(e){  
            var vsrc = e.target.parentElement.dataset.name;
            console.log(typeof(vsrc));
            var vdshow = document.querySelectorAll(".video_box>video");
            console.log(vdshow[0]);
            for(var vds of vdshow){
                //console.log(vds);
                vds.setAttribute("src",vsrc);
                if(vds.nextElementSibling.hasAttribute("src")){
                    vds.nextElementSibling.setAttribute("src",vsrc);
                }
            }
        }   
    }
}
</script>
<style > 
</style>