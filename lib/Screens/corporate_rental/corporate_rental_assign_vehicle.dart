import 'package:flutter/material.dart';
import 'package:rental/Screens/corporate_rental/assign_vehicle.dart';
import 'package:rental/Screens/corporate_rental/notes.dart';

import 'corporate_list.dart';

class CorporateAssignVehicleScreen extends StatefulWidget {

  const CorporateAssignVehicleScreen({Key? key,}) : super(key: key);

  @override
  State<CorporateAssignVehicleScreen> createState() =>
      _CorporateAssignVehicleScreenState();
}

class _CorporateAssignVehicleScreenState
    extends State<CorporateAssignVehicleScreen> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xffFFEDE4),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color(0xffFBC4AB)),
            ),
            child: Text(
                "Clients will have the following charges incurred to them if they are not paid on time.\nAfter 14days you incur \$2.20 Toll Notice Fee\nAfter 30 days you incur \$25 Admin Fee Per Toll Notice\nAfter 60 days the account goes to collections for legal recovery with further legal charges made up to \$2,500.00 per client matter tendered to court for \nclaims against the offending client."),
          ),
          SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.only(top:20,left: 20,right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Image(
                        image: AssetImage("assets/images/boy.png")),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                        text: "Name: ",
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                          TextSpan(
                                            text: "Frank (Fleet Manager)",
                                            style: TextStyle(
                                                color: Color(0xff5C5C5C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                        text: "Email: ",
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                          TextSpan(
                                            text: "frank@ulimaterentals.com.au",
                                            style: TextStyle(
                                                color: Color(0xff5C5C5C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                        text: "Phone No: ",
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                          TextSpan(
                                              text: "799 23423",
                                              style: TextStyle(
                                                  color: Color(0xff5C5C5C),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400))
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                        text: "Name: ",
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                          TextSpan(
                                            text: "Ultimate Luxury Cars Pty Ltd",
                                            style: TextStyle(
                                                color: Color(0xff5C5C5C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                        text: "Address: ",
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                          TextSpan(
                                            text: "139 Princes Highway, Arncliffe NSW, Australia",
                                            style: TextStyle(
                                                color: Color(0xff5C5C5C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                        text: "Mobile: ",
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                          TextSpan(
                                              text:
                                              "345663342",
                                              style: TextStyle(
                                                  color: Color(0xff5C5C5C),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400))
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xff11B826),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.payment,color: Colors.white,),
                                  SizedBox(width: 10,),
                                  Text("Pay Now",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
               SizedBox(height: 15,),
               TabBar(
                   labelColor:  Color(0xff083EA1),
                   unselectedLabelColor:Color(0xff5C5C5C),
                   indicatorColor: Color(0xff083EA1),
                   tabs: [
                 Tab(
                   child: Text("Assigned Vehicles",style:TextStyle(fontSize:14 ,fontWeight: FontWeight.w500) ,),
                 ),
                 Tab(
                   child: Text("Notes",style:TextStyle(fontSize:14 ,fontWeight: FontWeight.w500) ,),
                 ),
               ]),

              ],
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            height: MediaQuery.of(context).size.height*1.2,
            child: TabBarView(
                children: [
              AssignVehicleScreen(),
              NotesScreen(),
            ]),
          )
        ],
      ),
    );
  }
}
