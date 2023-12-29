import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental/Screens/information/add_new_ticket.dart';


class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  bool isAddNewTicket=false;
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
            child: isAddNewTicket?
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add New Ticket",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins",
                        color: Colors.black87,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  InkWell(
                      onTap: () {
                        setState(() {
                          isAddNewTicket=!isAddNewTicket;
                        });

                      },
                      child: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Color(0xff11B826),
                      )),
                ]):Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Ticket",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins",
                        color: Colors.black87,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  InkWell(
                      onTap: () {
                        setState(() {
                          isAddNewTicket=!isAddNewTicket;
                        });

                      },
                      child: Icon(
                        Icons.add_circle_outline_outlined,
                        color: Color(0xff11B826),
                      )),
                ])
        ),
        isAddNewTicket? AddNewTicketScreen():SupportView()
      ],
    );
  }
}


class SupportView extends StatefulWidget {
  const SupportView({Key? key}) : super(key: key);

  @override
  State<SupportView> createState() => _SupportViewState();
}

class _SupportViewState extends State<SupportView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10, crossAxisCount: 3, childAspectRatio: 0.9),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xffE8E8E8)),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Color(0xffF9FAFC),
                      borderRadius:
                      BorderRadius.vertical(top: Radius.circular(15)),
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DR10821611195",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffFCF2E6)
                            ),
                            child:Text(
                              "UnPaid",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xffAA5B00)
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                              child:
                              SvgPicture.asset("assets/icon/document.svg")),
                        ]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(35),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(15)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "Subject: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "Bonnet Repair",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "Type: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "New",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "Last Repair: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "Sabin Sharetaa",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "Last Activity: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "2020-11-11",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

