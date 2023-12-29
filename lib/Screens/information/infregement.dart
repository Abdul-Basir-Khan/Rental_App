import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental/Screens/information/fleet_detail.dart';
import 'package:rental/Screens/information/new_ticket.dart';

import 'infregment_nominated.dart';

class InfregmentScreen extends StatefulWidget {
  const InfregmentScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<InfregmentScreen> createState() => _InfregmentScreenState();
}

class _InfregmentScreenState extends State<InfregmentScreen> {
  bool isNominated = false;
  bool forfleetdetail = false;
  bool forNewTicket = false;

  void forFleet() {
    setState(() {
      forfleetdetail = !forfleetdetail;
      isNominated = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color(0xffE8E8E8)),
          ),
          child: forfleetdetail
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      forNewTicket
                          ? Text(
                              "Add New Ticket",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins",
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w600),
                            )
                          : Text(
                              "Fleet Details",
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
                              forfleetdetail = !forfleetdetail;
                              isNominated = false;
                            });
                          },
                          child: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Color(0xff11B826),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              forNewTicket = !forNewTicket;
                            });
                          },
                          child: Icon(
                            Icons.add_circle_outline_outlined,
                            color: Color(0xff2388FF),
                          )),
                    ])
              : isNominated
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Text(
                            "Infringements - Nominated",
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
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  isNominated = !isNominated;
                                });
                              },
                              child: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Color(0xff2388FF),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.add_circle_outline_outlined,
                                color: Color(0xff2388FF),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            child: SvgPicture.asset(
                              "assets/icon/word.svg",
                              color: Color(0xff2388FF),
                            ),
                          )
                        ])
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Text(
                            "Infringements - Outstanding",
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
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  isNominated = !isNominated;
                                });
                              },
                              child: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Color(0xff2388FF),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                      title: Container(
                                        height: 50,
                                        width: 500,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(15)),
                                          color: Color(0xffF9FAFC),
                                        ),
                                        child: Text(
                                          "Setup Revenue",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                      ),
                                      content: Container(
                                        height: 450,
                                        width: 500,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.vertical(
                                              bottom: Radius.circular(15)),
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Vehicle Owner *",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: "Fleet",
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Container(
                                                    height: 25,
                                                    width: 25,
                                                    child: SvgPicture.asset(
                                                        "assets/icon/edit.svg"),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "RMS Customer Number *",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            "RMS Customer Number *",
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Container(
                                                    height: 25,
                                                    width: 25,
                                                    child: SvgPicture.asset(
                                                        "assets/icon/edit.svg"),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Representative's Signature",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: TextField(
                                                      maxLines: 5,
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Container(
                                                    height: 25,
                                                    width: 25,
                                                    child: SvgPicture.asset(
                                                        "assets/icon/clean.svg"),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Note: Remember to add additional Customer Numbers\nrelated to your fleet of vehicles",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: TextButton(
                                                onPressed: () {
                                                  Navigator.of(ctx).pop();
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      color: Color(0xff083EA1)),
                                                  padding:
                                                      const EdgeInsets.all(14),
                                                  child: const Text(
                                                    "Submit",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Divider(
                                              color: Color(0xffE8E8E8),
                                              thickness: 2,
                                            ),
                                            Text(
                                              "Current Customer Numbers",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Divider(
                                              color: Color(0xffE8E8E8),
                                              thickness: 2,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color: Colors.white),
                                              padding: const EdgeInsets.all(14),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "2",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff000000),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    "9872 3434 3431",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff000000),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              color: Color(0xffE8E8E8),
                                              thickness: 2,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color: Color(0xffF9FAFC)),
                                              padding: const EdgeInsets.all(14),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "2",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff000000),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    "9872 3434 3431",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff000000),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                });
                              },
                              child: Icon(
                                Icons.add_circle_outline_outlined,
                                color: Color(0xff2388FF),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                showDialog(
                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                    title: Container(
                                      height: 50,
                                      width: 500,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(15)),
                                        color: Color(0xffF9FAFC),
                                      ),
                                      child: Text(
                                        "View Revenue Form",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      ),
                                    ),
                                    content: Container(
                                      height: 450,
                                      width: 500,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(15)),
                                        color: Colors.white,
                                      ),
                                      child: Image(
                                          image: AssetImage(
                                              "assets/images/revenue.png")),
                                    ),
                                    actions: <Widget>[
                                      Center(
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.of(ctx).pop();
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Color(0xff083EA1)),
                                            padding: const EdgeInsets.all(14),
                                            child: const Text(
                                              "Send To Revenue",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                            },
                            child: Container(
                              height: 25,
                              width: 25,
                              child: SvgPicture.asset(
                                "assets/icon/word.svg",
                                color: Color(0xff2388FF),
                              ),
                            ),
                          )
                        ]),
        ),
        forNewTicket
            ? NewTicketScreen()
            : isNominated
                ? InfregmentNominatedScreen()
                : forfleetdetail
                    ? FleetDetailScreen()
                    : InfregmentOutsandingScreen(
                        forFleetDetail: forFleet,
                      )
      ],
    );
  }
}

class InfregmentOutsandingScreen extends StatefulWidget {
  final VoidCallback? forFleetDetail;

  const InfregmentOutsandingScreen({Key? key, this.forFleetDetail})
      : super(key: key);

  @override
  State<InfregmentOutsandingScreen> createState() =>
      _InfregmentOutsandingScreenState();
}

class _InfregmentOutsandingScreenState
    extends State<InfregmentOutsandingScreen> {
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
              crossAxisSpacing: 10, crossAxisCount: 3, childAspectRatio: 0.9),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xffE8E8E8)),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Color(0xffF9FAFC),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15)),
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "3210571742",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                              onTap: widget.forFleetDetail,
                              child:
                                  SvgPicture.asset("assets/icon/document.svg")),
                        ]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(15)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CXU26G",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "Penalty Amt.: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "\$116.00",
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
                              text: "Offence Date: ",
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
