import 'package:flutter/material.dart';
import 'package:rental/Screens/driver/history_booking.dart';

import 'history_rental.dart';

class RentalHistoryScreen extends StatefulWidget {
  const RentalHistoryScreen({Key? key}) : super(key: key);

  @override
  State<RentalHistoryScreen> createState() => _RentalHistoryScreenState();
}

class _RentalHistoryScreenState extends State<RentalHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xffF9FAFC),
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
              child: Row(
                children: [
                  Text("Rental History of Sam John",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                  Spacer(),
                ],
              ),
          ),

          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(15)),
            ),
            child:  Column(
              children: [
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
                    ]),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: TabBarView(
                      children: [
                    HistoryRentalScreen(),
                    BookingScreen(),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
