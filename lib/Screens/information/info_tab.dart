import 'package:flutter/material.dart';
import 'package:rental/Screens/information/infregement.dart';
import 'package:rental/Screens/information/maintenance.dart';
import 'package:rental/Screens/information/support.dart';


class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
              labelColor:  Color(0xff083EA1),
              unselectedLabelColor:Color(0xff5C5C5C),
              indicatorColor: Color(0xff083EA1),
              tabs: [
                Tab(
                  child: Text("INFRINGEMENT",style:TextStyle(fontSize:14 ,fontWeight: FontWeight.w500) ,),
                ),
                Tab(
                  child: Text("MAINTAINENACE",style:TextStyle(fontSize:14 ,fontWeight: FontWeight.w500) ,),
                ),
                Tab(
                  child: Text("SUPPORT",style:TextStyle(fontSize:14 ,fontWeight: FontWeight.w500) ,),
                ),
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height*1.2,
            child: TabBarView(
                children: [
                  InfregmentScreen(),
                  MaintenanceScreen(),
                  SupportScreen(),
                ]),
          )
        ],

      ),
    );
  }
}



