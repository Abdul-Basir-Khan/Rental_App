import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental/Screens/corporate_rental/corporate_rental_assign_vehicle.dart';

import '../../widget/live_corporate_rental.dart';

class CorporateList extends StatefulWidget {
  final VoidCallback ? forInfo;
  const CorporateList({Key? key, this.forInfo}) : super(key: key);

  @override
  State<CorporateList> createState() => _CorporateListState();
}

class _CorporateListState extends State<CorporateList> {
  bool forInfo = false;

  @override
  Widget build(BuildContext context) {
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
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                ),
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/girl.png"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Linda Roy",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: widget.forInfo,
                      child: const Icon(
                        Icons.info_outline,
                        color: Color(0xff00AEEF),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset("assets/icon/edit.svg",
                          color: const Color(0xff083EA1)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(Icons.delete_outline_outlined,
                          color: const Color(0xffFF2D46)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset("assets/icon/logout.svg",
                          color: const Color(0xff11B826)),
                    ),
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                        image: AssetImage("assets/images/ultimate.png")),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: "Personal Information",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "Email: ",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                          text: "frank@ulimaterentals.com.au",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ]),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "Phone No: ",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                            text: "799 2342345 234",
                                            style: TextStyle(
                                                color: Color(0xff5C5C5C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400))
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 10.0, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: "Corporate Information",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
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
                                          text: "Ultimate Luxury Cars Pty Ltd",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ]),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "Address: ",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                            text:
                                                "Princes Highway 139 Arncliffe",
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
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 15,),
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
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                ),
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/girl1.png"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Lisa Franco",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.info_outline,
                      color: Color(0xff00AEEF),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {

                      },
                      child: SvgPicture.asset("assets/icon/edit.svg",
                          color: const Color(0xff083EA1)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(Icons.delete_outline_outlined,
                          color: const Color(0xffFF2D46)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset("assets/icon/logout.svg",
                          color: const Color(0xff11B826)),
                    ),
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                        image: AssetImage("assets/images/simba.png")),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: "Personal Information",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "Email: ",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                          text: "frank@ulimaterentals.com.au",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ]),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "Phone No: ",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                            text: "799 2342345 234",
                                            style: TextStyle(
                                                color: Color(0xff5C5C5C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400))
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(right: 10.0, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: "Corporate Information",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
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
                                          text: "Ultimate Luxury Cars Pty Ltd",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ]),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "Address: ",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                            text:
                                            "Princes Highway 139 Arncliffe",
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
                ),
              )
            ],
          ),
        ),


      ],
    );
  }
}
