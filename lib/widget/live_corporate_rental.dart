import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Screens/corporate_rental/corporate_list.dart';

class LiveCorporateRentals extends StatelessWidget {
  const LiveCorporateRentals({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color(0xffE8E8E8)),
      ),
      child: Row(
        children: [
          Text("Live Corporate Rentals",style: TextStyle(fontSize: 20,fontFamily:"Poppins",color: Colors.black87 ,fontWeight: FontWeight.w600),),
          Spacer(),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
              ),
            ),
          ),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CorporateList()));
          }, icon: Icon(Icons.remove_red_eye_outlined,color: Color(0xff2388FF),)),
          IconButton(onPressed: (){ }, icon: Icon(Icons.add_circle_outline_rounded,color: Color(0xff2388FF),)),
          IconButton(onPressed: (){ }, icon: Icon(Icons.upload_file,color: Color(0xff2388FF),)),
          InkWell(
            onTap: (){

            },
            child:  SvgPicture.asset("assets/icon/report.svg",color:Color(0xff2388FF) ),
          ),
        ],
      ),
    );
  }
}