import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AssignVehicleScreen extends StatefulWidget {
  const AssignVehicleScreen({Key? key}) : super(key: key);

  @override
  State<AssignVehicleScreen> createState() => _AssignVehicleScreenState();
}

class _AssignVehicleScreenState extends State<AssignVehicleScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10, crossAxisCount: 2, childAspectRatio: 1.5),
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
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                ),
                child: Row(
                  children: [
                    const Text(
                      "Model Y",
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
                        "Active",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff14804A)),
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      "assets/icon/edit.svg",
                      color: Color(0xff083EA1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.block,
                      color: Colors.red,
                    ),
                    SizedBox(
                     width: 10,
                    ),
                    Icon(
                      Icons.remove_red_eye_outlined,
                      color: Color(0xff11B826),
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
                    const Image(image: AssetImage("assets/images/car.png")),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          RichText(
                            text: const TextSpan(
                                text: "Rego: ENX04M",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: const TextSpan(
                                text: "Make Model:",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(
                                    text: "2014",
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
                                text: "Registered State:",
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
                                          fontWeight: FontWeight.w400))
                                ]),
                          ),
                          RichText(
                            text: const TextSpan(
                                text: "Color:",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(
                                    text: "White",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ]),
                          ),
                          RichText(
                            text: const TextSpan(
                                text: "Expiry Date:",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(
                                    text: "20/jun2014",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ]),
                          ),
                          RichText(
                            text: const TextSpan(
                                text: "Date:",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(
                                    text: "20/jun/2020",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

        );
      },
    );
  }
}
