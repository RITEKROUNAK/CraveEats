import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:zomato_clone/pages/itemPage.dart';
import 'package:zomato_clone/pages/reviewPage.dart';
import 'package:zomato_clone/utilities/constancePage.dart' as style;

class addItemPage extends StatefulWidget {
  addItemPage({Key? key}) : super(key: key);

  static const String pageId = 'addItemPage';

  @override
  State<addItemPage> createState() => _addItemPageState();
}

class _addItemPageState extends State<addItemPage> {
  int tabID = 2;
  bool isOpen = false;

  List names = [
    'Fast Food (20)',
    'Dinner (21)',
    'Recommended (25)',
    'Meals (5)',
    'Pizza (35)',
    'Family Bing Combo (3)',
    'Pasta (2)',
    'Sides (5)',
    'Choise Of Dips (10)',
    'Desserts (1)',
    'Recommended (25)',
    'Meals (5)',
    'Pizza (35)',
    'Family Bing Combo (3)',
    'Pasta (2)',
    'Sides (5)',
    'Choise Of Dips (10)',
    'Desserts (1)',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: tabID == 2 ? _buildBottomNavigationBar() : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 30,
        width: 130,
        child: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              showDialog(
                  context: context,
                  builder: (BuildContext Context) {
                    return alertDialogBox();
                  });
            });
          },
          label: const Text(
            'Browse Menu',
            style: TextStyle(fontSize: 10),
          ),
          icon: const Icon(
            Icons.fastfood,
            size: 15,
          ),
          backgroundColor: style.itemColor,
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Karnavati Fast Food',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 18, fontFamily: 'bold'),
                        ),
                        Text(
                          'Beverages',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          'Bhairavnath chowk, Old bus stand, Palitana',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                        Text(
                          'Locality, Palitana - 1KM',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => reviewPage()));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 35,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'New',
                                style: TextStyle(
                                    color: Colors.green, fontFamily: 'bold'),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              Text('12'),
                              Text(
                                'Reviews',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.history_rounded,
                        color: Colors.green,
                        size: 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '23 mins',
                        style: TextStyle(fontFamily: 'semibold'),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.delivery_dining,
                        color: Colors.red,
                        size: 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Free delivery',
                        style: TextStyle(fontFamily: 'semibold'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildScrollContent(),
                    _buildScrollContent(),
                    _buildScrollContent(),
                    _buildScrollContent(),
                    _buildScrollContent(),
                    _buildScrollContent(),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 15,
                    width: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image(
                        image: AssetImage('assets/images/l2.png'),
                      ),
                    ),
                  ),
                  Text(
                    'PURE VEG',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Accordion(
              disableScrolling: true,
              maxOpenSections: 1,
              headerBackgroundColorOpened: Colors.black54,
              headerPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              children: [
                for (var item in names)
                  AccordionSection(
                    isOpen: item == 'Fast Food (20)' ? true : false,
                    rightIcon: const Icon(Icons.keyboard_arrow_down,
                        color: Colors.black),
                    headerBackgroundColor: Colors.white,
                    contentBorderColor: const Color(0xffffffff),
                    headerBackgroundColorOpened: Colors.white,
                    header: Text(item.toString(),
                        style: const TextStyle(
                            color: Colors.black, fontFamily: 'bold')),
                    content: Column(
                      children: [
                        _buildCategoriesContent(),
                        _buildCategoriesContent(),
                        _buildCategoriesContent(),
                        _buildCategoriesContent(),
                        _buildCategoriesContent(),
                      ],
                    ),
                    contentHorizontalPadding: 5,
                    contentBorderWidth: 1,
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCategoriesContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return FractionallySizedBox(
                heightFactor: 0.8,
                child: showBottomModal(),
              );
            },
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    child: CircleAvatar(
                      child: Image(
                        image: AssetImage(
                          'assets/images/v1.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Regular Sandwich',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15, fontFamily: 'semibold'),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '\$25',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 12,
                        ),
                        Text('10')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite_outline,
                              color: style.appColor,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.offline_share,
                              color: style.appColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(50),
                    child: FittedBox(
                      child: Image.asset('assets/images/3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                if (tabID == 1)
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabID = 2;
                      });
                    },
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: style.appColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add',
                            style: TextStyle(
                                color: style.appColor, fontFamily: 'bold'),
                          ),
                        ],
                      ),
                    ),
                  )
                else if (tabID == 2)
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: style.appColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'bold'),
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScrollContent() {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return FractionallySizedBox(
              heightFactor: 0.4,
              child: showBottomModal2(),
            );
          },
        );
      },
      child: Container(
        height: 50,
        width: 170,
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              Icons.label,
              color: style.regularColor,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Paytm cashback',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontFamily: 'semibold'),
                  ),
                  Text(
                    'use code ZOMPAY6464464 ',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget alertDialogBox() {
    return AlertDialog(
      contentPadding: EdgeInsets.all(20),
      content: Container(
        height: 500,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best in fast food',
                      style: TextStyle(
                          fontFamily: 'semibold', color: Colors.black),
                    ),
                    Text(
                      '10',
                      style: TextStyle(
                          fontFamily: 'semibold', color: Colors.black),
                    ),
                  ],
                ),
              ),
              _buildAlertBoxItem('Recommended', '10'),
              _buildAlertBoxItem('Jain puffs', '10'),
              _buildAlertBoxItem('Khari', '5'),
              _buildAlertBoxItem('Pizza puff', '7'),
              _buildAlertBoxItem('Special puff', '4'),
              _buildAlertBoxItem('Puffs', '5'),
              _buildAlertBoxItem('Chinese puffs', '10'),
              _buildAlertBoxItem('Cheese puff', '15'),
              _buildAlertBoxItem('Butter puff', '8'),
              _buildAlertBoxItem('Paneer puff', '6'),
              _buildAlertBoxItem('Vegetable', '9'),
              _buildAlertBoxItem('Recommended', '10'),
              _buildAlertBoxItem('Jain puffs', '10'),
              _buildAlertBoxItem('Khari', '5'),
              _buildAlertBoxItem('Pizza puff', '7'),
              _buildAlertBoxItem('Special puff', '4'),
              _buildAlertBoxItem('Puffs', '5'),
              _buildAlertBoxItem('Chinese puffs', '10'),
              _buildAlertBoxItem('Cheese puff', '15'),
              _buildAlertBoxItem('Butter puff', '8'),
              _buildAlertBoxItem('Paneer puff', '6'),
              _buildAlertBoxItem('Vegetable', '9'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAlertBoxItem(txt1, txt2) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop(true);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$txt1',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            Text(
              '$txt2',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

  Widget showBottomModal() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/3.jpg'),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              child: CircleAvatar(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/v1.png',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              decoration: BoxDecoration(
                                color: style.appColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                'Bestseller',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Regular Sandwich',
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontSize: 15, fontFamily: 'semibold'),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '25',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                        SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 12,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 12,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 12,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 12,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 12,
                              ),
                              Text('10')
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.favorite_outline,
                                    color: style.appColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.offline_share,
                                    color: style.appColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    //
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: style.appColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.remove,
                          color: style.appColor,
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'bold'),
                        ),
                        Icon(
                          Icons.add,
                          color: style.appColor,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      padding: EdgeInsets.symmetric(vertical: 13.0),
                      decoration: style.contentButtonStyle1(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add item \$105',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget showBottomModal2() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: -80,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: style.itemColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                      child: Icon(
                    Icons.close,
                    color: Colors.white,
                  )),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Coupon Details',
                          style:
                              TextStyle(fontFamily: 'semibold', fontSize: 18),
                        ),
                      ],
                    ),
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
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Free Buttermilk',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'semibold',
                                fontSize: 15),
                          ),
                          Text(
                            '1 unit of buttermilk is free on orders above \$349',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 3),
                        child: Icon(
                          Icons.check_box,
                          color: Colors.green,
                          size: 15,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Offer will be applied automatically. No coupon code required.',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 3),
                        child: Icon(
                          Icons.check_box,
                          color: Colors.green,
                          size: 15,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Offer will be applied automatically. No coupon code required. its price will be reduced from the bill.',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 3),
                        child: Icon(
                          Icons.check_box,
                          color: Colors.green,
                          size: 15,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Offer will be applied automatically. No coupon code required. its price will be reduced from the bill.',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => itemPage()));
        },
        child: Container(
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: style.contentButtonStyle1(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '1 ITEM',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  Text(
                    '\$120 plus taxes',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
