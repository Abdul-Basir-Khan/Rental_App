import 'package:flutter/material.dart';

class SubCustomerScreen extends StatefulWidget {
  const SubCustomerScreen({Key? key}) : super(key: key);

  @override
  State<SubCustomerScreen> createState() => _SubCustomerScreenState();
}

class _SubCustomerScreenState extends State<SubCustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Customer"),
    );
  }
}
