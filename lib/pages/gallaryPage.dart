import 'package:flutter/material.dart';
import 'package:zomato_clone/utilities/constancePage.dart' as style;

class gallaryPage extends StatefulWidget {
  gallaryPage({Key? key}) : super(key: key);

  static const String pageId = 'gallaryPage';

  @override
  State<gallaryPage> createState() => _gallaryPageState();
}

class _gallaryPageState extends State<gallaryPage> {
  String MonthValue = 'Photos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 13.0),
            decoration: style.contentButtonStyle1(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Preview',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ],
            ),
          ),
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
            DropdownButton<String>(
              value: MonthValue,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 16,
              style: const TextStyle(color: Colors.green),
              onChanged: (String? newValue) {
                setState(() {
                  MonthValue = newValue!;
                });
              },
              items: <String>[
                'Photos',
                'Gallary',
                'All Photos',
                'Folders',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            GridView.count(
              primary: false,
              crossAxisCount: 3,
              shrinkWrap: true,
              mainAxisSpacing: 2,
              crossAxisSpacing: 15,
              childAspectRatio: 1.3 / 1.3,
              children: [
                _buildWithMoviesType('assets/images/1.jpg'),
                _buildWithMoviesType('assets/images/2.jpg'),
                _buildWithMoviesType('assets/images/3.jpg'),
                _buildWithMoviesType('assets/images/4.jpg'),
                _buildWithMoviesType('assets/images/5.jpg'),
                _buildWithMoviesType('assets/images/1.jpg'),
                _buildWithMoviesType('assets/images/2.jpg'),
                _buildWithMoviesType('assets/images/3.jpg'),
                _buildWithMoviesType('assets/images/4.jpg'),
                _buildWithMoviesType('assets/images/5.jpg'),
                _buildWithMoviesType('assets/images/1.jpg'),
                _buildWithMoviesType('assets/images/2.jpg'),
                _buildWithMoviesType('assets/images/3.jpg'),
                _buildWithMoviesType('assets/images/4.jpg'),
                _buildWithMoviesType('assets/images/5.jpg'),
                _buildWithMoviesType('assets/images/1.jpg'),
                _buildWithMoviesType('assets/images/2.jpg'),
                _buildWithMoviesType('assets/images/3.jpg'),
                _buildWithMoviesType('assets/images/4.jpg'),
                _buildWithMoviesType('assets/images/5.jpg'),
                _buildWithMoviesType('assets/images/1.jpg'),
                _buildWithMoviesType('assets/images/2.jpg'),
                _buildWithMoviesType('assets/images/3.jpg'),
                _buildWithMoviesType('assets/images/4.jpg'),
                _buildWithMoviesType('assets/images/5.jpg'),
                _buildWithMoviesType('assets/images/1.jpg'),
                _buildWithMoviesType('assets/images/2.jpg'),
                _buildWithMoviesType('assets/images/3.jpg'),
                _buildWithMoviesType('assets/images/4.jpg'),
                _buildWithMoviesType('assets/images/5.jpg'),
                _buildWithMoviesType('assets/images/1.jpg'),
                _buildWithMoviesType('assets/images/2.jpg'),
                _buildWithMoviesType('assets/images/3.jpg'),
                _buildWithMoviesType('assets/images/4.jpg'),
                _buildWithMoviesType('assets/images/5.jpg'),
                _buildWithMoviesType('assets/images/1.jpg'),
                _buildWithMoviesType('assets/images/2.jpg'),
                _buildWithMoviesType('assets/images/3.jpg'),
                _buildWithMoviesType('assets/images/4.jpg'),
                _buildWithMoviesType('assets/images/5.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWithMoviesType(img) {
    return Container(
      height: 200,
      width: 100,
      margin: EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('$img'),
        ),
      ),
    );
  }
}
