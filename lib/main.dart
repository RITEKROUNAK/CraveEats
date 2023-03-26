import 'package:flutter/material.dart';
import 'package:zomato_clone/pages/aboutPage.dart';
import 'package:zomato_clone/pages/activeWalletPage.dart';
import 'package:zomato_clone/pages/addAddressPage.dart';
import 'package:zomato_clone/pages/addItemPage.dart';
import 'package:zomato_clone/pages/addReviewPage.dart';
import 'package:zomato_clone/pages/categoriesPage.dart';
import 'package:zomato_clone/pages/couponPage.dart';
import 'package:zomato_clone/pages/deliveryPage.dart';
import 'package:zomato_clone/pages/editProfilePage.dart';
import 'package:zomato_clone/pages/favoritePage.dart';
import 'package:zomato_clone/pages/gallaryPage.dart';
import 'package:zomato_clone/pages/historyPage.dart';
import 'package:zomato_clone/pages/itemPage.dart';
import 'package:zomato_clone/pages/loginPage.dart';
import 'package:zomato_clone/pages/managePaymentPage.dart';
import 'package:zomato_clone/pages/moneyPage.dart';
import 'package:zomato_clone/pages/notificationPage.dart';
import 'package:zomato_clone/pages/offersPage.dart';
import 'package:zomato_clone/pages/orderHistoryPage.dart';
import 'package:zomato_clone/pages/orderSummeryPage.dart';
import 'package:zomato_clone/pages/orderplacedPage.dart';
import 'package:zomato_clone/pages/otpVerificationPage.dart';
import 'package:zomato_clone/pages/paymentPage.dart';
import 'package:zomato_clone/pages/personalDetailsPage.dart';
import 'package:zomato_clone/pages/profilePage.dart';
import 'package:zomato_clone/pages/reviewPage.dart';
import 'package:zomato_clone/pages/selectDeliveryLocationPage.dart';
import 'package:zomato_clone/pages/settingsPage.dart';
import 'package:zomato_clone/pages/splashScreenPage.dart';
import 'package:zomato_clone/pages/tabBarPage.dart';
import 'package:zomato_clone/pages/zplPage.dart';

void main() {
  runApp(const zomato_clone());
}

class zomato_clone extends StatelessWidget {
  const zomato_clone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery Zomato Clone',
      theme: ThemeData(fontFamily: 'regular'),
      debugShowCheckedModeBanner: false,
      home: splashScreenPage(),
      routes: {
        splashScreenPage.pageId: (context) => splashScreenPage(),
        loginPage.pageId: (context) => loginPage(),
        tabBarPage.pageId: (context) => tabBarPage(),
        aboutPage.pageId: (context) => aboutPage(),
        activeWalletPage.pageId: (context) => activeWalletPage(),
        addAddressPage.pageId: (context) => addAddressPage(),
        addItemPage.pageId: (context) => addItemPage(),
        deliveryPage.pageId: (context) => deliveryPage(),
        editProfilePage.pageId: (context) => editProfilePage(),
        favoritesPage.pageId: (context) => favoritesPage(),
        historyPage.pageId: (context) => historyPage(),
        itemPage.pageId: (context) => itemPage(),
        managePayments.pageId: (context) => managePayments(),
        moneyPage.pageId: (context) => moneyPage(),
        notificationPage.pageId: (context) => notificationPage(),
        offersPage.pageId: (context) => offersPage(),
        orderHistoryPage.pageId: (context) => orderHistoryPage(),
        orderplacedPage.pageId: (context) => orderplacedPage(),
        orderSummeryPage.pageId: (context) => orderSummeryPage(),
        otpVerificationPage.pageId: (context) => otpVerificationPage(),
        paymentPage.pageId: (context) => paymentPage(),
        personalDetailsPage.pageId: (context) => personalDetailsPage(),
        profilePage.pageId: (context) => profilePage(),
        selectDeliveryLocationPage.pageId: (context) =>
            selectDeliveryLocationPage(),
        settingsPage.pageId: (context) => settingsPage(),
        zplPage.pageId: (context) => zplPage(),
        categoriesPage.pageId: (context) => categoriesPage(),
        addReviewPage.pageId: (context) => addReviewPage(),
        couponPage.pageId: (context) => couponPage(),
        gallaryPage.pageId: (context) => gallaryPage(),
        reviewPage.pageId: (context) => reviewPage(),

        // total pages = 31
      },
    );
  }
}
