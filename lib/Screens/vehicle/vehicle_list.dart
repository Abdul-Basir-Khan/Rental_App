import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental/Screens/vehicle/report_for_exc.dart';
import 'package:rental/Screens/vehicle/vehicle_ppsr.dart';
import 'package:rental/Screens/vehicle/vehicle_qr.dart';
import 'package:rental/Screens/vehicle/vehicle_tracker.dart';

class VehicleScreen extends StatefulWidget {
  const VehicleScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<VehicleScreen> createState() => _VehicleScreenState();
}

class _VehicleScreenState extends State<VehicleScreen> {
  bool vFirstScreen = false;
  bool vSecondScreen = false;
  bool vThirdScreen = false;
  bool vFourthScreen = false;

  bool fortracker = false;
  bool forppsr = false;
  bool forexc = false;

  void forTrac() {
    setState(() {
      fortracker = !fortracker;
      forppsr = false;
      forexc = false;
      vFirstScreen = false;
      vSecondScreen = false;
      vThirdScreen = false;
      vFourthScreen = false;
    });
  }

  void forPps() {
    setState(() {
      forppsr = !forppsr;
      fortracker = false;
      forexc = false;
      vFirstScreen = false;
      vSecondScreen = false;
      vThirdScreen = false;
      vFourthScreen = false;
    });
  }

  void forExc() {
    setState(() {
      forexc = !forexc;
      forppsr = false;
      fortracker = false;
      vFirstScreen = false;
      vSecondScreen = false;
      vThirdScreen = false;
      vFourthScreen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Color(0xffE8E8E8)),
              color: Color(0xffFFFFFF)),
          child:forexc?Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Condition Reports for ENX04M",
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
                    forexc = !forexc;
                    fortracker=false;
                   forppsr=false;
                    vFirstScreen = false;
                    vSecondScreen = false;
                    vThirdScreen = false;
                    vFourthScreen = false;
                  });
                },
                child: Container(
                  height: 25,
                  width: 25,
                  child: Icon(
                    Icons.add_circle_outline_outlined,
                    color: (Color(0xff2388FF)),
                  ),
                ),
              ),
            ],
          ):
          forppsr?  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "PPSR Search",
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
                    forppsr = !forppsr;
                    fortracker=false;
                    forexc = false;
                    vFirstScreen = false;
                    vSecondScreen = false;
                    vThirdScreen = false;
                    vFourthScreen = false;
                  });
                },
                child: Container(
                  height: 25,
                  width: 25,
                  child: Icon(
                    Icons.remove_red_eye_outlined,
                    color: (Color(0xff2388FF)),
                  ),
                ),
              ),
            ],
          ):
              fortracker?
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Vehicle - ENX04M",
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
                        fortracker = !fortracker;
                        forppsr = false;
                        forexc = false;
                        vFirstScreen = false;
                        vSecondScreen = false;
                        vThirdScreen = false;
                        vFourthScreen = false;
                      });
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      child: Icon(
                        Icons.remove_red_eye_outlined,
                        color: (Color(0xff2388FF)),
                      ),
                    ),
                  ),
                ],
              )
