import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/cart_item_model.dart';
import '../theme/app_colors.dart';
import '../widgets/bottom_navigation.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartItem> products = [
    CartItem(
        id: 1,
        name: 'Рис с овощами',
        imageUrl: 'assets/images/product_1.png',
        price: 799,
        weight: 560,
        qty: 1
    ),
    CartItem(
        id: 2,
        name: 'Салат по восточному',
        imageUrl: 'assets/images/product_2.png',
        price: 799,
        weight: 560,
        qty: 1
    ),
    CartItem(
        id: 3,
        name: 'Рыба с овощами и рисом',
        imageUrl: 'assets/images/product_3.png',
        price: 799,
        weight: 560,
        qty: 1
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
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: ListView.builder(
                itemCount: products.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (_, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: Image.asset(
                                    products[index].imageUrl,
                                    fit: BoxFit.cover,
                                    height: 62,
                                    width: 62,
                                  ),
                                ),
                                color: AppColors.grey,
                              ),
                              SizedBox(width: 8,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    products[index].name,
                                    style: TextStyle(
                                      fontFamily: 'San Francisco',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black
                                    ),
                                  ),
                                  SizedBox(height: 4,),
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
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Center(
                                    child: SvgPicture.asset(
                                      'assets/images/svgs/icon_minus.svg',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontFamily: 'San Francisco',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Center(
                                    child: SvgPicture.asset(
                                      'assets/images/svgs/icon_plus.svg',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.greyAlt,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 6
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16,),
                    ],
                  );
                }
              ),
            ),
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
                    'Оплатить 2 004 ₽',
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
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
