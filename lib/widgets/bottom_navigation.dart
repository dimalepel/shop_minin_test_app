import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_minin_test_app/screens/home_screen.dart';

import '../screens/account_screen.dart';
import '../screens/cart_screen.dart';
import '../screens/search_screen.dart';
import '../theme/app_colors.dart';

class BottomNavigation extends StatefulWidget {
  final int selectedIndex;

  const BottomNavigation({super.key, required this.selectedIndex});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.selectedIndex,
      type: BottomNavigationBarType.fixed,
      useLegacyColorScheme: false,
      unselectedLabelStyle: TextStyle(
          color: AppColors.greyDark,
          fontFamily: 'San Francisco',
          fontSize: 10,
          fontWeight: FontWeight.w500
      ),
      selectedLabelStyle: TextStyle(
          color: AppColors.blue,
          fontFamily: 'San Francisco',
          fontSize: 10,
          fontWeight: FontWeight.w500
      ),
      onTap: (index) {
        switch(index) {
          case 0:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            break;
          case 1:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
            break;
          case 2:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen()));
            break;
          case 3:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AccountScreen()));
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/svgs/icon_home.svg',
            colorFilter: ColorFilter.mode(
                (widget.selectedIndex == 0) ? AppColors.blue : AppColors.greyDark,
                BlendMode.srcIn
            ),
          ),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/svgs/icon_search.svg',
            colorFilter: ColorFilter.mode(
                (widget.selectedIndex == 1) ? AppColors.blue : AppColors.greyDark,
                BlendMode.srcIn
            ),
          ),
          label: 'Поиск',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/svgs/icon_cart.svg',
            colorFilter: ColorFilter.mode(
                (widget.selectedIndex == 2) ? AppColors.blue : AppColors.greyDark,
                BlendMode.srcIn
            ),
          ),
          label: 'Корзина',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/svgs/icon_account.svg',
            colorFilter: ColorFilter.mode(
                (widget.selectedIndex == 3) ? AppColors.blue : AppColors.greyDark,
                BlendMode.srcIn
            ),
          ),
          label: 'Аккаунт',
        ),
      ],
    );
  }
}
