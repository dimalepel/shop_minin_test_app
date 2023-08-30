import 'package:flutter/material.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String categoryName;

  const BasicAppBar({super.key, required this.categoryName});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        actions: [
          const Padding(
              padding: EdgeInsets.only(top: 7, right: 16),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              )
          ),
        ],
        title: Text(
          categoryName,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        toolbarHeight: 57,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        )
    );
  }
}