:          vThirdScreen
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cars Qr Code List",
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
                          vThirdScreen = !vThirdScreen;
                          vSecondScreen = false;
                          vFirstScreen = false;
                          vFourthScreen = false;

                          forexc = false;
                          forppsr = false;
                          fortracker = false;
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
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Container(
                                height: 50,
                                width: 476,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15)),
                                  color: Color(0xffF9FAFC),
                                ),
                                child: Text(
                                  "Print QR",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                              content: Container(
                                height: 200,
                                width: 476,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(15)),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "To print the QR code you would need the\n following device: DYMO LabelWriter 450 Duo.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Select Printer *",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: "Select Printer",
                                        suffixIcon:
                                        const Icon(Icons.arrow_drop_down),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                Center(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(ctx).pop();
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                              color: Color(0xffF4F4F4)),

                                          child: const Text(
                                            "Close",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        SizedBox(width: 20,),
                                        Container(
                                          padding: const EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                              color: Color(0xff083EA1)),

                                          child: const Text(
                                            "Print",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    )
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
                        child: Icon(
                          Icons.print_outlined,
                          color: (Color(0xff2388FF)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.directions_car_outlined,
                        color: Color(0xff2388FF),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Car Lists",
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
                            hintText: "All",
                            suffixIcon: const Icon(Icons.arrow_drop_down),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search",
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.add_circle_outline_rounded,
                        color: Color(0xff2388FF),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                        onTap: () {
                          vSecondScreen = !vSecondScreen;
                          vFirstScreen = false;
                          vThirdScreen = false;
                          vFourthScreen = false;

                          forexc = false;
                          forppsr = false;
                          fortracker = false;
                        },
                        child: Container(
                          height: 25,
                          width: 25,
                          child: SvgPicture.asset(
                            "assets/icon/tag.svg",
                            color: Color(0xff2388FF),
                          ),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          vThirdScreen = !vThirdScreen;
                          vSecondScreen = false;
                          vFirstScreen = false;
                          vFourthScreen = false;
                          forexc = false;
                          forppsr = false;
                          fortracker = false;
                        });
                      },
                      child: Icon(
                        Icons.qr_code_rounded,
                        color: Color(0xff2388FF),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Container(
                                height: 50,
                                width: 476,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15)),
                                  color: Color(0xffF9FAFC),
                                ),
                                child: Text(
                                  "Vehicle Condition Report",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                              content: Container(
                                height: 90,
                                width: 476,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(15)),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Select Vehicle *",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: "Select Vehicle",
                                        suffixIcon:
                                            const Icon(Icons.arrow_drop_down),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                                        "Prepare Report",
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
                      child: Icon(
                        Icons.add_circle_outline_rounded,
                        color: Color(0xff2388FF),
                      ),
                    ),
                  ],
                ),
        ),
        forppsr
            ? VehiclePpsrScreen()
            : fortracker
                ? VehicleTrackerScreen()
                : forexc
                    ? ReportForExcScreen()
                    : vThirdScreen
                        ? VehicleQrScreen()
                        : VehicleScreenView(forEnx: forExc ,forPpsr: forPps,forTracker: forTrac,)
      ],
    );
  }
}

class VehicleScreenView extends StatefulWidget {
  final VoidCallback? forTracker;
  final VoidCallback? forPpsr;
  final VoidCallback? forEnx;
  const VehicleScreenView(
      {Key? key, this.forTracker, this.forPpsr, this.forEnx})
      : super(key: key);

  @override
  State<VehicleScreenView> createState() => _VehicleScreenViewState();
}

class _VehicleScreenViewState extends State<VehicleScreenView> {
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
                      "ENX04M",
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
                      onTap: widget.forTracker,
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: widget.forPpsr,
                      child: Icon(
                        Icons.check_circle_outline_rounded,
                        color: Color(0xff00AEEF),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: widget.forEnx,
                      child: Icon(
                        Icons.insert_drive_file_outlined,
                        color: Color(0xff2388FF),
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
                    const Image(image: AssetImage("assets/images/car.png")),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: "Rego: ENX04M",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
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
                                const SizedBox(
                                  height: 10,
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
                                const SizedBox(
                                  height: 10,
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
                                const SizedBox(
                                  height: 10,
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
                            SizedBox(
                              width: 90,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: "Telemetry Information",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "Status:",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                          text: "Locked",
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.local_fire_department,
                                          color: Color(0xffF2E2E2E),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "80%",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.add_road,
                                          color: Color(0xff2E2E2E),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "7634.34",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.settings_outlined,
                                          color: Color(0xff2E2E2E),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "OK",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
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
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                ),
                child: Row(
                  children: [
                    const Text(
                      "ENX04M",
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
                    Container(
                      height: 25,
                      width: 25,
                      child: SvgPicture.asset(
                        "assets/icon/edit.svg",
                        color: Color(0xff083EA1),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.check_circle_outline_rounded,
                      color: Color(0xff00AEEF),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.insert_drive_file_outlined,
                      color: Color(0xff2388FF),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.delete_outline,
                      color: Color(0xffFF2D46),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
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
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: "Rego: ENX04M",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
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
                                const SizedBox(
                                  height: 10,
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
                                const SizedBox(
                                  height: 10,
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
                                const SizedBox(
                                  height: 10,
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
                            SizedBox(
                              width: 90,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: "Telemetry Information",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "Status:",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                          text: "Locked",
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.local_fire_department,
                                          color: Color(0xffF2E2E2E),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "80%",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.add_road,
                                          color: Color(0xff2E2E2E),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "7634.34",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.settings_outlined,
                                          color: Color(0xff2E2E2E),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "OK",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
