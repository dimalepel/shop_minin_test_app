import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final List<String> tags = [
    'Все меню',
    'Салаты',
    'С рисом',
    'С рыбой',
    'Роллы'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          'Азиатская кухня',
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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: tags.length,
                  itemBuilder: (context, index) {
                    return FittedBox(
                      child: Container(
                        height: 40,
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                            color: Color(0xff3364E0),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: FittedBox(
                            child: Text(
                              tags[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),
          ],
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
