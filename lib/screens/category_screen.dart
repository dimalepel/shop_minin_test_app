import 'package:flutter/material.dart';

import '../models/product_model.dart';

class CategoryScreen extends StatefulWidget {
  final String categoryName;

  const CategoryScreen({super.key, required this.categoryName});

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

  final List<Product> products = [
    Product(
        title: 'Рис с овощами',
        imageUrl: 'assets/images/product_1.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Салат по восточному',
        imageUrl: 'assets/images/product_2.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Рыба с овощами и рисом',
        imageUrl: 'assets/images/product_3.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Тортеллини',
        imageUrl: 'assets/images/product_4.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Зеленый салат',
        imageUrl: 'assets/images/product_5.png',
        price: 390,
        weight: 420,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Рулеты из ветчины',
        imageUrl: 'assets/images/product_6.png',
        price: 815,
        weight: 380,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Рис с овощами',
        imageUrl: 'assets/images/product_1.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Салат по восточному',
        imageUrl: 'assets/images/product_2.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Рыба с овощами и рисом',
        imageUrl: 'assets/images/product_3.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Тортеллини',
        imageUrl: 'assets/images/product_4.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Зеленый салат',
        imageUrl: 'assets/images/product_5.png',
        price: 390,
        weight: 420,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Рулеты из ветчины',
        imageUrl: 'assets/images/product_6.png',
        price: 815,
        weight: 380,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Рис с овощами',
        imageUrl: 'assets/images/product_1.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Салат по восточному',
        imageUrl: 'assets/images/product_2.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Рыба с овощами и рисом',
        imageUrl: 'assets/images/product_3.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Тортеллини',
        imageUrl: 'assets/images/product_4.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Зеленый салат',
        imageUrl: 'assets/images/product_5.png',
        price: 390,
        weight: 420,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Рулеты из ветчины',
        imageUrl: 'assets/images/product_6.png',
        price: 815,
        weight: 380,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Рис с овощами',
        imageUrl: 'assets/images/product_1.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Салат по восточному',
        imageUrl: 'assets/images/product_2.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Рыба с овощами и рисом',
        imageUrl: 'assets/images/product_3.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Тортеллини',
        imageUrl: 'assets/images/product_4.png',
        price: 799,
        weight: 560,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Зеленый салат',
        imageUrl: 'assets/images/product_5.png',
        price: 390,
        weight: 420,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
    Product(
        title: 'Рулеты из ветчины',
        imageUrl: 'assets/images/product_6.png',
        price: 815,
        weight: 380,
        description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой'
    ),
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
          widget.categoryName,
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
      body: SingleChildScrollView(
        child: Padding(
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
                              color: (index == 0) ? Color(0xff3364E0) : Color(0xffF8F7F5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                tags[index],
                                style: TextStyle(
                                    color: (index == 0) ? Colors.white : Colors.black,
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
              SizedBox(height: 16,),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1.0,
                  mainAxisExtent: 146,
                ),
                itemCount: products.length,
                itemBuilder: (_, index) {
                  return Container(
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                contentPadding: EdgeInsets.all(16),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        child: Stack(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.symmetric(vertical: 14),
                                              height: 232,
                                              child: Image.asset(
                                                products[index].imageUrl,
                                                fit: BoxFit.contain,
                                                height: 204,
                                                width: MediaQuery.of(context).size.width,
                                              ),
                                            ),
                                            Positioned(
                                              right: 10,
                                              top: 10,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(8)
                                                    ),
                                                    child: Center(
                                                      child: Icon(
                                                          Icons.favorite_border,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 8,),
                                                  InkWell(
                                                    onTap: () => Navigator.of(context).pop(),
                                                    child: Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(8)
                                                      ),
                                                      child: Center(
                                                        child: Icon(
                                                            Icons.close,
                                                            color: Colors.black
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ),
                                          ],
                                        ),
                                        color: Color(0xffF8F7F5),
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                    Text(
                                      products[index].title,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        Text(
                                          '${products[index].price.toString()} \$ ',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black
                                          ),
                                        ),
                                        Text(
                                          '· ${products[index].weight}г',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black.withOpacity(0.4)
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Text(
                                      products[index].description,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(0.65)
                                      ),
                                    ),
                                    SizedBox(height: 16,),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 48,
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0xff3364E0),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Добавить в корзину',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                products[index].imageUrl,
                                fit: BoxFit.cover,
                                height: 109,
                                width: 109,
                              ),
                            ),
                            color: Color(0xffF8F7F5),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            products[index].title,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.clip,
                          )
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
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
