import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class Tag extends StatelessWidget {
  final String tagName;
  final int index;
  const Tag({super.key, required this.tagName, required this.index});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 40,
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.only(left: 16, right: 16),
          decoration: BoxDecoration(
              color: (index == 0) ? AppColors.blue : AppColors.grey,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: FittedBox(
              child: Text(
                tagName,
                style: TextStyle(
                    color: (index == 0) ? Colors.white : Colors.black,
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
