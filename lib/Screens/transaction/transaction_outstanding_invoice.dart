import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionOutstandingScreen extends StatefulWidget {
  const TransactionOutstandingScreen({Key? key}) : super(key: key);

  @override
  State<TransactionOutstandingScreen> createState() => _TransactionOutstandingScreenState();
}

class _TransactionOutstandingScreenState extends State<TransactionOutstandingScreen> {
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
                    Text("FROM",textScaleFactor: 1.2,),
                    Text("TO",textScaleFactor: 1.2),
                    Text("TAX INVOICE",textScaleFactor: 1.2),
                  ]
              ),
              TableRow(
                  children: [
                    Text("\nMFA Motorways (Australia) Pty Ltd\nLevel 1, 5 George North Strathfield NSW\n2137, AUSTRALIA\nPhone: 1300 885 367",textScaleFactor: 1.2,),
                    Text("\nDaniel Romeiro\nThe Oaks , NSW 2570\nPhone: 0405843626",textScaleFactor: 1.2),
                    RichText(
                      text: const TextSpan(
                          text: "\n\n #DR10821611195\n24/01/2020",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(
                                text: "\n\n\$133.95",
                                style: TextStyle(
                                    color: Color(0xff11B826),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700))
                          ]),
                    ),
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
                    Text("SKU",textScaleFactor: 1.2,),
                    Text("Item Description",textScaleFactor: 1.2),
                    Text("Unit Price",textScaleFactor: 1.2),
                    Text("Quality",textScaleFactor: 1.2,),
                    Text("GST",textScaleFactor: 1.2),
                    Text("TOTAL",textScaleFactor: 1.2),
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
                      Text("a-fee",textScaleFactor: 1.2,),
                      Text("Toll Notes Fee",textScaleFactor: 1.2),
                      Text("\$2.20",textScaleFactor: 1.2),
                      Text("1",textScaleFactor: 1.2,),
                      Text("\$0.20",textScaleFactor: 1.2),
                      Text("\$2.20",textScaleFactor: 1.2,style: TextStyle(fontSize: 16,color:(Color(0xff11B826))),),
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
                      Text("a-fee",textScaleFactor: 1.2,),
                      Text("Admin Fee",textScaleFactor: 1.2),
                      Text("\$25.00",textScaleFactor: 1.2),
                      Text("1",textScaleFactor: 1.2,),
                      Text("\$2.27",textScaleFactor: 1.2),
                      Text("\$25.00",textScaleFactor: 1.2,style: TextStyle(fontSize: 16,color:(Color(0xff11B826))),),
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
                      Text("a-Fee",textScaleFactor: 1.2,),
                      Text("Admin Fee",textScaleFactor: 1.2),
                      Text("\$14.45",textScaleFactor: 1.2),
                      Text("1",textScaleFactor: 1.2,),
                      Text("\$1.13",textScaleFactor: 1.2),
                      Text("\$14.45",textScaleFactor: 1.2,style: TextStyle(fontSize: 16,color:(Color(0xff11B826))),),
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
            child:Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Payment Method",style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w600),) ,
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SvgPicture.asset("assets/icon/card1.svg"),
                        SizedBox(width: 15,),
                        SvgPicture.asset("assets/icon/card2.svg")
                      ],
                    )

                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                          text: "Sub Total: ",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(
                                text: "\$130.65",
                                style: TextStyle(
                                    color: Color(0xff5C5C5C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400))
                          ]),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "Daily Service Fee:",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(
                                text: "\$3.30",
                                style: TextStyle(
                                    color: Color(0xff5C5C5C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400))
                          ]),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "Tax (GST 10% Incl):",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(
                                text: "\$12.30",
                                style: TextStyle(
                                    color: Color(0xff5C5C5C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400))
                          ]),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "Gift Card: ",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(
                                text: "0.0",
                                style: TextStyle(
                                    color: Color(0xff5C5C5C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400))
                          ]),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "Paid Amount:	",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(
                                text: "(0.00)",
                                style: TextStyle(
                                    color: Color(0xff5C5C5C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400))
                          ]),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "Total Due: ",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                          children: [
                            TextSpan(
                                text: "\$133.95",
                                style: TextStyle(
                                    color: Color(0xff11B826),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400))
                          ]),
                    ),
                    SizedBox(height: 30,),
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
                            "Pay Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
        ),
      ],
    );
  }
}
