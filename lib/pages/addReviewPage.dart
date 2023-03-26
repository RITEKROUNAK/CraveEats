import 'package:flutter/material.dart';
import 'package:zomato_clone/utilities/constancePage.dart' as style;

class addReviewPage extends StatefulWidget {
  addReviewPage({Key? key}) : super(key: key);

  static const String pageId = 'addReviewPage';

  @override
  State<addReviewPage> createState() => _addReviewPageState();
}

class _addReviewPageState extends State<addReviewPage> {
  bool isChecked = false;

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
                  Icons.close,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Add Review',
                style: TextStyle(fontSize: 17, color: Colors.black),
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
            Text(
              'Rate Your Experience For',
              style: TextStyle(fontFamily: 'semibold', fontSize: 20),
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: style.appColor,
                  value: isChecked,
                  shape: CircleBorder(),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text('Dinig'),
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: style.appColor,
                  value: isChecked,
                  shape: CircleBorder(),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text('Delivery'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade100, width: 10),
                  ),
                ),
                child: Row(
                  children: [
                    _buildChip('1'),
                    _buildChip('2'),
                    _buildChip('3'),
                    _buildChip('4'),
                    _buildChip('5'),
                  ],
                ),
              ),
            ),
            Container(
              height: 300,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/Scenes02.png'),
                ),
              ),
            ),
            Text(
              'Your rating reviews helps people in going a long way in deciding where to eat.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChip(txt) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      margin: EdgeInsets.only(right: 10, bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Text(
            '$txt',
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
          Icon(
            Icons.star,
            color: Colors.grey,
            size: 12,
          ),
        ],
      ),
    );
  }
}
