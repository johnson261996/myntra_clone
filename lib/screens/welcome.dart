

import 'package:flutter/material.dart';
import 'package:flutter_myntra_clone/screens/login/login.dart';
import 'package:flutter_myntra_clone/utils/asset_constants.dart';

import '../common_widgets/cached_image.dart';
import '../common_widgets/primary_button.dart';
import '../data_provider/home_data.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        color: Color(0xff282C3F),
        height:  MediaQuery.of(context).size.height * 0.1,
        width:  MediaQuery.of(context).size.width * 1,
        child:  Column(
          children: [
            SizedBox(height: 5,),
            Container(
              width: double.infinity,
              child: ButtonTheme(
                child: PrimaryButton(
                  title: 'Login',
                  onPressed: () =>  Navigator.of(context)
                      .pushNamed(Login.routeName,),
                ),
              ),
            ),
            Text(
              'By enrolling you agree to',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            Text(
              'Insider Terms & Conditions',
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(255,63,108, 1),
              ),
            ),
          ],
        ),
      ),
        body: Builder(
        builder: (ctx) => SafeArea(
          child: SingleChildScrollView(
             child: Column(
              children: [
                Stack(
                  children: [
                    CachedImage(
                      url: welcome_img,
                      height: 350,
                      width: double.infinity,
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.380,
                      left: 10,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Become An INSIDER!',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xffEDAB37),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  color: Color(0xff1A1C23),
                  height:  MediaQuery.of(context).size.height * 1.6,
                  width: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        'join the insider programme and earn supercoin with every purchase and more much more.Log in now!',
                        style: TextStyle(
                          fontSize:20,
                          color: Color(0xffA4A4A4),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "New Goal Criteria",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        color: Color(0xff282C3F),
                        height:  MediaQuery.of(context).size.height * 0.175,
                        width:  MediaQuery.of(context).size.width * 0.9,
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.workspace_premium,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "₹0",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),

                                    Text(
                                      "You've Spent",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      "₹7000",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),

                                    Text(
                                      "Goal",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),

                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10,),

                            const Divider(
                              thickness: 1,
                              color: Colors.grey,
                              height: 20,
                            ),

                            Row(

                              children: [
                                Icon(
                                  Icons.workspace_premium,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "0/5",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),

                                    Text(
                                      "Your Orders",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),

                                    Text(
                                      "Goal",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),

                                  ],
                                )
                              ],
                            ),
                          ],

                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Note:Recent purchases will only reflect in the goal once the return window is over',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Benefits of joining the Program',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffEDAB37),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            child: Image.asset( 'assets/images/acess_icon.png',),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Early access to the Sales",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                        height: 20,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            child: Image.asset( 'assets/images/call_icon.png',),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Insider Exclusive Rewards &\n Benefits",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                        height: 20,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            child: Image.asset( 'assets/images/prize_icon.png',),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Priority Customer Support",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'How does it Work',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffEDAB37),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Earn Supercoins with every purchase.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'You can get upto 3 supercoins for every ₹100 spent.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Image.asset( 'assets/images/myntra_card.png',
                      fit: BoxFit.cover,),
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Rewards',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffEDAB37),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Use your Supercoins to get exiting rewards',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 275,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: HomeData.getBiggestOffers()
                              .map((e) => Padding(
                            padding: EdgeInsets.only(right: 5, left: 5),
                            child: CachedImage(
                              url: e,
                              height: 273,
                              width: 179,
                            ),
                          ))
                              .toList(),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Image.asset( 'assets/images/minsider_card.png',),
                    ],
                  ),
                ),
              ],
            ),
         ),
       ),
      ),
    );
  }
}
