import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonalDetailScreen extends StatefulWidget {
  const PersonalDetailScreen({Key? key}) : super(key: key);

  @override
  State<PersonalDetailScreen> createState() => _PersonalDetailScreenState();
}

class _PersonalDetailScreenState extends State<PersonalDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xffF9FAFC),
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
            child: Row(
              children: [
                Text("Personal Details",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10) ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff083EA1)
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        child: SvgPicture.asset("assets/icon/edit.svg",color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Text("Edit Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14),)
                    ],
                  ),
                )
              ],
            )
        ),

        Container(
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(15)),
            ),
            child:Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email: ",style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),),
                        SizedBox(height: 15,),
                        Text("Mobile Number: ",style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),),
                        SizedBox(height: 15,),
                        Text("Alternate Number:",style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),),
                        SizedBox(height: 15,),
                        Text("Address:",style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),),
                        SizedBox(height: 15,),
                        Text("Driver Licence No:",style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),),
                      ],
                    ),
                    SizedBox(width: 40,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Not Found",style: TextStyle(
                            color: Color(0xff5C5C5C),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),),
                        SizedBox(height: 15,),
                        Text("0414741852",style: TextStyle(
                            color: Color(0xff5C5C5C),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),),
                        SizedBox(height: 15,),
                        Text("0414741852",style: TextStyle(
                            color: Color(0xff5C5C5C),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),),
                        SizedBox(height: 15,),
                        Text("Parramatta NSW 2154",style: TextStyle(
                            color: Color(0xff5C5C5C),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),),
                        SizedBox(height: 15,),
                        Text("s21874147",style: TextStyle(
                            color: Color(0xff5C5C5C),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Column(children: [
                  Text("Licence Front Picture:",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),

                  SizedBox(height: 10,),
                  Image(image: AssetImage("assets/images/idcard.png"))  ,
                ],)
              ],
            ),
        )
      ],
    );
  }
}
