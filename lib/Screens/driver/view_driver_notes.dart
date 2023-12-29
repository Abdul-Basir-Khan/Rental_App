import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental/Screens/driver/driver_Logbook.dart';
import 'package:rental/Screens/driver/driver_collection.dart';
import 'package:rental/Screens/driver/driver_notes.dart';
import 'package:rental/Screens/driver/driver_notification.dart';
import 'package:rental/Screens/driver/driver_personal_detail.dart';
import 'package:rental/Screens/driver/driver_rental_history.dart';
import 'package:rental/Screens/driver/driver_subscr.dart';

class ViewDriverNotesScreen extends StatefulWidget {
  final VoidCallback ? isPaying;
  const ViewDriverNotesScreen({Key? key, this.isPaying}) : super(key: key);

  @override
  State<ViewDriverNotesScreen> createState() => _ViewDriverNotesScreenState();
}

class _ViewDriverNotesScreenState extends State<ViewDriverNotesScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(image: AssetImage("assets/images/boy.png")),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sam John",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Color(0xff083EA1)),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.verified,
                                    color: Color(0xff083EA1),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Get Verified",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                        color: Color(0xff083EA1)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Balance: \$0",
                          style: TextStyle(
                              color: Color(0xff5C5C5C),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "Birthday:",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "12-Julu-1991",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "Added Date:",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "20-April-202",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(color: Color(0xff00AEEF)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_circle_outline_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          FittedBox(
                            child: Text(
                              "Add Card",
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: widget.isPaying,
                      child: Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Color(0xff11B826),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.payment,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            FittedBox(
                                child: Text(
                              "Pay Toll Notice",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Container(
                                height: 50,
                                width: 476,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15)),
                                  color: Color(0xffF9FAFC),
                                ),
                                child: Text(
                                  "Charge Driver [Sam John]",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                              content: Container(
                                height: 200,
                                width: 476,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(15)),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "The payment information for RENTAL has not been added\n yet. Please click the link below to add payment information.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  Container(
                                    height: 60,
                                    width: 200,
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10) ,
                                      color: Color(0xff083EA1)
                                    ),
                                    child: Center(child: Text("Add Card",style: TextStyle(fontWeight:FontWeight.w600 ,fontSize:14 ,color: Colors.white),)),
                                  )
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                Center(
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      },
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                color: Color(0xffF4F4F4)),

                                            child: const Text(
                                              "Close",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          SizedBox(width: 20,),
                                          Container(
                                            padding: const EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                color: Color(0xff11B826)),

                                            child: const Text(
                                              "Charge Now",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              ],
                            ),
                          );

                        });
                      },



                      child : Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Color(0xff083EA1),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.payment,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            FittedBox(
                                child: Text(
                              "Manual Charge",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffE9F5FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.message_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FittedBox(
                              child: Text(
                            "Send SMS",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          )),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffE9F5FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.payment_sharp,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FittedBox(
                              child: Text(
                            "Charge Now",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          )),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffE9F5FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: SvgPicture.asset("assets/icon/call.svg"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FittedBox(
                              child: Text(
                            "Call Customer",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          )),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffE9F5FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                showDialog(
                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                    title: Container(
                                      height: 50,
                                      width: 476,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(15)),
                                        color: Color(0xffF9FAFC),
                                      ),
                                      child: Row(
                                        children: [
                                          IconButton(onPressed: (){
                                            Navigator.pop(context);
                                          }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
                                          SizedBox(width: 50,),
                                          Text("My Location"),
                                        ],
                                      )
                                    ),
                                    content: Container(
                                      height: 700,
                                      width: 600,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(15)),
                                        color: Colors.white,
                                      ),
                                      child: SizedBox(child: Image(image: AssetImage("assets/images/location.png"))),
                                    ),
                                  ),
                                );

                              });
                            },
                            child: FittedBox(
                                child: Text(
                              "My Location",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                TabBar(
                    labelColor: Color(0xff083EA1),
                    unselectedLabelColor: Color(0xff5C5C5C),
                    indicatorColor: Color(0xff083EA1),
                    tabs: [
                      Tab(
                        child: FittedBox(
                          child: Text(
                            "Personal Detail",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Tab(
                        child: FittedBox(
                          child: Text(
                            "Rental History",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Tab(
                        child: FittedBox(
                          child: Text(
                            "Notes",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Tab(
                        child: FittedBox(
                          child: Text(
                            "Subscriptions",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Tab(
                        child: FittedBox(
                          child: Text(
                            "Notifications",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Tab(
                        child: FittedBox(
                          child: Text(
                            "Collection",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Tab(
                        child: FittedBox(
                          child: Text(
                            "Logbook",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: TabBarView(children: [
              PersonalDetailScreen(),
              RentalHistoryScreen(),
              DriverNotesScreen(),
              DriverSubscriptionScreen(),
              DriverNotificationScreen(),
              DriverCollectionScreen(),
              DriverLogbookScreen()
            ]),
          )
        ],
      ),
    );
  }
}
