<template>
	<div id="lwh"> 
    <section class="hero-box">
        <div class="inner">
            <div class="inner-title">
                <h2 class="hero-selector">寻找英雄角色吗？</h2>
                <p class="inner-text">在尝试各个英雄之前，先了解他们在团队中的角色。</p>
            </div>
            <div id="heros">
                <ul class="nav-list" >
                    <li class="nav-item" data-target=".con1" data-toggle="tab" @click="tank">
                        <a href="javascript:;" class="nav-link"><span class="text">所有</span></a>
                    </li>
                    <li class="nav-item" data-target=".con2" data-toggle="tab" @click="tank">
                        <a href="javascript:;" class="nav-link"><svg viewBox="0 0 32 32" role="presentation" class="icon"><path d="M29 10.7v6.2c0 .6-.1 1.1-.4 1.6-2.9 5.3-6.8 9.7-11.8 13.2-.6.4-1 .4-1.6 0-4.9-3.4-8.8-7.8-11.7-13-.3-.6-.4-1.2-.4-1.8 0-3.9.1-7.8 0-11.7-.1-2.9 2.1-3.3 4-3.8C10.4.6 13.3 0 16.6 0c3.1 0 7.7 1.1 9.4 1.6 1.3.4 2.7.9 2.9 2.2.1 1.1 0 2.2.1 3.3v3.6z"></path></svg><span class="text">重装</span></a>
                    </li>
                    <li class="nav-item" data-target=".con3" data-toggle="tab" @click="dps">
                        <a href="javascript:;" class="nav-link"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
													<g>
															<path d="M2.1 28.1h7.1V32H2.1z"></path>
															<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
													</g>
													<g>
															<path d="M12.5 28.1h7.1V32h-7.1z"></path>
															<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
													</g>
													<g>
															<path d="M22.9 28.1H30V32h-7.1z"></path>
															<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
													</g>
											</svg><span class="text">输出</span></a>
                    </li>
                    <li class="nav-item" data-target=".con4" data-toggle="tab" @click="support">
                        <a href="javascript:;" class="nav-link"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
													<path fill-rule="evenodd" d="M29.3 10.2h-7.5V2.7c0-1.5-1.2-2.7-2.7-2.7h-6.3c-1.5 0-2.7 1.2-2.7 2.7v7.5H2.7c-1.5 0-2.7 1.2-2.7 2.7v6.3c0 1.5 1.2 2.7 2.7 2.7h7.5v7.5c0 1.5 1.2 2.7 2.7 2.7h6.3c1.5 0 2.7-1.2 2.7-2.7v-7.5h7.5c1.5 0 2.7-1.2 2.7-2.7v-6.3c-.1-1.5-1.3-2.7-2.8-2.7z"></path>
											</svg><span class="text">支援</span></a>
                    </li>
								</ul>
								<div id="big-box">
                <div id="heros-home" class="con1">
                    <div class="hero-name tank">
                        <a href="javascript:;"  class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_dva.png" alt="">
												<span class="container">
													<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon"><path d="M29 10.7v6.2c0 .6-.1 1.1-.4 1.6-2.9 5.3-6.8 9.7-11.8 13.2-.6.4-1 .4-1.6 0-4.9-3.4-8.8-7.8-11.7-13-.3-.6-.4-1.2-.4-1.8 0-3.9.1-7.8 0-11.7-.1-2.9 2.1-3.3 4-3.8C10.4.6 13.3 0 16.6 0c3.1 0 7.7 1.1 9.4 1.6 1.3.4 2.7.9 2.9 2.2.1 1.1 0 2.2.1 3.3v3.6z"></path></svg></span>
													<span class="container-title">
														D.Va
													</span> 
												</span>
												</a>
                    </div>
										<div class="hero-name tank">
                        <a href="javascript:;"  class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_orisa.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon"><path d="M29 10.7v6.2c0 .6-.1 1.1-.4 1.6-2.9 5.3-6.8 9.7-11.8 13.2-.6.4-1 .4-1.6 0-4.9-3.4-8.8-7.8-11.7-13-.3-.6-.4-1.2-.4-1.8 0-3.9.1-7.8 0-11.7-.1-2.9 2.1-3.3 4-3.8C10.4.6 13.3 0 16.6 0c3.1 0 7.7 1.1 9.4 1.6 1.3.4 2.7.9 2.9 2.2.1 1.1 0 2.2.1 3.3v3.6z"></path></svg></span>
													<span class="container-title">
														奥丽莎
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name tank">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_reinhardt.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon"><path d="M29 10.7v6.2c0 .6-.1 1.1-.4 1.6-2.9 5.3-6.8 9.7-11.8 13.2-.6.4-1 .4-1.6 0-4.9-3.4-8.8-7.8-11.7-13-.3-.6-.4-1.2-.4-1.8 0-3.9.1-7.8 0-11.7-.1-2.9 2.1-3.3 4-3.8C10.4.6 13.3 0 16.6 0c3.1 0 7.7 1.1 9.4 1.6 1.3.4 2.7.9 2.9 2.2.1 1.1 0 2.2.1 3.3v3.6z"></path></svg></span>
													<span class="container-title">
														莱因哈特
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name tank">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_roadhog.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon"><path d="M29 10.7v6.2c0 .6-.1 1.1-.4 1.6-2.9 5.3-6.8 9.7-11.8 13.2-.6.4-1 .4-1.6 0-4.9-3.4-8.8-7.8-11.7-13-.3-.6-.4-1.2-.4-1.8 0-3.9.1-7.8 0-11.7-.1-2.9 2.1-3.3 4-3.8C10.4.6 13.3 0 16.6 0c3.1 0 7.7 1.1 9.4 1.6 1.3.4 2.7.9 2.9 2.2.1 1.1 0 2.2.1 3.3v3.6z"></path></svg></span>
													<span class="container-title">
														路霸
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name tank">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_winston.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon"><path d="M29 10.7v6.2c0 .6-.1 1.1-.4 1.6-2.9 5.3-6.8 9.7-11.8 13.2-.6.4-1 .4-1.6 0-4.9-3.4-8.8-7.8-11.7-13-.3-.6-.4-1.2-.4-1.8 0-3.9.1-7.8 0-11.7-.1-2.9 2.1-3.3 4-3.8C10.4.6 13.3 0 16.6 0c3.1 0 7.7 1.1 9.4 1.6 1.3.4 2.7.9 2.9 2.2.1 1.1 0 2.2.1 3.3v3.6z"></path></svg></span>
													<span class="container-title">
														温斯顿
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name tank">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_zarya.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon"><path d="M29 10.7v6.2c0 .6-.1 1.1-.4 1.6-2.9 5.3-6.8 9.7-11.8 13.2-.6.4-1 .4-1.6 0-4.9-3.4-8.8-7.8-11.7-13-.3-.6-.4-1.2-.4-1.8 0-3.9.1-7.8 0-11.7-.1-2.9 2.1-3.3 4-3.8C10.4.6 13.3 0 16.6 0c3.1 0 7.7 1.1 9.4 1.6 1.3.4 2.7.9 2.9 2.2.1 1.1 0 2.2.1 3.3v3.6z"></path></svg></span>
													<span class="container-title">
														查莉娅
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name tank">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/2_heroes_wrecking-ball_hero-select-portrait.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon"><path d="M29 10.7v6.2c0 .6-.1 1.1-.4 1.6-2.9 5.3-6.8 9.7-11.8 13.2-.6.4-1 .4-1.6 0-4.9-3.4-8.8-7.8-11.7-13-.3-.6-.4-1.2-.4-1.8 0-3.9.1-7.8 0-11.7-.1-2.9 2.1-3.3 4-3.8C10.4.6 13.3 0 16.6 0c3.1 0 7.7 1.1 9.4 1.6 1.3.4 2.7.9 2.9 2.2.1 1.1 0 2.2.1 3.3v3.6z"></path></svg></span>
													<span class="container-title">
														破坏球
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/2_heroes_Hero29_hero-select-portrait-dn24u.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														艾什
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_bastion.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														堡垒
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_doomfist.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														末日铁拳
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_genji.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														源氏
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_hanzo.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														半藏
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_junkrat.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														狂鼠
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_mccree.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														麦克雷
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_mei.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														美
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_pharah.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														法老之鹰
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_reaper.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														死神
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_soldier-76.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														士兵：76
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_sombra.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														黑影
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_symmetra.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														秩序之光
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_torbjorn.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														托比昂
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_tracer.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														猎空
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name dps">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_widowmaker.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<g>
																		<path d="M2.1 28.1h7.1V32H2.1z"></path>
																		<path d="M9.1 7v-.7C8.6 1.5 5.6 0 5.6 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M12.5 28.1h7.1V32h-7.1z"></path>
																		<path d="M19.5 7v-.7C19 1.5 16 0 16 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
																<g>
																		<path d="M22.9 28.1H30V32h-7.1z"></path>
																		<path d="M29.9 7v-.7C29.4 1.5 26.4 0 26.4 0s-3 1.5-3.5 6.3V25.4h7V7z"></path>
																</g>
														</svg></span>
													<span class="container-title">
														黑百合
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name support">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_ana.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<path fill-rule="evenodd" d="M29.3 10.2h-7.5V2.7c0-1.5-1.2-2.7-2.7-2.7h-6.3c-1.5 0-2.7 1.2-2.7 2.7v7.5H2.7c-1.5 0-2.7 1.2-2.7 2.7v6.3c0 1.5 1.2 2.7 2.7 2.7h7.5v7.5c0 1.5 1.2 2.7 2.7 2.7h6.3c1.5 0 2.7-1.2 2.7-2.7v-7.5h7.5c1.5 0 2.7-1.2 2.7-2.7v-6.3c-.1-1.5-1.3-2.7-2.8-2.7z"></path>
														</svg></span>
													<span class="container-title">
														安娜
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name support">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_brigitte.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<path fill-rule="evenodd" d="M29.3 10.2h-7.5V2.7c0-1.5-1.2-2.7-2.7-2.7h-6.3c-1.5 0-2.7 1.2-2.7 2.7v7.5H2.7c-1.5 0-2.7 1.2-2.7 2.7v6.3c0 1.5 1.2 2.7 2.7 2.7h7.5v7.5c0 1.5 1.2 2.7 2.7 2.7h6.3c1.5 0 2.7-1.2 2.7-2.7v-7.5h7.5c1.5 0 2.7-1.2 2.7-2.7v-6.3c-.1-1.5-1.3-2.7-2.8-2.7z"></path>
														</svg></span>
													<span class="container-title">
														布丽吉塔
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name support">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_lucio.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<path fill-rule="evenodd" d="M29.3 10.2h-7.5V2.7c0-1.5-1.2-2.7-2.7-2.7h-6.3c-1.5 0-2.7 1.2-2.7 2.7v7.5H2.7c-1.5 0-2.7 1.2-2.7 2.7v6.3c0 1.5 1.2 2.7 2.7 2.7h7.5v7.5c0 1.5 1.2 2.7 2.7 2.7h6.3c1.5 0 2.7-1.2 2.7-2.7v-7.5h7.5c1.5 0 2.7-1.2 2.7-2.7v-6.3c-.1-1.5-1.3-2.7-2.8-2.7z"></path>
														</svg></span>
													<span class="container-title">
														卢西奥
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name support">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_mercy.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<path fill-rule="evenodd" d="M29.3 10.2h-7.5V2.7c0-1.5-1.2-2.7-2.7-2.7h-6.3c-1.5 0-2.7 1.2-2.7 2.7v7.5H2.7c-1.5 0-2.7 1.2-2.7 2.7v6.3c0 1.5 1.2 2.7 2.7 2.7h7.5v7.5c0 1.5 1.2 2.7 2.7 2.7h6.3c1.5 0 2.7-1.2 2.7-2.7v-7.5h7.5c1.5 0 2.7-1.2 2.7-2.7v-6.3c-.1-1.5-1.3-2.7-2.8-2.7z"></path>
														</svg></span>
													<span class="container-title">
														天使
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name support">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_moira.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<path fill-rule="evenodd" d="M29.3 10.2h-7.5V2.7c0-1.5-1.2-2.7-2.7-2.7h-6.3c-1.5 0-2.7 1.2-2.7 2.7v7.5H2.7c-1.5 0-2.7 1.2-2.7 2.7v6.3c0 1.5 1.2 2.7 2.7 2.7h7.5v7.5c0 1.5 1.2 2.7 2.7 2.7h6.3c1.5 0 2.7-1.2 2.7-2.7v-7.5h7.5c1.5 0 2.7-1.2 2.7-2.7v-6.3c-.1-1.5-1.3-2.7-2.8-2.7z"></path>
														</svg></span>
													<span class="container-title">
														莫伊拉
													</span>
												</span>
												</a>
                    </div>
										<div class="hero-name support">
                        <a href="javascript:;" class="hero-jump"><img src="img/lwh/img/1_assets_img_pages_heroes_list_zenyatta.png" alt="">
												<span class="container">
														<span class="icon"><svg viewBox="0 0 32 32" role="presentation" class="icon">
                                        
                                    
																<path fill-rule="evenodd" d="M29.3 10.2h-7.5V2.7c0-1.5-1.2-2.7-2.7-2.7h-6.3c-1.5 0-2.7 1.2-2.7 2.7v7.5H2.7c-1.5 0-2.7 1.2-2.7 2.7v6.3c0 1.5 1.2 2.7 2.7 2.7h7.5v7.5c0 1.5 1.2 2.7 2.7 2.7h6.3c1.5 0 2.7-1.2 2.7-2.7v-7.5h7.5c1.5 0 2.7-1.2 2.7-2.7v-6.3c-.1-1.5-1.3-2.7-2.8-2.7z"></path>
														</svg></span>
													<span class="container-title">
														禅雅塔
													</span>
												</span>
												</a>
                    </div>
				</div>
	
