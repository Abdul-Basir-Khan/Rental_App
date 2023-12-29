import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Reports",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Poppins",
                  color: Colors.black87,
                  fontWeight: FontWeight.w600),
            ),
            Spacer(),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Color(0xffF9FAFC),
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          ),
          child: Row(
            children: [
              Text(
                "Debt Report",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Spacer(),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
          ),
          child: Image(
            image: AssetImage("assets/images/graph1.png"),
          ),
        ),
      ],
    );
  }
}