import 'package:flutter/material.dart';

class CorporateRentalCreateScreen extends StatefulWidget {
  const CorporateRentalCreateScreen({Key? key}) : super(key: key);

  @override
  State<CorporateRentalCreateScreen> createState() => _CorporateRentalCreateScreenState();
}

class _CorporateRentalCreateScreenState extends State<CorporateRentalCreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color(0xffE8E8E8)),
          ),
          child: Column(
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

                    Text("Add New Corporate Rental",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                  Spacer(),
                  ],
                )
              ),
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
                          child : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rental Agreement No: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500)),
                              SizedBox(height: 10,),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "eg. 12345",
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
                              Text("Select Available Customer: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500)),
                              SizedBox(height: 10,),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Select Customer",
                                    suffixIcon: const Icon(Icons.arrow_drop_down),
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
                              Text("Select Available Vehicle: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500),),
                              SizedBox(height: 10,),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Select Vehicle",
                                  suffixIcon: const Icon(Icons.arrow_drop_down),
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
                              Text("Select Available Customer: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500)),
                              SizedBox(height: 10,),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Select Customer",
                                    suffixIcon: const Icon(Icons.arrow_drop_down),
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
                              Text("Select Available Vehicle: *",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500),),
                              SizedBox(height: 10,),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Select Vehicle",
                                    suffixIcon: const Icon(Icons.arrow_drop_down),
                                    border: OutlineInputBorder(

                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 490,),
                      child: Container(
                        height: 42,
                        width: 176,
                        decoration: BoxDecoration(
                          color: Color(0xff083EA1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check_circle_outline_sharp,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text("Confirm  Details",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
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
