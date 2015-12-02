//
//  Header.h
//  TimeMovie
//
//  Created by qianfeng on 15/12/1.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#ifndef TimeMovie_Header_h
#define TimeMovie_Header_h

 // locationId 地理位置参数
 // 首页最上面滚动视图 接口
 #define URL_homesc @"http://api.m.mtime.cn/PageSubArea/HotPlayMovies.api?locationId=290"
 // 首页 今日热点
#define URL_homehot @"http://api.m.mtime.cn/PageSubArea/PullMovieAdvWordAndCouponActivities.api?locationId=290"
 // 首页电影商城  每日佳片 广告
#define URL_homead @"http://api.m.mtime.cn/PageSubArea/GetFirstPageAdvAndNews.api?subFifthParam=18159583%2310%230&subFistParam=17728960%234%230&subSecondParam=17304115%234%230&subThirdParam=17304116%234%230"
 
 // 购票 正在热映
 #define URL_payhot @"http://api.m.mtime.cn/Showtime/LocationMovies.api?locationId=290"
 // 购票 即将上映
 #define URL_payjijiang @"http://api.m.mtime.cn/Movie/MovieComingNew.api?locationId=290"
 // 购票 影院 全部
 #define URL_payall @"http://api.m.mtime.cn/GetCityByLongitudelatitude.api?latitude=40.043029&longitude=116.376715"
 // 购票 详情
 #define URL_paydetail @"http://api.m.mtime.cn/Showtime/MovieDetail.api?locationId=290&movieId=226489"
 // 购票 详情 电影周边
 #define URL_payarea @"http://api.m.mtime.cn/Search/RelatedGoodsById.api?relatedId=226489&relatedObjType=1"
 // 购票  详情 精彩影评
 #define URL_jingcai @"http://api.m.mtime.cn/Movie/HotLongComments.api?movieId=216036&pageIndex=1"
 // 购票 详情 网友短评
 #define URL_pinglun @"http://api.m.mtime.cn/showtime/MovieComments.api?movieId=204902&pageIndex=1"
 
 
 
 // 发现 头视图
 #define URL_distop @"http://api.m.mtime.cn/PageSubArea/GetRecommendationIndexInfo.api"
 // 发现 新闻 参数 type 是否MV
 #define URL_disnew @"http://api.m.mtime.cn/News/NewsList.api?pageIndex=1"
 // 发现 预告片
 #define URL_disyugao @"http://api.m.mtime.cn/PageSubArea/TrailerList.api"
 // 发现 排行榜1
 #define URL_dis1 @"http://api.m.mtime.cn/TopList/TopListFixedNew.api"
 // 发现 排行榜2
 #define URL_dis2 @"http://api.m.mtime.cn/TopList/TopListOfAll.api?pageIndex=1"
 // 发现 影评
 #define URL_yingping @"http://api.m.mtime.cn/PageSubArea/GetRecommendationIndexInfo.api"


#endif
