import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:percent_indicator/percent_indicator.dart';

class VehicleTrackerScreen extends StatefulWidget {
  const VehicleTrackerScreen({Key? key}) : super(key: key);

  @override
  State<VehicleTrackerScreen> createState() => _VehicleTrackerScreenState();
}

class _VehicleTrackerScreenState extends State<VehicleTrackerScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xffFFFFFF),
          ),
          child: Stack(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 7.0,
                        percent: 0.8,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              child: SvgPicture.asset(
                                "assets/icon/meter.svg",
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "8000",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.redAccent),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "RMP",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xffB7B7B7)),
                            )
                          ],
                        ),
                        backgroundColor: Colors.grey,
                        progressColor: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 7.0,
                        percent: 0.5,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 20,
                                width: 20,
                                child: Icon(
                                  Icons.speed_outlined,
                                  color: Colors.black,
                                )),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "50",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color(0xff3573E7)),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Km/h",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xffB7B7B7)),
                            )
                          ],
                        ),
                        backgroundColor: Colors.grey,
                        progressColor: Color(0xff3573E7),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircularPercentIndicator(
                        radius: 40.0,
                        lineWidth: 7.0,
                        percent: 0.6,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.local_fire_department_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "60%",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color(0xff0BB839)),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Fuel",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xffB7B7B7)),
                            )
                          ],
                        ),
                        backgroundColor: Colors.grey,
                        progressColor: Color(0xff0BB839),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                            text: "Average Speed: ",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(
                                  text: "50.82 km/h",
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
                            text: "Average Engine RPM: ",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(
                                  text: "0 RPM",
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
                            text: "Odomete: ",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(
                                  text: "7449.00 km",
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
                            text: "Total Harsh Accelerations: ",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(
                                  text: "0",
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
                            text: "Total Harsh Breakings: ",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(
                                  text: "0",
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
                            text: "Total Harsh Cornerings: ",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(
                                  text: "0",
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
                  width: 10,
                ),
                Expanded(
                    child: Image(image: AssetImage("assets/images/map.png"))),
              ],
            ),
            Positioned(
                top: 60,
                left: 20,
                child: Container(
                    height: 200,
                    width: 200,
                    child: Image(image: AssetImage("assets/images/tesla.png"))))
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffFFFFFF),
          ),
          child: Row(
            children: [
              Text(
                "Logbook",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Spacer()
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10, crossAxisCount: 2, childAspectRatio: 1.3),
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
                      children: [
                        const Text(
                          "ENX04M (#54566)",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          child: const Icon(
                            Icons.location_on_outlined,
                            color: Color(0xff2388FF),
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
                        Container(height: 150,width: 200,child: const Image(image: AssetImage("assets/images/tesla.png"))),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                  "Logbook Information",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              RichText(
                                text: const TextSpan(
                                    text: "Trip Start Date: ",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                    children: [
                                      TextSpan(
                                          text:
                                              " 2021-06-17 10:03:40",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400))
                                    ]),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: "Trip End Date: ",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                    children: [
                                      TextSpan(
                                        text: "May-28-2021",
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
                                    text: "FBT Start ODO: ",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                    children: [
                                      TextSpan(
                                          text: "40179",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400))
                                    ]),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: "FBT End ODO: ",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                    children: [
                                      TextSpan(
                                          text: "42206",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400))
                                    ]),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: "Trip Reason: ",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                    children: [
                                      TextSpan(
                                          text: "0",
                                          style: TextStyle(
                                              color: Color(0xff5C5C5C),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400))
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
        ),
      ],
    );
  }
}
