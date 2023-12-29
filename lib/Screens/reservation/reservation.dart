import 'package:flutter/material.dart';


class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 20,),
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
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Color(0xffF9FAFC),
                      borderRadius:
                      BorderRadius.vertical(top: Radius.circular(15)),
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "#54566",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          const Spacer(),
                          InkWell(

                            child: const Icon(
                              Icons.remove_red_eye_outlined,
                              color: Color(0xff11B826),
                            ),
                          ),
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
                        RichText(
                          text: const TextSpan(
                              text: "Start Date.: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "2022-08-25 08:28:15",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                        SizedBox(height: 10,),
                        RichText(
                          text: const TextSpan(
                              text: "End Date: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "08/04/2016 09:00",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                        SizedBox(height: 10,),
                        RichText(
                          text: const TextSpan(
                              text: "Driver Details: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "	N/A",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                        SizedBox(height: 10,),
                        RichText(
                          text: const TextSpan(
                              text: "Location: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "N/A",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
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
