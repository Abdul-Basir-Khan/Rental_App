import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class DriverPayAllScreen extends StatefulWidget {
  const DriverPayAllScreen({Key? key}) : super(key: key);

  @override
  State<DriverPayAllScreen> createState() => _DriverPayAllScreenState();
}

class _DriverPayAllScreenState extends State<DriverPayAllScreen> {

  String _selectBank = "Bank";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color(0xffF9FAFC),
            borderRadius:
            BorderRadius.vertical(top: Radius.circular(15)),
          ),
          child: Row(
            children: [
              Text("Invoice Details",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
              Spacer(),
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
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Invoice Number: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                  SizedBox(height: 10,),
                  Text("invoice Date: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                  SizedBox(height: 10,),
                  Text("Total Un-paid Toll:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                  SizedBox(height: 10,),
                  Text("Daily Service Fee:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                  SizedBox(height: 10,),
                  Text("Tax (GST 10% Incl): ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                  SizedBox(height: 10,),
                  Text("Gift Card:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                  SizedBox(height: 10,),
                  Text("Total Amount:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
                ],
              ),
              SizedBox(width: 90,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("#DR10821611195",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff5C5C5C)),),
                  SizedBox(height: 10,),
                  Text("24/01/2020",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff5C5C5C)),),
                  SizedBox(height: 10,),
                  Text("\$130.65",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff5C5C5C)),),
                  SizedBox(height: 10,),
                  Text("\$3.30",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff5C5C5C)),),
                  SizedBox(height: 10,),
                  Text("\$12.17 ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff5C5C5C)),),
                  SizedBox(height: 10,),
                  Text("\$0.00",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff5C5C5C)),),
                  SizedBox(height: 10,),
                  Text("\$133.95",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xff11B826)),),
                  SizedBox(height: 10,),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color(0xffF9FAFC),
            borderRadius:
            BorderRadius.vertical(top: Radius.circular(15)),
          ),
          child: Row(
            children: [
              Text("All Toll Bill till Date: 21/09/2022 for Sam John",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
              Spacer(),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Select Payment Method",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 14,color: Colors.black),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Radio(value: 'visa', groupValue: _selectBank, onChanged: (v){
                    setState(() {
                      _selectBank=v!;
                    });
                  }),
                  SvgPicture.asset("assets/icon/card1.svg"),
                  SizedBox(width: 10,),
                  SvgPicture.asset("assets/icon/card2.svg"),
                  SizedBox(width: 40,),
                  Radio(value: 'Bank', groupValue: _selectBank, onChanged: (b){
                    setState(() {
                      _selectBank=b!;
                    });
                  }),
               Image(image: AssetImage("assets/icon/bank.png")),
                  SizedBox(width: 10,),
                  Text("Bank Payment")
                ],
              ),
              SizedBox(height: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Shreshowla",
                                  prefixIcon: const Icon(Icons.search),
                                  border: OutlineInputBorder()),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Email",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "e.g abc@gmail.com",
                                  border: OutlineInputBorder()),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "9237623764",
                                  border: OutlineInputBorder()),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Add a credit card",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Container(
                                    padding: EdgeInsets.all(10),
                                    child: SvgPicture.asset("assets/icon/card.svg"),
                                  ),
                                  hintText: "0000 0000 0000",
                                  border: OutlineInputBorder()),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Expiry",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "MM/YY",
                                  border: OutlineInputBorder()),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CVC",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "CVC", border: OutlineInputBorder()),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "This transaction will incur a non-refundable surcharge of 2.5% upon\n\nsuccessfulprocessingn.International cards 3.5%.",
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(10)  ,
                        decoration: BoxDecoration(
                          color: Color(0xff11B826),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.money_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Pay Now (\$133.95)",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
