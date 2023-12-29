import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SubOverviewScreen extends StatefulWidget {
  const SubOverviewScreen({Key? key}) : super(key: key);

  @override
  State<SubOverviewScreen> createState() => _SubOverviewScreenState();
}

class _SubOverviewScreenState extends State<SubOverviewScreen> {

  bool _currentvalue = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                 children: [
                   Container(
                       width: 370,
                     padding: const EdgeInsets.all(10),
                     decoration:BoxDecoration(
                       border: Border.all(color: Color(0xff00000)),
                       color: Color(0xff2E2E2E),
                       borderRadius:
                       BorderRadius.vertical(top: Radius.circular(15)),
                     ),
                     child:Row(
                       children: [
                         Text("Notification",style: TextStyle(fontWeight:FontWeight.w600 ,color:Colors.white,fontSize: 16),),
                         Spacer()
                       ],
                     )
                   ),
                   Container(
                   width: 370,
                     decoration: BoxDecoration(
                       border: Border.all(color: Color(0xffE8E8E8)),
                       color: Colors.white,
                       borderRadius:
                       BorderRadius.vertical(bottom: Radius.circular(15)),
                     ),
                     child:Column(
                       children: [
                         ListTile(
                           leading: Container(
                             height: 25,
                             width: 25,
                             child:   SvgPicture.asset("assets/icon/close.svg",color: Color(0xffFF2D46),) ,
                           ),
                           title: Text("Payment Failure!",style: TextStyle(fontSize:14 ,color: Color(0xffFF2D46),fontWeight: FontWeight.w500),),
                           subtitle: Text("Please check you payment method.",style: TextStyle(fontSize:12,color: Color(0xff2E2E2E),fontWeight: FontWeight.w400),),
                           trailing: FittedBox(
                             child: Container(
                               padding: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 border: Border.all(color: Color(0xffFF2D46),
                                 )
                               ),
                               child: Center(child:Text("Fix Now",style: TextStyle(fontSize:14 ,color: Color(0xffFF2D46),fontWeight: FontWeight.w500),),),
                             ),
                           ),
                         ),
                         Divider(color: Color(0xffE8E8E8),thickness: 2,),
                         ListTile(
                           leading: SvgPicture.asset("assets/icon/alert.svg",color: Color(0xffF79E1B),),
                           title: Text("Crash Detected!",style: TextStyle(fontSize:14 ,color: Color(0xffF79E1B),fontWeight: FontWeight.w500),),
                           subtitle: Text("We detected a crashed vehicle.",style: TextStyle(fontSize:12 ,color: Color(0xff2E2E2E),fontWeight: FontWeight.w400),),
                           trailing:  FittedBox(
                             child: Container(
                               padding: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(color: Color(0xffF79E1B),
                                   )
                               ),
                               child: Center(child:Text("Call Now",style: TextStyle(fontSize:14 ,color: Color(0xffF79E1B),fontWeight: FontWeight.w500),),),
                             ),
                           ),
                         ),
                         Divider(color: Color(0xffE8E8E8),thickness: 2,),
                         ListTile(
                           leading: Icon(Icons.info_outline,color: Color(0xff2388FF),),
                           title: Text("Missing Contact Number!",style: TextStyle(fontSize:14 ,color: Color(0xff2388FF),fontWeight: FontWeight.w500),),
                           subtitle: Text("Please fill up the missing contact detail.",style: TextStyle(fontSize:12 ,color: Color(0xff2E2E2E),fontWeight: FontWeight.w400),),
                           trailing: FittedBox(
                             child: Container(
                               padding: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(color: Color(0xff2388FF),
                                   )
                               ),
                               child: Center(child:Text("Fix Now",style: TextStyle(fontSize:14 ,color: Color(0xff2388FF),fontWeight: FontWeight.w500),),),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color:Color(0xffE8E8E8) ),
                        borderRadius:
                        BorderRadius.circular(15),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(color:Color(0xffe8e8e8),height: 100,width: 130,child: const Image(image: AssetImage("assets/images/tesla.png"))),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Tesla - Model Y",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              RichText(
                                text: const TextSpan(
                                    text: "Make Model:",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                    children: [
                                      TextSpan(
                                          text:
                                          "2014",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400))
                                    ]),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: "Registered State:",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                    children: [
                                      TextSpan(
                                        text: "NSW",
                                        style: TextStyle(
                                            color: Color(0xff5C5C5C),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ]),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: "Color:",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                    children: [
                                      TextSpan(
                                          text: "White",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400))
                                    ]),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 45,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Color(0xffE8E8E8)),
                          color: Color(0xffFFFFFF)
                        ),
                        child:  CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 7.0,
                          percent: 0.8,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                child: SvgPicture.asset(
                                  "assets/icon/meter.svg",
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "8000",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.redAccent),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "RMP",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xffB7B7B7)),
                              )
                            ],
                          ),
                          backgroundColor: Colors.grey,
                          progressColor: Colors.red,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xffE8E8E8)),
                            color: Color(0xffFFFFFF)
                        ),
                        child:  CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 7.0,
                          percent: 0.5,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 20,
                                  width: 20,
                                  child: Icon(
                                    Icons.speed_outlined,
                                    color: Colors.black,
                                  )),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "50",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color(0xff3573E7)),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Km/h",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xffB7B7B7)),
                              )
                            ],
                          ),
                          backgroundColor: Colors.grey,
                          progressColor: Color(0xff3573E7),
                        ),
                      ),
                        SizedBox(width: 5,),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xffE8E8E8)),
                            color: Color(0xffFFFFFF)
                        ),
                        child:   CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 7.0,
                          percent: 0.6,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.local_fire_department_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "60%",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color(0xff0BB839)),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Fuel",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xffB7B7B7)),
                              )
                            ],
                          ),
                          backgroundColor: Colors.grey,
                          progressColor: Color(0xff0BB839),
                        ),
                      ),
                    ],),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: 370,
                      padding: const EdgeInsets.all(10),
                      decoration:BoxDecoration(
                        border: Border.all(color: Color(0xffE8E8E8)),
                        color: Color(0xffE8E8E8),
                        borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15)),
                      ),
                      child: Row(
                        children: [
                          Text("My Plan",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),)
                        ],
                      ),
                    ),
                    Container(
                      width: 370,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffE8E8E8)),
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(15)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xffFD9840)
                                ),
                                child: Text("WEEKLY"),
                              ),
                              SizedBox(width: 10,),
                              Text("PLAN")
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "\$ 25",style: TextStyle(fontWeight: FontWeight.w500,fontSize:48 ,color: Colors.black)
                                    ),
                                    TextSpan(
                                        children: [
                                          TextSpan(
                                              text: "/month",style: TextStyle(
                                              fontSize: 18,fontWeight:FontWeight.w500 ,color: Color(0xff898989)
                                          )
                                          )
                                        ]
                                    )
                                  ]
                              ),),
                              Column(
                                children: [
                                  Text("Next Payement",style: TextStyle(fontWeight: FontWeight.w500,fontSize:16 ,color: Color(0xff898989)),),
                                  Text("on November 31, 2022",style: TextStyle(fontWeight: FontWeight.w500,fontSize:20,color: Color(0xff2E2E2E)),),


                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff083EA1)
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset("assets/icon/arrow.svg"),
                                    SizedBox(width: 10,),
                                    Text("Upgrade Plan",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color:Colors.white),),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.all(color: Color(0xff00AEEF))
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset("assets/icon/money.svg",color: Color(0xff00AEEF),),
                                    SizedBox(width: 10,),
                                    Text("Manage Payment",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color:Color(0xff00AEEF)),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF9FAFC),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: const Color(0xffE8E8E8)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 370,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Color(0xffF9FAFC),
                              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                              border: Border.all(color: const Color(0xffE8E8E8)),
                            ),
                            child: Row(
                              children: [
                                Text("Subscription Charges",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),

                                Spacer(),
                              ],
                            ),
                          ),
                          Container(
                            width:370,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: const Color(0xffE8E8E8)),
                              ),
                              child:Table(
                                children: [
                                  TableRow(children: [
                                    Text("Details"),
                                    Text("Weekly"),
                                    Text("Qty"),
                                    Text("Total"),
                                  ])
                                ],
                              ),
                          ),
                          Container(
                            width:370,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xffE8E8E8),
                              border: Border.all(color: const Color(0xffE8E8E8)),
                            ),
                            child:Table(
                              children: [
                                TableRow(children: [
                                  Text("Car Fee"),
                                  Text("\$20"),
                                  Text("1"),
                                  Text("\$20.00"),
                                ])
                              ],
                            ),
                          ),
                          Container(
                            width:370,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: const Color(0xffE8E8E8)),
                            ),
                            child:Table(
                              children: [
                                TableRow(children: [
                                  Text("insurance"),
                                  Text("\$100"),
                                  Text("1"),
                                  Text("\$100"),
                                ])
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 220,),
                              Text("Sub Total"),
                              SizedBox(width: 20,),
                              Text("\$120.00")
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 170,),
                              Text("Tax (GST 10% Incl):"),
                              SizedBox(width: 20,),
                              Text("\$14.00")
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 170,),
                              Text("Weekly Total:"),
                              SizedBox(width: 20,),
                              Text("\$134.00",style: TextStyle(color: Color(0xff11B826)),)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 370,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Color(0xffF9FAFC),
                              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                              border: Border.all(color: const Color(0xffE8E8E8)),
                            ),
                            child:Row(
                              children: [
                                Text("Payment Method"),
                                Spacer(),
                                Icon(Icons.add_circle_outline_outlined)
                              ],
                            )
                        ),
                        Container(
                          width: 370,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffE8E8E8)),
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(15)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(image: AssetImage("assets/images/craditcard.png")),
                              SizedBox(height: 10,),
                              ListTile(
                                leading: Image(image:AssetImage("assets/icon/mastercard.png")),
                                title:Text("**** **** **** 9978 Mastercard"),
                                subtitle: Text("\$482.00"),
                                trailing: Icon(Icons.more_vert_outlined,color:Colors.blueAccent),
                              ),
                              SizedBox(height: 10,),
                              ListTile(
                                leading: Image(image:AssetImage("assets/icon/visa.png")),
                                title:Text("**** **** **** 4213 Visa"),
                                subtitle: Text("\$792.00"),
                                trailing: Icon(Icons.more_vert_outlined,color:Colors.blueAccent),
                              ),
                            ],
                          ),
                        )
                      ],
                    )

                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 300,
                        padding: EdgeInsets.all(10),
                        decoration:BoxDecoration(
                          border: Border.all(color: Color(0xffE8E8E8)),
                          color: Color(0xffE8E8E8),
                          borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Swap Subscription Vehicle",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
                            Spacer(),
                            Switch(
                                activeColor: Color(0xff91CC45),
                                value: _currentvalue, onChanged: (v){
                              setState(() {
                                _currentvalue=v;
                              });
                            }),
                          ],
                        ),
                      ),
                      Container(
                        width: 300,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffE8E8E8)),
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(15)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tesla is not cuurently entitled to a free swap.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                              SizedBox(height: 10,),
                              Text("A new agreement will be generated if you select to swap their\nsubscription vehicle.",style: TextStyle(color:Color(0xff5C5C5C),fontSize: 14,fontWeight: FontWeight.w400),),
                              SizedBox(height: 10,),
                              Text("Current Vehicle",style: TextStyle(color:Color(0xff000000),fontSize: 14,fontWeight: FontWeight.w600),),
                              SizedBox(height: 10,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffe8e8e8),
                                  border: Border.all(color:Color(0xffF9FAFC) ),
                                  borderRadius:
                                  BorderRadius.circular(10),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(color:Color(0xffe8e8e8),height: 70,width: 60,child: const Image(image: AssetImage("assets/images/tesla.png"))),
                                    SizedBox(width: 6,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "Tesla - Model Y",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600)),
                                              RichText(
                                                text: const TextSpan(
                                                    text: "Make Model:",
                                                    style: TextStyle(
                                                        color: Color(0xff000000),
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w400),
                                                    children: [
                                                      TextSpan(
                                                          text:
                                                          "2014",
                                                          style: TextStyle(
                                                              color: Color(0xff5C5C5C),
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w400))
                                                    ]),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              RichText(
                                                text: const TextSpan(
                                                    text: "Registered State:",
                                                    style: TextStyle(
                                                        color: Color(0xff000000),
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w400),
                                                    children: [
                                                      TextSpan(
                                                        text: "NSW",
                                                        style: TextStyle(
                                                            color: Color(0xff5C5C5C),
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w400),
                                                      ),
                                                    ]),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              RichText(
                                                text: const TextSpan(
                                                    text: "Color:",
                                                    style: TextStyle(
                                                        color: Color(0xff000000),
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w400),
                                                    children: [
                                                      TextSpan(
                                                          text: "White",
                                                          style: TextStyle(
                                                              color: Color(0xff5C5C5C),
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w400))
                                                    ]),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          child: Column(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(2),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(15),
                                                    color: Color(0xff00AEEF)
                                                ),
                                                child: FittedBox(child: Text("Subscribe")),
                                              ),
                                              Text("0"),
                                              Text("Weekly"),
                                              Text("vehicle only"),
                                            ],
                                          ),
                                        )

                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text("Swap To"),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffe8e8e8),
                                  border: Border.all(color:Color(0xffF9FAFC) ),
                                  borderRadius:
                                  BorderRadius.circular(10),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(color:Color(0xffe8e8e8),height: 70,width: 60,child: const Image(image: AssetImage("assets/images/car3.png"))),
                                    SizedBox(width: 6,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "Range Rover Sport",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600)),
                                              RichText(
                                                text: const TextSpan(
                                                    text: "Make Model:",
                                                    style: TextStyle(
                                                        color: Color(0xff000000),
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w400),
                                                    children: [
                                                      TextSpan(
                                                          text:
                                                          "2014",
                                                          style: TextStyle(
                                                              color: Color(0xff5C5C5C),
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w400))
                                                    ]),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              RichText(
                                                text: const TextSpan(
                                                    text: "Registered State:",
                                                    style: TextStyle(
                                                        color: Color(0xff000000),
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w400),
                                                    children: [
                                                      TextSpan(
                                                        text: "NSW",
                                                        style: TextStyle(
                                                            color: Color(0xff5C5C5C),
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w400),
                                                      ),
                                                    ]),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              RichText(
                                                text: const TextSpan(
                                                    text: "Color:",
                                                    style: TextStyle(
                                                        color: Color(0xff000000),
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w400),
                                                    children: [
                                                      TextSpan(
                                                          text: "White",
                                                          style: TextStyle(
                                                              color: Color(0xff5C5C5C),
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w400))
                                                    ]),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          child: Column(
                                            children: [
                                              Text("0"),
                                              Text("Weekly"),
                                              Text("vehicle only"),
                                            ],
                                          ),
                                        )

                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Center(child: Text("No Swap Fee + \$0 per week")),
                            ],
                          ),
                      ),
                      SizedBox(height: 20,),
                      Column(
                        children: [

                          Container(
                            width: 300,
                            padding: EdgeInsets.all(10),
                            decoration:BoxDecoration(
                              border: Border.all(color: Color(0xffE8E8E8)),
                              color: Color(0xffE8E8E8),
                              borderRadius:
                              BorderRadius.vertical(top: Radius.circular(15)),
                            ),
                            child:
                              Row(
                                children: [
                                  Text("Subscription",style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w600),),
                                 SizedBox(width: 20,),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffE1FCEF)
                                  ),
                                    child: Text("Active",style: TextStyle(color: Color(0xff14804A)),),
                                  ),
                                ],
                              ),
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffE8E8E8)),
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.vertical(bottom: Radius.circular(15)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                      text: "Name:",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                            text: "BXC30A",
                                            style: TextStyle(
                                                color: Color(0xff5C5C5C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400))
                                      ]),
                                ),
                                SizedBox(height: 10,),
                                RichText(
                                  text: const TextSpan(
                                      text: "Security Deposit:",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                            text: "\$600.00",
                                            style: TextStyle(
                                                color: Color(0xff5C5C5C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400))
                                      ]),
                                ),
                                SizedBox(height: 10,),
                                RichText(
                                  text: const TextSpan(
                                      text: "Maximum Distance:",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                            text: "400 Km",
                                            style: TextStyle(
                                                color: Color(0xff5C5C5C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400))
                                      ]),
                                ),
                                SizedBox(height: 10,),
                                RichText(
                                  text: const TextSpan(
                                      text: "Start Date:",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                            text: "08/04/2016 09:00 AM",
                                            style: TextStyle(
                                                color: Color(0xff5C5C5C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400))
                                      ]),
                                ),
                                SizedBox(height: 10,),
                                RichText(
                                  text: const TextSpan(
                                      text: "End Date:",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                            text: "08/04/2024 09:00 AM",
                                            style: TextStyle(
                                                color: Color(0xff5C5C5C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400))
                                      ]),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Icon(Icons.check_circle_outline_outlined,color:Color(0xff11B826)),
                                   SizedBox(width:20),
                                    Text("Contract signed on\n 07/04/2016 11:00 PM",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                )

              ],
            )

          ],
        ),
      ),
    );
  }
}
