import 'package:flutter/material.dart';
import 'package:flutter_news/common/entities/entitys.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

Widget newsCategoriesWidget(
    {List<CategoryResponseEntity> categories,
    String selCategoryCode,
    Function(CategoryResponseEntity) onTap}) {
  return categories == null
      ? Container()
      : SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categories.map<Widget>((item) {
              return Container(
                alignment: Alignment.center,
                height: kSetHeight(52),
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  child: Text(
                    item.title,
                    style: TextStyle(
                      color: selCategoryCode == item.code
                          ? AppColors.secondaryElementText
                          : AppColors.primaryText,
                      fontSize: kSetFontSize(18),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () => onTap(item),
                ),
              );
            }).toList(),
          ),
        );
}
