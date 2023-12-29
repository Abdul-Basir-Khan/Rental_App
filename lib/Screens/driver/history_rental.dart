import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HistoryRentalScreen extends StatefulWidget {
  const HistoryRentalScreen({Key? key}) : super(key: key);

  @override
  State<HistoryRentalScreen> createState() => _HistoryRentalScreenState();
}

class _HistoryRentalScreenState extends State<HistoryRentalScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 16, crossAxisCount: 3, childAspectRatio: 1.1),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
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
                              Image(image: AssetImage("assets/images/sam.png")),
                              Text(
                                "Sam John",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xffE1FCEF),
                                ),
                                child: Text(
                                  "Completed",
                                  style: TextStyle(
                                      color: Color(0xff14804A),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                child: InkWell(
                                  child:
                                      SvgPicture.asset("assets/icon/pdf.svg"),
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(15)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "RA #2016-000-39",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: const TextSpan(
                                  text: "REGO: ",
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
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: const TextSpan(
                                  text: "Phone: ",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  children: [
                                    TextSpan(
                                        text: "744 564 564 56",
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
                                  text: "Start Date:",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  children: [
                                    TextSpan(
                                        text: "08/04/2016 09:00",
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
                                  text: "End Date.:",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  children: [
                                    TextSpan(
                                        text: "08/04/2016 09:00",
                                        style: TextStyle(
                                            color: Color(0xff5C5C5C),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400))
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
