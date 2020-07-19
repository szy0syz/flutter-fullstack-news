import 'package:flutter/material.dart';
import 'package:flutter_news/common/entities/entities.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_news/common/widgets/widgets.dart';

// 推荐阅读
Widget recommendWidget(NewsRecommendResponseEntity newsRecommend) {
  return Container(
    margin: EdgeInsets.all(kSetWidth(20)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // 图
        imageCached(
          newsRecommend.thumbnail,
          width: kSetWidth(335),
          height: kSetHeight(290),
        ),
        // 作者
        Container(
          margin: EdgeInsets.only(top: kSetHeight(14)),
          child: Text(
            newsRecommend.author,
            style: TextStyle(
              fontFamily: 'Avenir',
              fontWeight: FontWeight.normal,
              color: AppColors.thirdElementText,
              fontSize: kSetFontSize(14),
            ),
          ),
        ),
        // 标题
        Container(
          margin: EdgeInsets.only(top: kSetHeight(10)),
          child: Text(
            newsRecommend.title,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              color: AppColors.primaryText,
              fontSize: kSetFontSize(24),
              height: 1,
            ),
          ),
        ),
        // 一行 3 列
        Container(
          margin: EdgeInsets.only(top: kSetHeight(10)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // 分类
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 120,
                ),
                child: Text(
                  newsRecommend.category,
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.normal,
                    color: AppColors.secondaryElementText,
                    fontSize: kSetFontSize(14),
                    height: 1,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
              // 添加时间
              Container(
                width: kSetWidth(15),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 120,
                ),
                child: Text(
                  '• ${kTimeLineFormat(newsRecommend.addtime)}',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.normal,
                    color: AppColors.thirdElementText,
                    fontSize: kSetFontSize(14),
                    height: 1,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
              // 更多
              Spacer(),
              InkWell(
                child: Icon(
                  Icons.more_horiz,
                  color: AppColors.primaryText,
                  size: 24,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
