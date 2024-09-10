import 'package:flutter/material.dart';
import 'package:snack_scroll/component/text_slide.dart';

class TitleItem extends StatelessWidget {
  const TitleItem({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: item.size?.width,
      height: item.size?.height,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            item.title,
            maxLines: 1,
            style: ItemModel.titleTextStyle,
          ),
          const SizedBox(height: 1),
          Text(
            item.desc,
            maxLines: 1,
            style: ItemModel.descTextStyle,
          ),
        ],
      ),
    );
  }
}
