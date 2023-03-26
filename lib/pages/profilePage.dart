import 'package:flutter/material.dart';
import 'package:zomato_clone/pages/aboutPage.dart';
import 'package:zomato_clone/pages/addAddressPage.dart';
import 'package:zomato_clone/pages/editProfilePage.dart';
import 'package:zomato_clone/pages/favoritePage.dart';
import 'package:zomato_clone/pages/loginPage.dart';
import 'package:zomato_clone/pages/managePaymentPage.dart';
import 'package:zomato_clone/pages/notificationPage.dart';
import 'package:zomato_clone/pages/orderHistoryPage.dart';
import 'package:zomato_clone/pages/settingsPage.dart';
import 'package:zomato_clone/utilities/constancePage.dart' as style;

class profilePage extends StatefulWidget {
  profilePage({Key? key}) : super(key: key);

  static const String pageId = 'profilePage';

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hardik',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'view activity',
                          style: TextStyle(fontSize: 10, color: style.appColor),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: style.appColor,
                        ),
                      ],
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => editProfilePage()));
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    child: CircleAvatar(
                      backgroundColor: style.appColor.withOpacity(0.3),
                      child: Image(
                        height: 30,
                        width: 30,
                        image: AssetImage('assets/images/i2.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300),
                  top: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.favorite_outline),
                      Text(
                        'Likes',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => notificationPage()));
                    },
                    child: Column(
                      children: [
                        Icon(Icons.notifications_outlined),
                        Text(
                          'Notifications',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => settingsPage()));
                    },
                    child: Column(
                      children: [
                        Icon(Icons.settings_outlined),
                        Text(
                          'Settings',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => managePayments()));
                    },
                    child: Column(
                      children: [
                        Icon(Icons.credit_card),
                        Text(
                          'Payments',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade100,
                          child: Icon(
                            Icons.star_outline,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Your Rating',
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 12,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Text(
                    'FOOD ORDERS',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => orderHistoryPage()));
              },
              child: _buildContent(Icons.description, 'Your Orders'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => favoritesPage()));
              },
              child: _buildContent(Icons.favorite_outline, 'Favorites Orders'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => addAddressPage()));
              },
              child: _buildContent(Icons.location_on, 'Address Book'),
            ),
            _buildContent(Icons.chat_outlined, 'Online Ordering Book'),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => aboutPage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                    top: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade100,
                            child: Icon(
                              Icons.info_outline,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'About',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('Send Feedback'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('Rate us on the Play Store'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginPage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text('LogOut'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(icn, txt) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade100,
                  child: Icon(
                    icn,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  '$txt',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
