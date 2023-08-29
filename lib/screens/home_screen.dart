import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_minin_test_app/screens/category_screen.dart';
import 'package:shop_minin_test_app/widgets/bottom_navigation.dart';

import '../models/category_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Category> categories = [
    Category(
        id: 1,
        name: 'Пекарни и кондитерское',
        imageUrl: 'assets/images/category_1.png'
    ),
    Category(
        id: 2,
        name: 'Фастфуд',
        imageUrl: 'assets/images/category_2.png'
    ),
    Category(
        id: 3,
        name: 'Азиатская кухня',
        imageUrl: 'assets/images/category_3.png'
    ),
    Category(
        id: 4,
        name: 'Супы',
        imageUrl: 'assets/images/category_4.png'
    ),
    Category(
        id: 1,
        name: 'Пекарни и кондитерское',
        imageUrl: 'assets/images/category_1.png'
    ),
    Category(
        id: 2,
        name: 'Фастфуд',
        imageUrl: 'assets/images/category_2.png'
    ),
    Category(
        id: 3,
        name: 'Азиатская кухня',
        imageUrl: 'assets/images/category_3.png'
    ),
    Category(
        id: 4,
        name: 'Супы',
        imageUrl: 'assets/images/category_4.png'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 57,
        elevation: 0,
        leadingWidth: 200,
        leading: Padding(
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
                        const Text(
                          'Санкт-Петербург',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontFamily: 'San Francisco',
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        const SizedBox(height: 4,),
                        Text(
                          '12 Августа, 2023',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'San Francisco',
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(top: 7, right: 16),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            )
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, right: 16, left: 16),
        child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (_, index) {
              return InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreen(categoryName: categories[index].name,))),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            categories[index].imageUrl,
                            fit: BoxFit.cover,
                            height: 148,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        Positioned(
                            left: 16,
                            top: 12,
                            child: SizedBox(
                              width: 190,
                              child: Text(
                                categories[index].name,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'San Francisco',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
        ),
      ),
      bottomNavigationBar: BottomNavigation(selectedIndex: 0,),
    );
  }
}
