import 'package:flutter/material.dart';
import 'package:zomato_clone/utilities/constancePage.dart' as style;

class activeWalletPage extends StatefulWidget {
  activeWalletPage({Key? key}) : super(key: key);

  static const String pageId = 'activeWalletPage';

  @override
  State<activeWalletPage> createState() => _activeWalletPageState();
}

class _activeWalletPageState extends State<activeWalletPage> {
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
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Activate Wallet',
        style: TextStyle(fontSize: 17, color: Colors.black),
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
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: style.appColor),
                  ),
                  labelText: 'Enter your name*',
                  labelStyle: const TextStyle(color: Colors.grey),
                  floatingLabelStyle: const TextStyle(color: style.appColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: style.appColor),
                  ),
                  labelText: 'Enter your mobile number*',
                  labelStyle: const TextStyle(color: Colors.grey),
                  floatingLabelStyle: const TextStyle(color: style.appColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                'Select any ID',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildScrollContent('Driving License'),
                  _buildScrollContent('PAN'),
                  _buildScrollContent('Passport'),
                  _buildScrollContent('Adhaarcard'),
                  _buildScrollContent('Voting Card'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: style.appColor),
                  ),
                  labelText: 'Enter PAN card  number*',
                  labelStyle: const TextStyle(color: Colors.grey),
                  floatingLabelStyle: const TextStyle(color: style.appColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScrollContent(txt) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          '$txt',
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return SingleChildScrollView(
      reverse: true,
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.shade300),
          ),
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                text: 'By continue you agree to RBL Bank\'s ',
                style: TextStyle(color: Colors.grey, fontSize: 10),
                children: const <TextSpan>[
                  TextSpan(
                    text: ' Terms & Conditions',
                    style: TextStyle(color: style.appColor, fontSize: 10),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                // Navigator.of(context).pushNamedAndRemoveUntil(
                //     tabBarPage.pageId, (route) => false);
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 13.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Powered by  ',
                style: TextStyle(color: Colors.grey, fontSize: 10),
                children: const <TextSpan>[
                  TextSpan(
                    text: ' RBL Bank',
                    style: TextStyle(color: style.appColor, fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
