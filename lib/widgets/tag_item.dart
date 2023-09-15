import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_minin_test_app/repositories/tag_repository.dart';

import '../theme/app_colors.dart';

class TagItem extends StatelessWidget {
  final String tagName;
  final int index;
  final Function() onTap;
  final int currentTagIndex;

  const TagItem({super.key, required this.tagName, required this.index, required this.onTap, required this.currentTagIndex});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 40,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.only(left: 16, right: 16),
        decoration: BoxDecoration(
            color: (currentTagIndex == index) ? AppColors.blue : AppColors.grey,
            borderRadius: BorderRadius.circular(10)
        ),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: FittedBox(
              child: Text(
                tagName,
                style: TextStyle(
                    color: (currentTagIndex == index) ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
