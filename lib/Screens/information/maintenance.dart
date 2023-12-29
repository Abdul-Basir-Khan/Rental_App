import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'add_maintenance_work.dart';

class MaintenanceScreen extends StatefulWidget {
  const MaintenanceScreen({Key? key}) : super(key: key);

  @override
  State<MaintenanceScreen> createState() => _MaintenanceScreenState();
}

class _MaintenanceScreenState extends State<MaintenanceScreen> {
  bool ismaintenance = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child:ismaintenance? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add Maintenance Work",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins",
                        color: Colors.black87,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  InkWell(
                      onTap: () {
                        setState(() {
                          ismaintenance=!ismaintenance;
                        });

                      },
                      child: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Color(0xff11B826),
                      )),
                ]): Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Maintenance List",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins",
                        color: Colors.black87,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search...",
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                      onTap: () {
                        setState(() {
                          ismaintenance=!ismaintenance;
                        });
                      },
                      child: Icon(
                        Icons.add_circle_outline_outlined,
                        color: Color(0xff2388FF),
                      )),
                ]),
        ),
        ismaintenance?MaintenanceWorkScreen() :MaintenanceView()
      ],
    );
  }
}

class MaintenanceView extends StatefulWidget {
  const MaintenanceView({Key? key}) : super(key: key);

  @override
  State<MaintenanceView> createState() => _MaintenanceViewState();
}

class _MaintenanceViewState extends State<MaintenanceView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10, crossAxisCount: 3, childAspectRatio: 1.2),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xffE8E8E8)),
              ),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DR10821611195",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffFCF2E6)
                            ),
                            child:Text(
                              "UnPaid",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xffAA5B00)
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                              child:
                              SvgPicture.asset("assets/icon/document.svg")),
                        ]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(15)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "Name: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "Bonnet Repair",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "Service Date: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "2020-11-11",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Park in ticket parking area not display ticket\nas required",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

