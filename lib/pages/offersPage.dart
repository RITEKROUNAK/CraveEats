import 'package:flutter/material.dart';
import 'package:zomato_clone/pages/addItemPage.dart';
import 'package:zomato_clone/pages/categoriesPage.dart';
import 'package:zomato_clone/pages/profilePage.dart';
import 'package:zomato_clone/utilities/constancePage.dart' as style;

class offersPage extends StatefulWidget {
  offersPage({Key? key}) : super(key: key);

  static const String pageId = 'offersPage';

  @override
  State<offersPage> createState() => _offersPageState();
}

class _offersPageState extends State<offersPage> {
  int tabID = 0;
  bool showMore = false;
  List<Item> items = <Item>[
    Item('Chaat', 'assets/images/ct5.png'),
    Item('Pizza', 'assets/images/ct1.png'),
    Item('Pav Bhaji', 'assets/images/ct2.png'),
    Item('Lassi', 'assets/images/ct4.png'),
    Item('Punjabi Dish', 'assets/images/ct3.png'),
    Item('Chaat', 'assets/images/ct5.png'),
    Item('Pizza', 'assets/images/ct1.png'),
    Item('Pav Bhaji', 'assets/images/ct2.png'),
    Item('Lassi', 'assets/images/ct4.png'),
    Item('Punjabi Dish', 'assets/images/ct3.png'),
  ];

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
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: _buildSearchbar('Restaurant name or a dishname..'),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: style.appColor,
                size: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
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
                              heightFactor: 0.7,
                              child: showBottomModal(),
                            );
                          },
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Home',
                            style: TextStyle(
                                color: style.appColor,
                                fontFamily: 'bold',
                                fontSize: 20),
                          ),
                          Icon(
                            Icons.expand_more,
                            color: style.appColor,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Bhairvpara, Main Road, op Nandan Medical, Palitana, 364270.',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profilePage()));
                },
                child: Container(
                  height: 30,
                  width: 30,
                  child: CircleAvatar(
                    backgroundColor: style.appColor.withOpacity(0.3),
                    child: Image(
                      height: 15,
                      width: 15,
                      image: AssetImage('assets/images/i2.png'),
                    ),
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
      child: Column(
        children: [
          _buildSegment(),
          _buildTitle('Your active coupons'),
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(30),
                          child: FittedBox(
                            child: Image.asset('assets/images/c1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '\$ 50 Credits',
                        style: TextStyle(fontFamily: 'bold', fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3, right: 5),
                          child: Icon(
                            Icons.history_toggle_off,
                            size: 15,
                          ),
                        ),
                        Text(
                          'Expires',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      '4 may 2022',
                      style: TextStyle(fontFamily: 'semibold', fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          _buildTitle('Check offers on top dishes'),
          Column(
            children: [
              GridView.count(
                primary: false,
                crossAxisCount: 4,
                shrinkWrap: true,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                childAspectRatio: 1.3 / 1.4,
                children: [
                  if (showMore == false)
                    for (var item in items.sublist(
                        0, items.length > 8 ? 8 : items.length))
                      buildCategories(Image.asset(item.img), (item.name))
                  else if (showMore == true)
                    for (var item in items)
                      buildCategories(Image.asset(item.img), (item.name))
                ],
              ),
              items.length > 8
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          showMore = !showMore;
                        });
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            showMore == false
                                ? Text('See More')
                                : Text('See Less'),
                            Icon(Icons.expand_more),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          _buildTitle('Best offers around you'),
          _buildContent(),
          _buildContent(),
          _buildContent(),
          _buildContent(),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Text(
            '$txt',
            style: TextStyle(fontFamily: 'bold', fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget buildCategories(img, txt) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => categoriesPage()));
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(30),
                  child: FittedBox(
                    child: img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              '$txt',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'semibold', color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => addItemPage()));
      },
      child: Container(
        height: 260,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 12,
              color: Color.fromRGBO(0, 0, 0, 0.16),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/5.jpg'),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 30,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.7),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Image(
                                height: 15,
                                width: 15,
                                image: AssetImage(
                                  'assets/images/l2.png',
                                ),
                              ),
                            ),
                            Text(
                              'PURE VEG RESTAURANTS',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite_outline,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 35,
                        width: 70,
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '60% Off upto 120',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontFamily: 'semibold'),
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 130,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.history_toggle_off,
                              color: Colors.green,
                              size: 15,
                            ),
                            Text(
                              '26 mins | 1km',
                              style: TextStyle(fontFamily: 'semibold'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Karnavati Fast Food',
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontFamily: 'semibold', fontSize: 17),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.3),
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'New',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 10),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.green,
                              size: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Fast Food, Street Food, Sandwich',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '\$50 for one',
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Open at 11am',
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontSize: 12, color: Colors.redAccent),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.recycling,
                        color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Zomato recycles more plastic than used in orders',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchbar(hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 2.0,
                    ),
                  ]),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.search,
                      color: style.appColor,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: hintText,
                        prefixStyle: const TextStyle(color: style.appColor),
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.mic,
                      color: style.appColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget showBottomModal() {
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
                  child: Text(
                    'Select a location',
                    style: TextStyle(fontFamily: 'semibold', fontSize: 18),
                  ),
                ),
                _buildSearchbar2('Search for area, street name, city name...'),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 4, right: 10),
                            child: Icon(
                              Icons.my_location,
                              color: Colors.redAccent,
                              size: 20,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Use current location',
                                style: TextStyle(
                                    color: style.appColor,
                                    fontFamily: 'semibold',
                                    fontSize: 17),
                              ),
                              Text(
                                'Bhairav Para, Palitana',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Saved Address',
                    style: TextStyle(fontSize: 15, fontFamily: 'semibold'),
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
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10, top: 5),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.home_outlined,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  Text(
                                    '3 km',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'semibold',
                                        fontSize: 17),
                                  ),
                                  Text(
                                    'Shop no 5 hariom plaza opp nandan medical, palitana, 364270, 2 initappz technologies, bhairavpara',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.more_horiz,
                              color: style.appColor,
                            )),
                          ),
                          SizedBox(height: 5),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.fast_forward_outlined,
                              color: style.appColor,
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Recent Locations',
                    style: TextStyle(fontSize: 15, fontFamily: 'semibold'),
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
                      Padding(
                        padding: const EdgeInsets.only(top: 4, right: 10),
                        child: Icon(
                          Icons.access_time,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      Text(
                        'Bhairavpara, Palitana',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'semibold',
                            fontSize: 17),
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

  Widget _buildSearchbar2(hintText) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 10),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 2.0,
                    ),
                  ]),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.search,
                      color: style.appColor,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: hintText,
                        prefixStyle: const TextStyle(color: style.appColor),
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return Stack(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 105),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 1;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 120,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: tabID == 1
                        ? BoxDecoration(
                            color: style.appColor.withOpacity(0.2),
                            border: Border.all(
                                color: style.appColor.withOpacity(0.1)),
                            borderRadius: BorderRadius.circular(5),
                          )
                        : BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(5),
                          ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image(
                              image: AssetImage('assets/images/l1.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text('Pure Veg'),
                        ),
                        tabID == 1
                            ? Icon(
                                Icons.close,
                                color: Colors.grey,
                                size: 15,
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 2;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 120,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: tabID == 2
                        ? BoxDecoration(
                            color: style.appColor.withOpacity(0.2),
                            border: Border.all(
                                color: style.appColor.withOpacity(0.1)),
                            borderRadius: BorderRadius.circular(5),
                          )
                        : BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(5),
                          ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Fast Delivery'),
                        tabID == 2
                            ? Icon(
                                Icons.close,
                                color: Colors.grey,
                                size: 15,
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 3;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 120,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: tabID == 3
                        ? BoxDecoration(
                            color: style.appColor.withOpacity(0.2),
                            border: Border.all(
                                color: style.appColor.withOpacity(0.1)),
                            borderRadius: BorderRadius.circular(5),
                          )
                        : BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(5),
                          ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Rating 4.0+'),
                        tabID == 3
                            ? Icon(
                                Icons.close,
                                color: Colors.grey,
                                size: 15,
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 4;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 120,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: tabID == 4
                        ? BoxDecoration(
                            color: style.appColor.withOpacity(0.2),
                            border: Border.all(
                                color: style.appColor.withOpacity(0.1)),
                            borderRadius: BorderRadius.circular(5),
                          )
                        : BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(5),
                          ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('New Arrivals'),
                        tabID == 4
                            ? Icon(
                                Icons.close,
                                color: Colors.grey,
                                size: 15,
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 5;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 120,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: tabID == 5
                        ? BoxDecoration(
                            color: style.appColor.withOpacity(0.2),
                            border: Border.all(
                                color: style.appColor.withOpacity(0.1)),
                            borderRadius: BorderRadius.circular(5),
                          )
                        : BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(5),
                          ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Cuisines'),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 6;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 120,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: tabID == 6
                        ? BoxDecoration(
                            color: style.appColor.withOpacity(0.2),
                            border: Border.all(
                                color: style.appColor.withOpacity(0.1)),
                            borderRadius: BorderRadius.circular(5),
                          )
                        : BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(5),
                          ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('More'),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                topLeft: Radius.circular(5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.swap_vert,
                ),
                Text('Relevance')
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Item {
  const Item(this.name, this.img);
  final String name;
  final String img;
}
