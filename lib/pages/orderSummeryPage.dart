import 'package:flutter/material.dart';
import 'package:zomato_clone/utilities/constancePage.dart' as style;

class orderSummeryPage extends StatefulWidget {
  orderSummeryPage({Key? key}) : super(key: key);

  static const String pageId = 'orderSummeryPage';

  @override
  State<orderSummeryPage> createState() => _orderSummeryPageState();
}

class _orderSummeryPageState extends State<orderSummeryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
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
          Text(
            'Support',
            style: TextStyle(color: style.appColor, fontSize: 15),
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
            _buildTitle(),
            SizedBox(height: 10),
            Text(
              'Karnavati fast food',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Taleti road, Palitana Locality, Palitana',
              style: TextStyle(fontSize: 12),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: style.appColor),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Download Summury',
                      style: TextStyle(color: style.appColor, fontSize: 12),
                    ),
                  ),
                  Icon(
                    Icons.download_outlined,
                    color: style.appColor,
                    size: 12,
                  ),
                ],
              ),
            ),
            Text(
              'This order was delivered.',
              style: TextStyle(fontSize: 12),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Order',
                    style: TextStyle(fontSize: 17),
                  ),
                  Container(
                    height: 20,
                    width: 150,
                    decoration: BoxDecoration(
                      color: style.appColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Remove from favorites',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _buildOrderDetails(),
            _buildOrderDetails(),
            _buildOrderDetails(),
            _buildOrderDetails(),
            _buildOrderDetails(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'item Total',
                  style: TextStyle(fontFamily: 'semibold'),
                ),
                Text(
                  '\$235',
                  style: TextStyle(fontFamily: 'semibold'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Coupen (WELCOME)',
                  style: TextStyle(color: style.regularColor),
                ),
                Text(
                  'You saved \$75.00',
                  style: TextStyle(color: style.regularColor),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Taxes',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  '\$11.75',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Charge',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'Free',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Donate \$1 to Feeding india',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  '\$1.00',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                  top: BorderSide(color: Colors.grey),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Grand Total',
                    style: TextStyle(fontSize: 12, fontFamily: 'semibold'),
                  ),
                  Text(
                    '\$172.75',
                    style: TextStyle(fontSize: 12, fontFamily: 'semibold'),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.lightBlue.withOpacity(0.1),
                border: Border.all(color: Colors.lightBlue),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your total savings',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  Text(
                    '\$75',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    'Order details',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
            _buildDetails('Order Number', '406546555'),
            _buildDetails('Payment', 'Paid : Using Upi'),
            _buildDetails('Date', 'April 27, 2022 at 05:37 PM'),
            _buildDetails('Phone Number', '8454XXXXXX'),
            _buildDetails('Delivery To',
                'Shop no 5 hariom piaza oppo nandan medical, palitana, 364270, 2 initappz, Bhairav para, Palitana'),
            Container(
              height: 30,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                  top: BorderSide(color: Colors.grey),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Call Karnavati Fast Food (+945645645)',
                    style: TextStyle(color: style.appColor, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        Text(
          'Order Summary',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  Widget _buildOrderDetails() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  child: CircleAvatar(
                    child: Image(image: AssetImage('assets/images/v1.png')),
                  ),
                ),
                SizedBox(width: 10),
                Text('Butter Vada Pav')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('X  \$30.0'),
                  ],
                ),
                Text('\$60.0'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetails(txt1, txt2) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$txt1',
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
          Text(
            '$txt2',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
