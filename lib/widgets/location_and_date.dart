import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../theme/app_colors.dart';

class LocationAndDate extends StatelessWidget {
  const LocationAndDate({super.key});

  @override
  Widget build(BuildContext context) {
    String locale = Localizations.localeOf(context).languageCode;

    List<String> monthsList = [
      'Января',
      'Февраля',
      'Марта',
      'Апреля',
      'Мая',
      'Июня',
      'Июля',
      'Августа',
      'Сентября',
      'Октября',
      'Ноября',
      'Декабря'];

    DateTime now = DateTime.now();
    String dayOfWeek = DateFormat.d(locale).format(now);
    String numberOfMonth = DateFormat.M(locale).format(now);
    String year = DateFormat.y(locale).format(now);

    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/images/svgs/icon_location.svg',
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 4,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Санкт-Петербург',
                    style: TextStyle(
                        fontSize: 18,
                        color: AppColors.black,
                        fontFamily: 'San Francisco',
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 4,),
                  Text(
                    '${dayOfWeek} ${monthsList[int.parse(numberOfMonth) - 1]}, ${year}',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'San Francisco',
                      fontWeight: FontWeight.w400,
                      color: AppColors.black50,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

