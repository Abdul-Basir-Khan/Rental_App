import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfregmentNominatedScreen extends StatefulWidget {
  const InfregmentNominatedScreen({Key? key}) : super(key: key);

  @override
  State<InfregmentNominatedScreen> createState() =>
      _InfregmentNominatedScreenState();
}

class _InfregmentNominatedScreenState extends State<InfregmentNominatedScreen> {
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
                            "3210571742",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            child: Icon(Icons.remove_red_eye_outlined,
                                color: (Color(0xff11B826))),
                          ),
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
                        RichText(
                          text: const TextSpan(
                              text: "Nominated Date: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "2018-11-11",
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
