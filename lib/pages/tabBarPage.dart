import 'package:flutter/material.dart';
import 'package:zomato_clone/pages/deliveryPage.dart';
import 'package:zomato_clone/pages/historyPage.dart';
import 'package:zomato_clone/pages/moneyPage.dart';
import 'package:zomato_clone/pages/offersPage.dart';
import 'package:zomato_clone/pages/zplPage.dart';
import 'package:zomato_clone/utilities/constancePage.dart' as style;

class tabBarPage extends StatefulWidget {
  tabBarPage({Key? key}) : super(key: key);

  static const String pageId = 'tabBarPage';

  @override
  State<tabBarPage> createState() => _tabBarPageState();
}

class _tabBarPageState extends State<tabBarPage> {
  int _currentIndex = 0;
  var radius = Radius.circular(10);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: TabBar(
              labelColor: style.itemColor,
              unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
              indicator: BoxDecoration(
                border: Border(
                  top: BorderSide(color: style.appColor, width: 2.0),
                ),
              ),
              labelPadding: EdgeInsets.symmetric(horizontal: 0),
              labelStyle: TextStyle(
                fontFamily: 'semibold',
                fontSize: 12,
              ),
              onTap: (int index) => setState(() => _currentIndex = index),
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.delivery_dining,
                    color: _currentIndex == 0
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                  ),
                  text: 'Delivery',
                ),
                Tab(
                  icon: Icon(
                    Icons.local_offer,
                    color: _currentIndex == 1
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                  ),
                  text: 'Offers',
                ),
                Tab(
                  icon: Icon(
                    Icons.sports_baseball,
                    color: _currentIndex == 2
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                  ),
                  text: 'ZPL',
                ),
                Tab(
                  icon: Icon(
                    Icons.account_balance_wallet,
                    color: _currentIndex == 3
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                  ),
                  text: 'Money',
                ),
                Tab(
                  icon: Icon(
                    Icons.description,
                    color: _currentIndex == 4
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                  ),
                  text: 'History',
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            deliveryPage(),
            offersPage(),
            zplPage(),
            moneyPage(),
            historyPage(),
          ],
        ),
      ),
    );
  }
}
