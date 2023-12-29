import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MaintenanceWorkScreen extends StatefulWidget {
  const MaintenanceWorkScreen({Key? key}) : super(key: key);

  @override
  State<MaintenanceWorkScreen> createState() => _MaintenanceWorkScreenState();
}

class _MaintenanceWorkScreenState extends State<MaintenanceWorkScreen> {
  bool _currentvalue = false;
  bool _currentvalue1 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
            BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Select car: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Select Car",
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(

                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Service Date: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "eg 2021-11-2",
                              border: OutlineInputBorder(

                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Name",
                              border: OutlineInputBorder(

                              )
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
                    child : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Remind Before: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "eg.2",
                              border: OutlineInputBorder(

                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Cost: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Cost",
                              border: OutlineInputBorder(

                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Service Type: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Planned Service",style: TextStyle(fontSize:11 ,fontWeight: FontWeight.w500),),
                            Switch(
                              activeColor: Color(0xffFF2D46),
                                value: _currentvalue, onChanged: (v){
                              setState(() {
                                _currentvalue=v;
                              });
                            }),
                            Text("Unplanned Service",style: TextStyle(color:Color(0xffFF2D46),fontSize:11 ,fontWeight: FontWeight.w500),),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Notification Type: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("SMS",style: TextStyle(color:Color(0xff11B826),fontSize:14 ,fontWeight: FontWeight.w500),),
                            Switch(
                                activeColor: Color(0xff11B826),
                                value: _currentvalue1, onChanged: (v){
                              setState(() {
                                _currentvalue1=v;
                              });
                            }),
                            Text("Email",style: TextStyle(color:Colors.black,fontSize:14 ,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Description",style: TextStyle(color:Colors.black,fontSize:14 ,fontWeight: FontWeight.w500),),
                           SizedBox(height: 15,),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    maxLines:5,
                                    decoration: InputDecoration(
                                        hintText: "description",
                                        border: OutlineInputBorder(

                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )

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
