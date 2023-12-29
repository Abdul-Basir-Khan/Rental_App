import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewTicketScreen extends StatefulWidget {
  const NewTicketScreen({Key? key}) : super(key: key);

  @override
  State<NewTicketScreen> createState() => _NewTicketScreenState();
}

class _NewTicketScreenState extends State<NewTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SizedBox(height: 30,),
        Container(
          padding: const EdgeInsets.all(10),
          decoration:BoxDecoration(
            color: Colors.white,
            borderRadius:
            BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Subject Name: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Subject Name",
                            border: OutlineInputBorder(
                            ),
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
                        Text("Product/Services: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            hintText: " Select Product/Services",
                            border: OutlineInputBorder(
                            ),
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
                        SizedBox(height: 10,),
                        Text("Attach Screenshot",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10,),
                        DottedBorder(
                          color: Color(0xff00AEEF),
                          borderType: BorderType.RRect,
                          radius: Radius.circular(10),
                          padding: EdgeInsets.all(15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: Color(0xff00AEEF),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text("Upload",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14),),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("No File Choosen",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text("Message: *",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                        TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintText: "Message",
                            border: OutlineInputBorder(
                            ),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 220,),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 42,
                      width: 102,
                      decoration: BoxDecoration(
                        color: Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Cancel",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Padding(
                    padding: const EdgeInsets.only(right: 0,),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 42,
                      width: 176,
                      decoration: BoxDecoration(
                        color: Color(0xff2388FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Send",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Padding(
                    padding: const EdgeInsets.only(right: 0,),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 42,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Color(0xff083EA1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Send With Copy To Self",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ],
    );
  }
}
