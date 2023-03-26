import 'package:flutter/material.dart';
import 'package:zomato_clone/utilities/constancePage.dart' as style;

class couponPage extends StatefulWidget {
  couponPage({Key? key}) : super(key: key);

  static const String pageId = 'couponPage';

  @override
  State<couponPage> createState() => _couponPageState();
}

class _couponPageState extends State<couponPage> {
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: style.appColor),
                        ),
                        labelText: 'Enter coupon code',
                        labelStyle: const TextStyle(color: Colors.grey),
                        floatingLabelStyle:
                            const TextStyle(color: style.appColor),
                      ),
                    ),
                  ),
                  Text(
                    'Apply',
                    style: TextStyle(color: style.appColor),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
              ),
              child: Text('Available Coupons'),
            ),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade100, width: 10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox.fromSize(
              size: Size.fromRadius(30),
              child: FittedBox(
                child: Image.asset('assets/images/py1.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            '10% OFF upto \$150 using standard chartered DigiSmart Credit Card.',
          ),
          Text(
            'No minimum order value needed. View Details',
            style: TextStyle(color: Colors.grey, fontSize: 12),
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.blueGrey,
                    ),
                  ),
                  child: Text('HFG546'),
                ),
                Text(
                  'Apply',
                  style: TextStyle(color: style.appColor),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Text(
                  'You will save \$12.38 with this code.',
                  style: TextStyle(color: style.regularColor, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