</div>
            </div>
        </div>
		</section>
		
	</div>
</template>
<script>
export default {
    data(){
		return{}
	},
	methods: {
		tank(e){
			for(var n=0;n<5;n++) {
			for (var i = 0; i < 7; i++) {
				var a=document.querySelector("#hero-home>div.tank:eq(" + (7 * n + i) + ")").style.left= 170 * i+"px";
				console.log(a);
				document.querySelector("#hero-home>div.tank:eq(" + (7 * n + i) + ")").style.top= 270 * n+"px"
				/*$("#container>div.hero:eq("+(7*n+i)+")").css({left:170*i,top:270*n})  */
				document.querySelector("#hero-home>div.dps:eq(" + (7 * n + i) + ")").style.left= 170 * i+"px";document.querySelector("#hero-home>div.dps:eq(" + (7 * n + i) + ")").style.top=270 * (n + 1)+"px";
				document.querySelector("#hero-home>div.support:eq(" + (7 * n + i) + ")").style.left=170 * (i + 1)+"px"; 
				document.querySelector("#hero-home>div.support:eq(" + (7 * n + i) + ")").style.top= 270 * (n + 3)+"px";
			}
		}
		},
		dps(e){
			for(var n=0;n<5;n++) {
				for (var i = 0; i <7; i++){
					document.querySelector("#hero-home>div.support:eq("+(7*n+i)+")").style.left=170*(i+1)+"px";document.querySelector("#hero-home>div.support:eq("+(7*n+i)+")").style.top=270*(n+2);
					/*$("#container>div.hero:eq("+(7*n+i)+")").css({left:170*i,top:270*n})  */
					document.querySelector("#hero-home>div.dps:eq("+(7*n+i)+")").style.left=170*i+"px";
					document.querySelector("#hero-home>div.support:eq("+(7*n+i)+")").style.top=270*(n)+"px";
				 	document.querySelector("#hero-home>div.tank:eq("+(7*n+i)+")").style.left=170*i+"px";document.querySelector("#hero-home>div.support:eq("+(7*n+i)+")").style.top=270*(n+3)+"px";

					}
			}
		},
		support(e){
			for(var n=0;n<5;n++) {
			for (var i = 0; i < 7; i++) {
				document.querySelector("#hero-home>div.support:eq("+(7*n+i)+")").style.left=170*i+"px";
				document.querySelector("#hero-home>div.support:eq("+(7*n+i)+")").style.top=270*n+"px";

				if(i==0&&n==0)
				/*$("#container>div.hero:eq("+(7*n+i)+")").css({left:170*i,top:270*n})  */
				{document.querySelector("#hero-home>div.dps:eq(0)").style.left=170*6;
					document.querySelector("#hero-home>div.dps:eq(0)").style.top=270*0;
					document.querySelector("#hero-home>div.tank:eq(" + (7 * n + i) + ")").style.left= 170 * i+"px"; 
					document.querySelector("#hero-home>div.tank:eq(" + (7 * n + i) + ")").style.top= 270 * (n + 3)+"px";
				}else if(n==0&&i>0){
					document.querySelector("#hero-home>div.dps:eq("+(7*n+i)+")").style.left=170*(i-1)+"px";document.querySelector("#hero-home>div.dps:eq("+(7*n+i)+")").style.top=270*(n+1)+"px";
					document.querySelector("#hero-home>div.tank:eq(" + (7 * n + i) + ")").style.left=170 * i +"px";
					document.querySelector("#hero-home>div.tank:eq(" + (7 * n + i) + ")").style.top= 270 * (n + 3)+"px";
				}else if(n==1&&i==0) {
					document.querySelector("#hero-home>div.dps:eq(" + (7 * n + i) + ")").style.left= 170 * 6+"px"; document.querySelector("#hero-home>div.dps:eq(" + (7 * n + i) + ")").style.top= 270 * n+"px";
					document.querySelector("#hero-home>div.tank:eq(" + (7 * n + i) + ")").style.left= 170 * i+"px";
					document.querySelector("#hero-home>div.tank:eq(" + (7 * n + i) + ")").style.top= 270 * (n + 3)+"px";
				}else if(n==1&&i==1){
					document.querySelector("#hero-home>div.dps:eq("+(7*n+i)+")").style.left =170*0+"px";
					document.querySelector("#hero-home>div.dps:eq("+(7*n+i)+")").style.top=270*(n+1)+"px";
					document.querySelector("#hero-home>div.tank:eq(" + (7 * n + i) + ")").style.left=170 * i +"px";
					document.querySelector("#hero-home>div.tank:eq(" + (7 * n + i) + ")").style.top=270 * (n + 3)+"px";
				}else if(n==2&&i==0){
					document.querySelector("#hero-home>div.dps:eq("+(7*n+i)+")").style.left=170*6+"px";
					document.querySelector("#hero-home>div.dps:eq("+(7*n+i)+")").style.top=270*n+"px";
					document.querySelector("#hero-home>div.tank:eq(" + (7 * n + i) + ")").style.left= 170 * i+"px";
					document.querySelector("#hero-home>div.tank:eq(" + (7 * n + i) + ")").style.top=270 * (n + 3)+"px";
				}
				else{
					document.querySelector("#hero-home>div.dps:eq("+(7*n+i)+")").style.left=170*(i-1)+"px";document.querySelector("#hero-home>div.dps:eq("+(7*n+i)+")").style.top=270*(n+1)+"px";
					document.querySelector("#hero-home>div.tank:eq(" + (7 * n + i) + ")").style.left=170 * i+"px"; document.querySelector("#hero-home>div.tank:eq(" + (7 * n + i) + ")").style.top = 270 * (n + 3)+"px";
				}
				}

		}
		}
	}
}
</script>
<style >

</style>