import 'package:flutter/material.dart';

class managePayments extends StatefulWidget {
  managePayments({Key? key}) : super(key: key);

  static const String pageId = 'managePayments';

  @override
  State<managePayments> createState() => _managePaymentsState();
}

class _managePaymentsState extends State<managePayments> {
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
          Text(
            'Manage Payment Methods',
            style: TextStyle(fontSize: 17, color: Colors.black),
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
            _buildTitle('Cards'),
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/cr2.jpg'),
                ),
              ),
            ),
            _buildContent1('Add Credit, Debit & ATM Cards'),
            _buildContent1('Sodexo Meal Pass'),
            _buildLines(),
            _buildTitle('UPI'),
            _buildContent1('Paytm UPI'),
            _buildContent1('Google Pay'),
            _buildContent1('PhonePe'),
            _buildContent2('Pay via Upi', 'You need to have registered UPI ID'),
            _buildLines(),
            _buildTitle('Wallets'),
            _buildContent2(
                'Paytm', 'Link your Paytm wallet to use this payment method.'),
            _buildContent2('Mobikwik',
                'Link your Mobikwik wallet to use this payment method.'),
            _buildContent2('Freecharge',
                'Link your Freecharge wallet to use this payment method.'),
            _buildLines(),
            _buildContent1('Netbanking'),
            _buildLines(),
            _buildTitle('Pay Later'),
            _buildContent2('Lazy Pay',
                'opps we don\'t seem to have LasyPay open for you as of now but we promise throw it open to you scan.'),
            _buildContent2('simpl', 'You are not eligible to use simpl.'),
            _buildContent2('OlaMoney Postpaid+',
                'You are not eligible to use laMoney Postpaid+.'),
            _buildTitle('Zomato Credits'),
            _buildContent2('Zomato Credits', 'Account balance : \$ 50.00'),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(
            '$txt',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget _buildLines() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300, width: 5),
        ),
      ),
    );
  }

  Widget _buildContent1(txt) {
    return InkWell(
      onTap: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => orderplacedPage()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
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
                  Container(
                    height: 30,
                    width: 60,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/py1.png'),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '$txt',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent2(txt1, txt2) {
    return InkWell(
      onTap: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => orderplacedPage()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
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
                  Container(
                    height: 30,
                    width: 60,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/py1.png'),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$txt1',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          '$txt2',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.expand_more,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
