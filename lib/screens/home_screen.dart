import 'package:flutter/material.dart';
import 'package:shop_minin_test_app/screens/category_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categoriesPreview = [
    'assets/images/category_1.png',
    'assets/images/category_2.png',
    'assets/images/category_3.png',
    'assets/images/category_4.png',
    'assets/images/category_1.png',
    'assets/images/category_2.png',
    'assets/images/category_3.png',
    'assets/images/category_4.png'
  ];

  final List<String> categoriesTitle= [
    'Пекарни и кондитерские ',
    'Фастфуд',
    'Азиатская кухня',
    'Супы',
    'Пекарни и кондитерские ',
    'Фастфуд',
    'Азиатская кухня',
    'Супы'
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
                    const Icon(
                      Icons.person_pin_circle_outlined,
                      size: 24,
                      color: Colors.black,
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
                          ),
                        ),
                        const SizedBox(height: 4,),
                        Text(
                          '12 Августа, 2023',
                          style: TextStyle(
                            fontSize: 14,
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
            itemCount: categoriesTitle.length,
            itemBuilder: (_, index) {
              return InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreen())),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            categoriesPreview[index],
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
                                categoriesTitle[index],
                                style: TextStyle(
                                  fontSize: 20,
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: Color(0xff3364E0),
        ),
        useLegacyColorScheme: false,
        unselectedLabelStyle: TextStyle(
          color: Color(0xffA5A9B2),
          fontSize: 12,
          fontWeight: FontWeight.w500
        ),
        selectedItemColor: Color(0xff3364E0),
        selectedLabelStyle: TextStyle(
          color: Color(0xff3364E0),
            fontSize: 12,
            fontWeight: FontWeight.w500
        ),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xffA5A9B2),
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(0xffA5A9B2),
            ),
            label: 'Поиск',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Color(0xffA5A9B2),
            ),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Color(0xffA5A9B2),
            ),
            label: 'Аккаунта',
          ),
        ],
      ),
    );
  }
}
