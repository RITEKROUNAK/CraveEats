import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:zomato_clone/pages/profilePage.dart';
import 'package:zomato_clone/utilities/constancePage.dart' as style;

class zplPage extends StatefulWidget {
  zplPage({Key? key}) : super(key: key);

  static const String pageId = 'zplPage';

  @override
  State<zplPage> createState() => _zplPageState();
}

class _zplPageState extends State<zplPage> {
  int tabID = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: tabID == 2 ? _buildLoginButton() : null,
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
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
          if (tabID == 1)
            _buildContent1()
          else if (tabID == 2)
            _buildContent2(),
        ],
      ),
    );
  }

  // your zone content

  Widget _buildContent1() {
    return Column(
      children: [
        _buildCarouselSliders(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Center(
                        child: Image(
                      image: AssetImage('assets/images/i1.jpg'),
                    )),
                  ),
                  Text(
                    'Game Rules',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Center(
                        child: Image(
                      image: AssetImage('assets/images/i5.png'),
                    )),
                  ),
                  Text(
                    'Fan Zone',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Center(
                        child: Image(
                      image: AssetImage('assets/images/i2.jpg'),
                    )),
                  ),
                  Text(
                    'Game Rules',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Center(
                        child: Image(
                      image: AssetImage('assets/images/i4.png'),
                    )),
                  ),
                  Text(
                    'Game Rules',
                    style: TextStyle(color: Colors.grey),
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
              Text(
                'Predict the winner',
                style: TextStyle(fontFamily: 'bold', fontSize: 17),
              ),
              Text(
                'how to play',
                style: TextStyle(
                    fontFamily: 'semibold',
                    fontSize: 13,
                    color: style.appColor),
              ),
            ],
          ),
        ),
        _buildCarouselSliders2(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot to predict?',
                      style: TextStyle(fontFamily: 'bold', fontSize: 16),
                    ),
                    Text(
                      'When you miss out on predicting, you also miss out on winning.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Text(
                          'Nitify me to predict',
                          style: TextStyle(color: style.appColor),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: style.appColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                child: Image(
                  image: AssetImage('assets/images/no1.png'),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Text(
                'How to play',
                style: TextStyle(fontFamily: 'bold', fontSize: 17),
              ),
            ],
          ),
        ),
        _buildCarouselSliders3(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.help,
                    color: style.appColor,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Read game rules',
                    style: TextStyle(fontFamily: 'semibold', fontSize: 15),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_right,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.chat,
                    color: style.appColor,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'FAQ',
                    style: TextStyle(fontFamily: 'semibold', fontSize: 15),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_right,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.text_snippet,
                    color: style.appColor,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Terms & Conditions',
                    style: TextStyle(fontFamily: 'semibold', fontSize: 15),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_right,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
        ),
      ],
    );
  }

  Widget _buildCarouselSliders() {
    final CarouselController _controller = CarouselController();

    return Container(
      height: 150,
      child: CarouselSlider(
        options: CarouselOptions(
          onPageChanged: (index, reason) {},
          height: double.infinity,
          viewportFraction: 0.95,
          initialPage: 1,
          aspectRatio: 2.0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        carouselController: _controller,
        items: [1, 2, 3].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (i == 1)
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context, MaterialPageRoute(builder: (context) => playMoviesPage()));
                        },
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/bn2.jpg',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      )
                    else if (i == 2)
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context, MaterialPageRoute(builder: (context) => playMoviesPage()));
                        },
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/bn1.png',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      )
                    else if (i == 3)
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context, MaterialPageRoute(builder: (context) => playMoviesPage()));
                        },
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/bn3.png',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Widget _buildCarouselSliders2() {
    final CarouselController _controller = CarouselController();

    return Container(
      height: 250,
      child: CarouselSlider(
        options: CarouselOptions(
          onPageChanged: (index, reason) {},
          height: double.infinity,
          viewportFraction: 0.95,
          initialPage: 1,
          aspectRatio: 2.0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        carouselController: _controller,
        items: [1, 2, 3].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (i == 1)
                      Container(
                        height: 250,
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Today\'s match',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'bold'),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    '4 hour left',
                                    style: TextStyle(color: Colors.deepPurple),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.lightBlue),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/cl1.png'))),
                                ),
                                Text(
                                  'VS',
                                  style: TextStyle(
                                      color: Colors.grey.shade300,
                                      fontFamily: 'bold'),
                                ),
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.pinkAccent),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/cl1.png'))),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             otpVerificationPage()));
                              },
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(vertical: 13.0),
                                decoration: style.contentButtonStyle1(),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Continue',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Thu, 28 Apr - Match #41',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '5456446 Predicted',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    else if (i == 2)
                      Container(
                        height: 250,
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Today\'s match',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'bold'),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    '4 hour left',
                                    style: TextStyle(color: Colors.deepPurple),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.lightBlue),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/cl1.png'))),
                                ),
                                Text(
                                  'VS',
                                  style: TextStyle(
                                      color: Colors.grey.shade300,
                                      fontFamily: 'bold'),
                                ),
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.pinkAccent),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/cl1.png'))),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             otpVerificationPage()));
                              },
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(vertical: 13.0),
                                decoration: style.contentButtonStyle1(),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Continue',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Thu, 28 Apr - Match #41',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '5456446 Predicted',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    else if (i == 3)
                      Container(
                        height: 250,
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Today\'s match',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'bold'),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    '4 hour left',
                                    style: TextStyle(color: Colors.deepPurple),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.lightBlue),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/cl1.png'))),
                                ),
                                Text(
                                  'VS',
                                  style: TextStyle(
                                      color: Colors.grey.shade300,
                                      fontFamily: 'bold'),
                                ),
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.pinkAccent),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/cl1.png'))),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             otpVerificationPage()));
                              },
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(vertical: 13.0),
                                decoration: style.contentButtonStyle1(),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Continue',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Thu, 28 Apr - Match #41',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '5456446 Predicted',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Widget _buildCarouselSliders3() {
    final CarouselController _controller = CarouselController();

    return Container(
      height: 250,
      child: CarouselSlider(
        options: CarouselOptions(
          onPageChanged: (index, reason) {},
          height: double.infinity,
          viewportFraction: 0.95,
          initialPage: 1,
          aspectRatio: 2.0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        carouselController: _controller,
        items: [1, 2, 3].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (i == 1)
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context, MaterialPageRoute(builder: (context) => playMoviesPage()));
                        },
                        child: Container(
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/Scenes01.png',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      )
                    else if (i == 2)
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context, MaterialPageRoute(builder: (context) => playMoviesPage()));
                        },
                        child: Container(
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/Scenes02.png',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      )
                    else if (i == 3)
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context, MaterialPageRoute(builder: (context) => playMoviesPage()));
                        },
                        child: Container(
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/Scenes03.png',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  // fan zone content

  Widget _buildContent2() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Image(
              image: AssetImage('assets/images/Scenes07.png'),
            ),
          ),
          Text(
            'Which team are you supporting this cricket season?',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'bold', fontSize: 17),
          ),
          Text(
            'You want be able to change this later, choose wisely.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              children: [
                _ZPLcontent(),
                _ZPLcontent(),
                _ZPLcontent(),
                _ZPLcontent(),
                _ZPLcontent(),
                _ZPLcontent(),
                _ZPLcontent(),
                _ZPLcontent(),
                _ZPLcontent(),
                _ZPLcontent(),
                _ZPLcontent(),
                _ZPLcontent(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _ZPLcontent() {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(image: AssetImage('assets/images/cl1.png')),
    );
  }

  Widget _buildLoginButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10, top: 10),
      child: InkWell(
        onTap: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => otpVerificationPage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10),
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
    );
  }

  // other content

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
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  tabID = 1;
                });
              },
              child: Container(
                height: 50,
                width: 130,
                decoration: segmentDecoration(1),
                child: Center(child: Text('YOUR ZONE', style: segmentText(1))),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 2;
                  });
                },
                child: Container(
                  height: 50,
                  width: 130,
                  decoration: segmentDecoration(2),
                  child: Center(child: Text('FAN ZONE', style: segmentText(2))),
                )),
          ),
        ],
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
      color: tabID == val ? Color(0xFF2D2D2D) : null,
      borderRadius: BorderRadius.circular(10),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: 'semibold',
        color: tabID == val ? Colors.white : Colors.grey);
  }
}
