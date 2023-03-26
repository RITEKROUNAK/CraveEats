import 'package:flutter/material.dart';
import 'package:zomato_clone/pages/couponPage.dart';
import 'package:zomato_clone/pages/selectDeliveryLocationPage.dart';
import 'package:zomato_clone/utilities/constancePage.dart' as style;

class itemPage extends StatefulWidget {
  itemPage({Key? key}) : super(key: key);

  static const String pageId = 'itemPage';

  @override
  State<itemPage> createState() => _itemPageState();
}

class _itemPageState extends State<itemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
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
          Row(
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
              Text(
                'Karnavati Fast  Food',
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => couponPage()));
            },
            child: Container(
              height: 20,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: style.regularColor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.label,
                    color: style.regularColor,
                    size: 15,
                  ),
                  Text(
                    'Coupons',
                    style: TextStyle(color: style.regularColor, fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(color: style.regularColor),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your total saving',
                    style: TextStyle(
                        color: style.regularColor,
                        fontSize: 15,
                        fontFamily: 'bold'),
                  ),
                  Text(
                    '\$95.00',
                    style: TextStyle(
                        color: style.regularColor,
                        fontSize: 15,
                        fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
          _buildTitle('Your Order'),
          _buildOrderContent(),
          _buildOrderContent(),
          _buildOrderContent(),
          _buildOrderContent(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: style.appColor,
                  ),
                  Text(
                    'Add More Items',
                    style: TextStyle(color: style.appColor),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.grey,
                ),
                Text(
                  'Do you want to add cookings instructions?',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.label,
                        color: style.regularColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Use Coupon',
                        style: TextStyle(fontFamily: 'bold', fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Code welcome apply!',
                            style:
                                TextStyle(fontFamily: 'semibold', fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '-\$75.00',
                            style: TextStyle(
                                fontFamily: 'semibold',
                                fontSize: 12,
                                color: style.regularColor),
                          ),
                          Text(
                            'Change offer',
                            style:
                                TextStyle(fontSize: 12, color: style.appColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.card_giftcard,
                        color: style.regularColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Also get a scratch card after placing this order!',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'item total',
                  style: TextStyle(fontSize: 12, fontFamily: 'semibold'),
                ),
                Text(
                  '\$235.00',
                  style: TextStyle(fontSize: 12, fontFamily: 'semibold'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'taxes & charges',
                      style: TextStyle(fontSize: 12, fontFamily: 'semibold'),
                    ),
                    Icon(Icons.expand_more)
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '\$16.5',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'semibold',
                          color: style.appColor,
                          decoration: TextDecoration.lineThrough),
                    ),
                    Text(
                      '\$1.50',
                      style: TextStyle(fontSize: 12, fontFamily: 'semibold'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Donate \$2 feeding india',
                      style: TextStyle(fontSize: 12, fontFamily: 'semibold'),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'remove',
                      style: TextStyle(fontSize: 12, color: style.appColor),
                    ),
                  ],
                ),
                Text(
                  '\$16.5',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'semibold',
                      color: style.appColor,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Zomato credit used',
                  style: TextStyle(fontSize: 12, color: style.regularColor),
                ),
                Text(
                  '\$235.00',
                  style: TextStyle(fontSize: 12, color: style.regularColor),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Total',
                  style: TextStyle(fontSize: 15, fontFamily: 'bold'),
                ),
                Text(
                  '\$0.00',
                  style: TextStyle(fontSize: 15, fontFamily: 'bold'),
                ),
              ],
            ),
          ),
          _buildTitle('Please tip your delivery partner'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Support your delivery partner and make their day! 100% of your tip will be tranferred to theme.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Wrap(
              children: [
                Container(
                  height: 50,
                  width: 100,
                  margin: EdgeInsets.only(right: 5, bottom: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.face,
                      ),
                      Text('\$15')
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.face,
                      ),
                      Text('\$20')
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.face,
                      ),
                      Text('\$50')
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.face,
                      ),
                      Text('\$other')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '$txt',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontFamily: 'bold', fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrderContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 15,
            width: 15,
            margin: EdgeInsets.only(top: 5, right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image(
                image: AssetImage('assets/images/v1.png'),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Butter Vada Pav',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'semibold'),
                    ),
                    Text(
                      '\$ 10',
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'semibold'),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 25,
                      width: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: style.appColor),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.add,
                            color: style.appColor,
                            size: 15,
                          ),
                          Text(
                            '2',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'semibold'),
                          ),
                          Icon(
                            Icons.remove,
                            color: style.appColor,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '\$ 20',
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'semibold'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => selectDeliveryLocationPage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle1(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Add Adress at next step',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
