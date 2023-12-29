import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DriverCollectionScreen extends StatefulWidget {
  const DriverCollectionScreen({Key? key}) : super(key: key);

  @override
  State<DriverCollectionScreen> createState() => _DriverCollectionScreenState();
}

class _DriverCollectionScreenState extends State<DriverCollectionScreen> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                          " Driver Collection Notes",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Spacer(),
                        InkWell(
                          onTap:(){
                            setState(() {
                              isVisible=!isVisible;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffFF2D46)
                            ),
                            child: Text("Record Accident Claim",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff11B826)
                          ),
                          child: Text("Download Authoriy Form",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Attach a file",
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
                      Text("Damage Claim Amount",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black),),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)

                            ),
                            child: Text("\$"),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
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
          SizedBox(height: 20,),
          Visibility(
            visible: isVisible,
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
                      Text("Report Accident Claim",style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w600),),
                      Spacer(),
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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Driveable:",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14 ,color: Colors.black),),
                                SizedBox(height: 10,),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: "Yes",
                                    suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Select Rental:*",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14 ,color: Colors.black),),
                                SizedBox(height: 10,),
                                TextField(

                                  decoration: InputDecoration(
                                    hintText: "Select Customer",
                                    suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Other Party Name:*",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14 ,color: Colors.black),),
                                SizedBox(height: 10,),
                                TextField(

                                  decoration: InputDecoration(
                                    hintText: "e.g 12345",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Other Party Address: *",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14 ,color: Colors.black),),
                                SizedBox(height: 10,),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: "e.g.12345",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Other Party License No.: *",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14 ,color: Colors.black),),
                                SizedBox(height: 10,),
                                TextField(

                                  decoration: InputDecoration(
                                    hintText: "e.g.12345",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Other Party Rego Number: *",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14 ,color: Colors.black),),
                                SizedBox(height: 10,),
                                TextField(

                                  decoration: InputDecoration(
                                    hintText: "e.g 12345",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Other Party Insurance Company:*",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14 ,color: Colors.black),),
                                SizedBox(height: 10,),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: "Yes",
                                    suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Claim Number:",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14 ,color: Colors.black),),
                                SizedBox(height: 10,),
                                TextField(

                                  decoration: InputDecoration(
                                    hintText: "e.g.12345",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Date of Accident: *",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14 ,color: Colors.black),),
                                SizedBox(height: 10,),
                                TextField(

                                  decoration: InputDecoration(
                                    hintText: "e.g 12345",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Police Report Number: *",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14 ,color: Colors.black),),
                                SizedBox(height: 10,),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: "Yes",
                                    suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Accident Description:",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14 ,color: Colors.black),),
                          SizedBox(height: 10,),
                          TextField(
                            maxLines: 4,
                            decoration: InputDecoration(
                              hintText: "Accident Description:",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                            child: DottedBorder(
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
                                          BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          "Upload 1",
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
                                      Text(
                                        "Attach a file",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight:
                                            FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: DottedBorder(
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
                                          BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          "Upload 2",
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
                                      Text(
                                        "Attach a file",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight:
                                            FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: DottedBorder(
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
                                          BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          "Upload 3",
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
                                      Text(
                                        "Attach a file",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight:
                                            FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                            child: DottedBorder(
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
                                          BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          "Upload 4",
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
                                      Text(
                                        "Attach a file",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight:
                                            FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: DottedBorder(
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
                                          BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          "Upload 5",
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
                                      Text(
                                        "Attach a file",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight:
                                            FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                        Spacer(),
                        ],
                      ),
                      Row(
                        children: [
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 0,
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              height: 42,
                              width: 176,
                              decoration: BoxDecoration(
                                color: Color(0xff083EA1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.check_circle_outline_outlined,color:Colors.white),
                                  SizedBox(width: 10,),
                                  Text(
                                    "Confirm Details",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                )
         ]),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}

