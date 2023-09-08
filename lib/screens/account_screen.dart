import 'package:flutter/material.dart';
import 'package:shop_minin_test_app/widgets/custom_app_bar.dart';

import '../widgets/bottom_navigation.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const Center(
        child: Text('Аккаунт'),
      ),
      bottomNavigationBar: const BottomNavigation(selectedIndex: 3,),
    );
  }
}
