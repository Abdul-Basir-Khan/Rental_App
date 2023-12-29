import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental/Screens/assets/asset_tab.dart';
import 'package:rental/Screens/corporate_rental/corporate_tab.dart';
import 'package:rental/Screens/dashboard/dashboard_tab.dart';
import 'package:rental/Screens/driver/driver_tab.dart';
import 'package:rental/Screens/information/info_tab.dart';
import 'package:rental/Screens/report/report_tab.dart';
import 'package:rental/Screens/reservation/reservation_tab.dart';
import 'package:rental/Screens/statement/statement_tab.dart';
import 'package:rental/Screens/transaction/transaction_tab.dart';
import 'package:rental/Screens/vehicle/vehicle_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/road_map.png")),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height * 0.2,
                    color: Color(0x80423636),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image(
                                image: AssetImage("assets/images/text1.png")),
                            Spacer(),
                            Expanded(
                              flex: 20,
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText:
                                        "Search Rentals, Vehicles & Drivers...",
                                    suffixIcon: Icon(Icons.search),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    )),
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset("assets/icon/carbon_light.svg"),
                            Spacer(),
                            SvgPicture.asset("assets/icon/language.svg"),
                            Spacer(),
                            Icon(
                              Icons.help_outline,
                              color: Colors.white,
                            ),
                            Spacer(),
                            Stack(children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/men.png"))),
                              ),
                              Positioned(
                                bottom: 2,
                                right: 0,
                                child: Container(
                                  height: 13,
                                  width: 13,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0x4671DD37),
                                      border: Border.all(
                                          color: Colors.white, width: 2)),
                                ),
                              ),
                            ]),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Image(image: AssetImage("assets/icon/a.png")),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "MFA",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              children: [
                                Image(image: AssetImage("assets/icon/b.png")),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "eFleetCheck",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              children: [
                                Image(image: AssetImage("assets/icon/c.png")),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "eFleetTolling",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              children: [
                                Image(image: AssetImage("assets/icon/d.png")),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "eFleetRent",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              children: [
                                Image(image: AssetImage("assets/icon/e.png")),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "eFleetTrack",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentIndex = 0;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.dashboard_outlined,color: _currentIndex == 0 ?Color(0xff083EA1):Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Dashboard",style: TextStyle(color: _currentIndex == 0 ?Color(0xff083EA1):Colors.black,),),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentIndex = 1;
                            });
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icon/corporate.svg",color: _currentIndex == 1 ?Color(0xff083EA1):Colors.black,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Corporate Rentals",style: TextStyle(color: _currentIndex == 1 ?Color(0xff083EA1):Colors.black,),),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentIndex = 2;
                            });
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icon/diver.svg",color: _currentIndex == 2 ?Color(0xff083EA1):Colors.black,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Drivers",style: TextStyle(color: _currentIndex == 2?Color(0xff083EA1):Colors.black,),),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentIndex = 3;
                            });
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icon/vehicle.svg",color: _currentIndex == 3 ?Color(0xff083EA1):Colors.black,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Vehicles",style: TextStyle(color: _currentIndex == 3 ? Color(0xff083EA1):Colors.black,),),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentIndex = 4;
                            });
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icon/transaction.svg",color: _currentIndex == 4 ? Color(0xff083EA1):Colors.black,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Transactions",style: TextStyle(color: _currentIndex == 4 ? Color(0xff083EA1):Colors.black,),),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentIndex = 5;
                            });
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icon/reservation.svg",color: _currentIndex == 5 ?Color(0xff083EA1):Colors.black,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Reservation",style: TextStyle(color: _currentIndex == 5 ?Color(0xff083EA1):Colors.black,),),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentIndex = 6;
                            });
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icon/statement.svg",color: _currentIndex == 6 ? Color(0xff083EA1):Colors.black,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Statement",style: TextStyle(color: _currentIndex == 6 ? Color(0xff083EA1):Colors.black,),),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentIndex = 7;
                            });
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icon/report.svg",color: _currentIndex == 7 ?Color(0xff083EA1):Colors.black,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Reports",style: TextStyle(color: _currentIndex == 7 ? Color(0xff083EA1):Colors.black,),),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentIndex = 8;
                            });
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icon/asset.svg",color: _currentIndex == 8 ?Color(0xff083EA1):Colors.black,),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Assets",style: TextStyle(color: _currentIndex == 8 ?Color(0xff083EA1):Colors.black,),),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentIndex = 9;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.more_vert_rounded,
                                color: _currentIndex == 9 ?Color(0xff083EA1):Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  if(_currentIndex == 0)
                    DashboardScreen(),
                  if(_currentIndex == 1)
                    CorporateRentalScreen(),
                  if(_currentIndex == 2)
                    DriverScreen(),
                  if(_currentIndex == 3)
                    VehicleScreen(),
                  if(_currentIndex == 4)
                    TransactionScreen(),
                  if(_currentIndex == 5)
                    ReservationCalenderScreen(),
                  if(_currentIndex == 6)
                    StatementScreen(),
                  if(_currentIndex == 7)
                    ReportScreen(),
                  if(_currentIndex == 8)
                    AssetScreen(),
                  if(_currentIndex == 9)
                    InformationScreen(),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
