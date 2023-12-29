import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FleetSummarySCreen extends StatefulWidget {
  const FleetSummarySCreen({Key? key}) : super(key: key);

  @override
  State<FleetSummarySCreen> createState() => _FleetSummarySCreenState();
}

class _FleetSummarySCreenState extends State<FleetSummarySCreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xffF9FAFC),
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            border: Border.all(color: const Color(0xffE8E8E8)),
          ),
          child: Table(
            children: [
              TableRow(
                  children: [
                    Text("From\nMFA Motorways (Australia) Pty Ltd\nLevel 1, 5 George North Strathfield NSW\n2137, AUSTRALIA\n0432744999\nABN: NA",textScaleFactor: 1.2,),
                  ]
              ),
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child:Table(
              children: [
                TableRow(
                    children: [
                      Text("Account summary",textScaleFactor: 1.2,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    ]
                ),
              ],
            )
        ),
        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child:Table(
              children: [
                TableRow(
                    children: [
                      Text("Description",textScaleFactor: 1.2,),
                      Text("Summary",textScaleFactor: 1.2),
                    ]
                ),
              ],
            )
        ),
        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xffF9FAFC),
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child:Table(
              children: [
                TableRow(
                    children: [
                      Text("Balance as at 01 Sep 2022",textScaleFactor: 1.2,),
                      Text("\$ 9.42 dr",textScaleFactor: 1.2,style: TextStyle(fontSize: 16,color:(Color(0xff11B826))),),
                    ]
                ),
              ],
            )
        ),
        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child:Table(
              children: [
                TableRow(
                    children: [
                      Text("Payments received",textScaleFactor: 1.2,),
                      Text("\$ 0.00 cr",textScaleFactor: 1.2,style: TextStyle(fontSize: 16,color:(Color(0xff11B826))),),
                    ]
                ),

              ],
            )
        ),

        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xffF9FAFC),
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child:Table(
              children: [
                TableRow(
                    children: [
                      Text("Total GST included",textScaleFactor: 1.2,),
                      Text("\$ 0.00",textScaleFactor: 1.2,style: TextStyle(fontSize: 16,color:(Color(0xff11B826))),),
                    ]
                ),

              ],
            )
        ),
        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child:Table(
              children: [
                TableRow(
                    children: [
                      Text("Total charged for statement period",textScaleFactor: 1.2,),
                      Text("\$ 0.00",textScaleFactor: 1.2,style: TextStyle(fontSize: 16,color:(Color(0xff11B826))),),
                    ]
                ),

              ],
            )
        ),
        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xffF9FAFC),
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child:Table(
              children: [
                TableRow(
                    children: [
                      Text("Balance owing",textScaleFactor: 1.2,),
                      Text("\$ 9.42 dr",textScaleFactor: 1.2,style: TextStyle(fontSize: 16,color:(Color(0xff11B826))),),
                    ]
                ),

              ],
            )
        ),
        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child:Table(
              children: [
                TableRow(
                    children: [
                      Text("Transactions list",textScaleFactor: 1.2,style: TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                    ]
                ),
              ],
            )
        ),
        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child:Table(
              children: [
                TableRow(
                    children: [
                      Text("Date",textScaleFactor: 1.2,),
                      Text("Description",textScaleFactor: 1.2,),
                      Text("Amount",textScaleFactor: 1.2,),
                    ]
                ),

              ],
            )
        ),
        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xffF9FAFC),
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child:Table(
              children: [
                TableRow(
                    children: [
                      Text("30/02/2022",textScaleFactor: 1.2,),
                      Text(" Total Payments received",textScaleFactor: 1.2,),
                      Text("\$ 0.00",textScaleFactor: 1.2,style: TextStyle(fontSize: 16,color:(Color(0xff11B826))),),
                    ]
                ),

              ],
            )
        ),
        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child:Table(
              children: [
                TableRow(
                    children: [
                      Text("Tolls list for fleet",textScaleFactor: 1.2,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    ]
                ),
              ],
            )
        ),
        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child:Table(
              children: [
                TableRow(
                    children: [
                      Text("Description",textScaleFactor: 1.2,),
                      Text("Amount",textScaleFactor: 1.2,),
                    ]
                ),

              ],
            )
        ),
        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xffF9FAFC),
              border: Border.all(color: const Color(0xffE8E8E8)),
            ),
            child:Table(
              children: [
                TableRow(
                    children: [
                      Text("Total Payment Received ",textScaleFactor: 1.2,),
                      Text("\$ 0.00",textScaleFactor: 1.2,style: TextStyle(fontSize: 16,color:(Color(0xff11B826))),),
                    ]
                ),
              ],
            ),
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}
