import 'package:flutter/material.dart';

import 'location_and_date.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      toolbarHeight: 57,
      elevation: 0,
      leadingWidth: 200,
      leading: const LocationAndDate(),
      actions: const [
        Padding(
            padding: EdgeInsets.only(top: 7, right: 16),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            )
        ),
      ],
    );
  }
}
