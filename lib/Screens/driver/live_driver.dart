import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LiveDriverScreen extends StatefulWidget {
  const LiveDriverScreen({Key? key}) : super(key: key);

  @override
  State<LiveDriverScreen> createState() => _LiveDriverScreenState();
}

class _LiveDriverScreenState extends State<LiveDriverScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 16, crossAxisCount: 2, childAspectRatio: 1.6),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(
                height: 30,
              ),
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
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(15)),
                      ),
                      child: Row(
                        children: [
                          Image(image: AssetImage("assets/images/sam.png"),),
                          SizedBox(width: 10),
                          const Text(
                            "Sam Jhon",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color(0xffE1FCEF),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Added",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xff14804A)),
                            ),
                          ),
                          const Spacer(),
                          Icon(Icons.remove_red_eye_outlined,
                            color: Color(0xff11B826),),
                          SizedBox(width: 10),
                          Icon(Icons.info_outline, color: Color(0xff00AEEF)),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 25,
                              width: 25,
                              child: SvgPicture.asset(
                                "assets/icon/edit.svg",
                                color: Color(0xff083EA1),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.delete_outline,
                              color: Color(0xffFF2D46),
                            ),
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
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Personal Information",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "Address:",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                          text: "29 Budapest Street, Rooty Hill\n NSW, Australia",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ]),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "Phone:",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                            text: " 744 564 564 56",
                                            style: TextStyle(
                                                color: Color(0xff5C5C5C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400))
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Other Information",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "Rental No.:",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                          text: " 24234",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ]),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "Licence No.:",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                          text: " 21874147",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ]),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "State Issued:",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                          text: "NSW",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ]),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "Unpaid Balance:",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                          text: " \$ 70.99",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
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
              ),
            ],
          );
        }
    );
  }
}
