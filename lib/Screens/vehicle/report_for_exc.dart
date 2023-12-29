import 'package:flutter/material.dart';


class ReportForExcScreen extends StatefulWidget {
  const ReportForExcScreen({Key? key}) : super(key: key);

  @override
  State<ReportForExcScreen> createState() => _ReportForExcScreenState();
}

class _ReportForExcScreenState extends State<ReportForExcScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
      GridView.builder(
      shrinkWrap: true,
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10, crossAxisCount: 3, childAspectRatio: 1.7),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color(0xffE8E8E8)),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Color(0xffF9FAFC),
                  borderRadius:
                  BorderRadius.vertical(top: Radius.circular(15)),
                ),
                child: Row(children: [
                  const Text(
                    "ENX04M",
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
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(15)),
                ),
                child:  RichText(
                  text: const TextSpan(
                      text: "Report Date: ",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                            text:
                            "2022-08-25 08:28:15",
                            style: TextStyle(
                                color: Color(0xff5C5C5C),
                                fontSize: 14,
                                fontWeight: FontWeight.w400))
                      ]),
                ),
              ),
            ],
          ),
        );
      },
    )
      ],
    );
  }
}
