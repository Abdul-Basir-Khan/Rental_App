import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TransactionTollNotices extends StatefulWidget {

  final VoidCallback ? forInvoiceDetail;
  final VoidCallback ? forOutstandingInvoice;

  const TransactionTollNotices({Key? key, this.forInvoiceDetail, this.forOutstandingInvoice}) : super(key: key);

  @override
  State<TransactionTollNotices> createState() => _TransactionTollNoticesState();
}

class _TransactionTollNoticesState extends State<TransactionTollNotices> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10, crossAxisCount: 3, childAspectRatio: 1.5),
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
                        "DR10821611195",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffFCF2E6)
                        ),
                        child: Text("Unpaid",style: TextStyle(fontSize:12 ,color: Color(0xffAA5B00),fontWeight: FontWeight.w500),),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: widget.forOutstandingInvoice,
                        child: const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xff11B826),
                        ),
                      ),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: widget.forInvoiceDetail,
                        child: const Icon(
                          Icons.credit_card_outlined,
                          color: Color(0xff083EA1),
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
                              text: "Date.: ",
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
                              text: "Bill For: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "DRIVER",
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
