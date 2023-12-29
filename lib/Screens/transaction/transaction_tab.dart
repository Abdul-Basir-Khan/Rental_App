import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental/Screens/transaction/transaction_invoice_detail.dart';
import 'package:rental/Screens/transaction/transaction_outstanding_invoice.dart';
import 'package:rental/Screens/transaction/transaction_toll_notices.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  bool tFirstScreen = false;
  bool invoicedetail = false;
  bool outstandinginvoice = false;

  void invoiceDetail() {
    setState(() {
      invoicedetail = !invoicedetail;
      tFirstScreen = false;
      outstandinginvoice = false;
    });
  }

  void outstandingInvoice() {
    setState(() {
      outstandinginvoice = !outstandinginvoice;
      tFirstScreen = false;
      invoicedetail = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color(0xffE8E8E8)),
          ),
          child: outstandinginvoice
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Text(
                        "Outstanding invoice",
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
                              outstandinginvoice = !outstandinginvoice;
                              tFirstScreen=true;
                              invoicedetail = false;
                            });
                          },
                          child: Container(
                            height: 25,
                            width: 25,
                            child:
                            SvgPicture.asset(
                              "assets/icon/word.svg",
                              color: Color(0xff2388FF),
                            ),
                          )),
                    ])
              : invoicedetail
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Text(
                            "Outstanding invoice",
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
                                invoicedetail = !invoicedetail;
                                tFirstScreen=true;
                                outstandinginvoice = false;
                              });
                            },
                            child: Container(
                                height: 25,
                                width: 25,
                                child: Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Color(0xff11B826),
                                )),
                          ),
                        ])
                  : tFirstScreen
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              Text(
                                "Toll Notices",
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
                                    hintText: "Search...",
                                    prefixIcon: const Icon(Icons.search),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      tFirstScreen = !tFirstScreen;
                                      outstandinginvoice = false;
                                      invoicedetail = false;
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    child: SvgPicture.asset(
                                      "assets/icon/word.svg",
                                      color: Color(0xff2388FF),
                                    ),
                                  )),
                            ])
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              Text(
                                "Payment Transaction for last 60 days",
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
                                    hintText: "search By Driver",
                                    prefixIcon: const Icon(Icons.search),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      tFirstScreen = !tFirstScreen;
                                      invoicedetail = false;
                                      outstandinginvoice = false;
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    child: SvgPicture.asset(
                                      "assets/icon/word.svg",
                                      color: Color(0xff2388FF),
                                    ),
                                  )),
                            ]),
        ),
        tFirstScreen
            ? TransactionTollNotices(
                forInvoiceDetail: invoiceDetail,
                forOutstandingInvoice: outstandingInvoice,
              )
            : invoicedetail
                ? TransactionInvoiceDetailScreen()
                : outstandinginvoice
                    ? TransactionOutstandingScreen()
                    : TransactionScreenView()
      ],
    );
  }
}

class TransactionScreenView extends StatefulWidget {
  const TransactionScreenView({Key? key}) : super(key: key);

  @override
  State<TransactionScreenView> createState() => _TransactionScreenViewState();
}

class _TransactionScreenViewState extends State<TransactionScreenView> {
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
              crossAxisSpacing: 10, crossAxisCount: 3, childAspectRatio: 1.4),
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
                      Image(image: AssetImage("assets/images/tmen.png")),
                      SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Driver Demo",
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: const TextSpan(
                              text: "Search Date.: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "	2022-08-25 08:28:15",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                        Text(
                          "\$10.76",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 24),
                        )
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
