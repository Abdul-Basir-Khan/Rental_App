import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddAssetScreen extends StatefulWidget {
  const AddAssetScreen({Key? key}) : super(key: key);

  @override
  State<AddAssetScreen> createState() => _AddAssetScreenState();
}

class _AddAssetScreenState extends State<AddAssetScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SizedBox(height: 20,),
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
                        Text("Serial No: ",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "e.g 1234",
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
                        Text("Cost: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "e.g 100",
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
                        Text("Add Image",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500)),
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
                                  Text("Click to add image",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
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
                        Text("Description",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                        TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintText: "Description",
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
                    padding: const EdgeInsets.only(left: 420,),
                    child: Container(
                      height: 42,
                      width: 102,
                      decoration: BoxDecoration(
                        color: Color(0xffFF2D46),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/icon/reset.svg",color: Colors.white,),
                            SizedBox(width: 10,),
                            Text("Reset",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Padding(
                    padding: const EdgeInsets.only(right: 0,),
                    child: Container(
                      height: 42,
                      width: 176,
                      decoration: BoxDecoration(
                        color: Color(0xff083EA1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.check_circle_outline_sharp,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text("Confirm  Details",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14),)
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
