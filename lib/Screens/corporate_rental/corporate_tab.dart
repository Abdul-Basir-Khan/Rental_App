import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental/Screens/corporate_rental/back_dated_corporate.dart';
import 'package:rental/Screens/corporate_rental/complete_corporate_rental.dart';
import 'package:rental/Screens/corporate_rental/completed_corporated_rental.dart';
import 'package:rental/Screens/corporate_rental/corporate_list.dart';
import 'package:rental/Screens/corporate_rental/corporate_rental_assign_vehicle.dart';
import 'package:rental/Screens/corporate_rental/notes.dart';
import 'package:rental/Screens/corporate_rental/update_carporate_rental.dart';

import '../../widget/live_corporate_rental.dart';
import 'corporate_rental_create.dart';
import 'corporate_rental_view.dart';

class CorporateRentalScreen extends StatefulWidget {
  const CorporateRentalScreen({Key? key}) : super(key: key);

  @override
  State<CorporateRentalScreen> createState() => _CorporateRentalScreenState();
}

class _CorporateRentalScreenState extends State<CorporateRentalScreen> {
  bool corporate = false;
  bool secondScreen = false;
  bool thirdScreen = false;
  bool fourthScreen = false;
  bool edit = false;
  bool update = false;
  bool inform = false;

  void forUp() {
    setState(() {
      update = !update;
      corporate = false;
      inform = false;
      edit = false;
      fourthScreen = false;
      thirdScreen = false;
      secondScreen = false;
    });
  }

  void forEd() {
    setState(() {
      edit = !edit;
      update = false;
      inform = false;
      corporate = false;
      fourthScreen = false;
      thirdScreen = false;
      secondScreen = false;
      update = false;
    });
  }

  void forInform() {
    setState(() {
      inform = !inform;
      corporate = false;
      edit = false;
      fourthScreen = false;
      thirdScreen = false;
      secondScreen = false;
      update = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color(0xffE8E8E8)),
          ),
          child: inform
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Text(
                            "Ultimate Luxury Cars Pty Ltd's Vehicles List",
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
                                inform = !inform;
                                fourthScreen = false;
                                thirdScreen = false;
                                secondScreen = false;
                                update = false;
                                corporate = true;
                              });
                            },
                            child: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Color(0xff2388FF),
                            ),
                          ),
                        ])
                  : edit
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              Text(
                                "Complete Corporate Rental",
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
                                    edit = !edit;
                                    fourthScreen = false;
                                    thirdScreen = false;
                                    secondScreen = false;
                                    update = false;
                                  });
                                },
                                child: Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Color(0xff2388FF),
                                ),
                              ),
                            ])
                      : update
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text(
                                    "Update Corporate Rental",
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
                                        update = !update;
                                        fourthScreen = false;
                                        thirdScreen = false;
                                        secondScreen = false;
                                        edit = false;
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Color(0xff2388FF),
                                    ),
                                  ),
                                ])
                          : thirdScreen
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Completed Corporate Rentals",
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
                                            hintText: "Search",
                                            prefixIcon:
                                                const Icon(Icons.search),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            thirdScreen = !thirdScreen;
                                            corporate = false;
                                            fourthScreen = false;
                                            secondScreen = false;
                                          });
                                        },
                                        child: Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: Color(0xff2388FF),
                                        ))
                                  ],
                                )
                              : fourthScreen
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Create Backdated Corporate Rental",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: "Poppins",
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                fourthScreen = !fourthScreen;
                                                corporate = false;
                                                thirdScreen = false;
                                                secondScreen = false;
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove_red_eye_outlined,
                                              color: Color(0xff2388FF),
                                            ))
                                      ],
                                    )
                                  : secondScreen
                                      ? Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Create Corporate Rental",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: "Poppins",
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    secondScreen =
                                                        !secondScreen;
                                                    corporate = false;
                                                    thirdScreen = false;
                                                    fourthScreen = false;
                                                  });
                                                },
                                                child: Icon(
                                                  Icons.remove_red_eye_outlined,
                                                  color: Color(0xff2388FF),
                                                ))
                                          ],
                                        )
                                      : Row(
                                          children: [
                                            corporate
                                                ? Text(
                                                    "Corporate Account",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontFamily: "Poppins",
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  )
                                                : Text(
                                                    "Live Corporate Rentals",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontFamily: "Poppins",
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                            const Spacer(),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    hintText: "Search",
                                                    prefixIcon: const Icon(
                                                        Icons.search),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    )),
                                              ),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    corporate = !corporate;
                                                    secondScreen = false;
                                                    thirdScreen = false;
                                                    fourthScreen = false;
                                                  });
                                                },
                                                icon: const Icon(
                                                  Icons.remove_red_eye_outlined,
                                                  color: Color(0xff2388FF),
                                                )),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    secondScreen =
                                                        !secondScreen;
                                                    corporate = false;
                                                    thirdScreen = false;
                                                    fourthScreen = false;
                                                  });
                                                },
                                                icon: const Icon(
                                                  Icons
                                                      .add_circle_outline_rounded,
                                                  color: Color(0xff2388FF),
                                                )),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    thirdScreen = !thirdScreen;
                                                    secondScreen = false;
                                                    corporate = false;
                                                    fourthScreen = false;
                                                  });
                                                },
                                                icon: const Icon(
                                                  Icons.upload_file,
                                                  color: Color(0xff2388FF),
                                                )),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  fourthScreen = !fourthScreen;
                                                  corporate = false;
                                                  secondScreen = false;
                                                  thirdScreen = false;
                                                });
                                              },
                                              child: SvgPicture.asset(
                                                  "assets/icon/report.svg",
                                                  color:
                                                      const Color(0xff2388FF)),
                                            ),
                                          ],
                                        ),
        ),
        const SizedBox(
          height: 20,
        ),
        corporate
            ? CorporateList(
                forInfo: forInform,
              )
            : secondScreen
                ? CorporateRentalCreateScreen()
                : thirdScreen
                    ? CompletedCorporatedRentalScreen()
                    : fourthScreen
                        ? BackDatedCarporateScreen()
                        : update
                            ? UpdateCorporateRentalScreen()
                            : edit
                                ? CompleteCorporateRental()
                                : inform
                                    ? CorporateAssignVehicleScreen()
                                        : CarporateView(
                                            forEdit: forEd, forUpdate: forUp),
      ],
    );
  }
}
