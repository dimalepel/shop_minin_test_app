import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/app_colors.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      onTap: (int a) {},
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/svgs/icon_home.svg',
            colorFilter: ColorFilter.mode(
              AppColors.blue,
              BlendMode.srcIn
            ),
          ),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/svgs/icon_search.svg',
          ),
          label: 'Поиск',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/svgs/icon_cart.svg',
          ),
          label: 'Корзина',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/svgs/icon_account.svg',
          ),
          label: 'Аккаунт',
        ),
      ],
    );
  }
}
