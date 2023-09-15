import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class Tag extends StatefulWidget {
  final String tagName;
  final int index;
  const Tag({super.key, required this.tagName, required this.index});

  @override
  State<Tag> createState() => _TagState();
}

class _TagState extends State<Tag> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 40,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.only(left: 16, right: 16),
        decoration: BoxDecoration(
            color: (widget.index == 0) ? AppColors.blue : AppColors.grey,
            borderRadius: BorderRadius.circular(10)
        ),
        child: InkWell(
          onTap: () {
            print(widget.tagName);
          },
          child: Center(
            child: FittedBox(
              child: Text(
                widget.tagName,
                style: TextStyle(
                    color: (widget.index == 0) ? Colors.white : Colors.black,
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
