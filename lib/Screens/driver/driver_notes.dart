import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DriverNotesScreen extends StatefulWidget {
  const DriverNotesScreen({Key? key}) : super(key: key);

  @override
  State<DriverNotesScreen> createState() => _DriverNotesScreenState();
}

class _DriverNotesScreenState extends State<DriverNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xffF9FAFC),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15)),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Notes",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Spacer(),
                        Icon(
                          Icons.star_border_outlined,
                          color: Color(0xff2E2E2E),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Color(0xff2E2E2E),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Color(0xff2E2E2E),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Color(0xff2E2E2E),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Color(0xff2E2E2E),
                        ),
                      ],
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(15)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Driver Notes",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        maxLines: 5,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    DottedBorder(
                                      color: Color(0xff00AEEF),
                                      borderType: BorderType.RRect,
                                      radius: Radius.circular(10),
                                      padding: EdgeInsets.all(15),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12)),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(15),
                                                decoration: BoxDecoration(
                                                  color: Color(0xff00AEEF),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                                child: Text(
                                                  "Upload",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    "Upload Rental Agreement, MFA T&Cs or Driver’s License",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "You can upload PDF, DOC, DOCX, PNG, JPG or JPEG file.\n File must not exceed 20 MB.",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                            child:  Text(
                              "Not a Rental Contract",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                            ),
                            child: Container(
                              height: 42,
                              width: 102,
                              decoration: BoxDecoration(
                                color: Color(0xffFF2D46),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Reset",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 0,
                            ),
                            child: Container(
                              height: 42,
                              width: 176,
                              decoration: BoxDecoration(
                                color: Color(0xff083EA1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
