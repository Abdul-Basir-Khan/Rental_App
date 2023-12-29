import 'package:flutter/material.dart';
import 'package:rental/Screens/driver/sub_customer.dart';
import 'package:rental/Screens/driver/sub_history.dart';
import 'package:rental/Screens/driver/sub_invoice.dart';
import 'package:rental/Screens/driver/sub_overview.dart';

class DriverSubscriptionScreen extends StatefulWidget {
  const DriverSubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<DriverSubscriptionScreen> createState() => _DriverSubscriptionScreenState();
}

class _DriverSubscriptionScreenState extends State<DriverSubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0xffF9FAFC),
                borderRadius:
                BorderRadius.vertical(top: Radius.circular(15)),
              ),
              child: Row(
                children: [
                  Text("Subscription of Sam John",style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w600),),
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
              child: Column(
                children: [
                  TabBar(
                      labelColor: Color(0xff083EA1),
                      unselectedLabelColor: Color(0xff5C5C5C),
                      indicatorColor: Color(0xff083EA1),
                      tabs: [
                        Tab(
                          child: FittedBox(
                            child: Text(
                              "Overview",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Tab(
                          child: FittedBox(
                            child: Text(
                              "Invoices",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Tab(
                          child: FittedBox(
                            child: Text(
                              "Customer",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Tab(
                          child: FittedBox(
                            child: Text(
                              "History",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height *0.7,
                    child: TabBarView(children: [
                      SubOverviewScreen(),
                      SubInvoiceScreen(),
                      SubCustomerScreen(),
                      SubHistoryScreen(),

                    ]),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,)

      ],
        ),
      ),
    );
  }
}
