import 'package:flutter/material.dart';


class SubInvoiceScreen extends StatefulWidget {
  const SubInvoiceScreen({Key? key}) : super(key: key);

  @override
  State<SubInvoiceScreen> createState() => _SubInvoiceScreenState();
}

class _SubInvoiceScreenState extends State<SubInvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Invoice"),
    );
  }
}
