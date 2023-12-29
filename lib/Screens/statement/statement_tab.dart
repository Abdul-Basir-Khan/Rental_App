import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental/Screens/statement/admin_summary.dart';
import 'package:rental/Screens/statement/fleet_summary.dart';

class StatementScreen extends StatefulWidget {
  const StatementScreen({Key? key}) : super(key: key);

  @override
  State<StatementScreen> createState() => _StatementScreenState();
}

class _StatementScreenState extends State<StatementScreen> {
  bool forfleetsummary = false;
  bool foradminsummary = false;

  void forFleet() {
    setState(() {
      forfleetsummary = !forfleetsummary;
      foradminsummary = false;
    });
  }

  void forAdmin() {
    setState(() {
      foradminsummary = !foradminsummary;
      forfleetsummary = false;
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
          child: forfleetsummary
              ? Row(
                  children: [
                    Text(
                      "Your account statement period 01/09/2022 - 30/09/2022",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    Spacer(),
                    Icon(
                      Icons.email_outlined,
                      color: Color(0xff2388FF),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          forfleetsummary = !forfleetsummary;
                          foradminsummary = false;
                        });
                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        child: SvgPicture.asset(
                          "assets/icon/word.svg",
                          color: Color(0xff2388FF),
                        ),
                      ),
                    ),
                  ],
                )
              : foradminsummary
                  ? Row(
                      children: [
                        Text(
                          "Your account statement period 01/09/2022 - 30/09/2022",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        Spacer(),
                        Icon(
                          Icons.email_outlined,
                          color: Color(0xff2388FF),
                        ),
                        SizedBox(width: 20,),
                        InkWell(
                          onTap: () {
                            setState(() {
                              forfleetsummary = false;
                              foradminsummary =!foradminsummary;
                            });
                          },
                          child: Container(
                            height: 25,
                            width: 25,
                            child: SvgPicture.asset(
                              "assets/icon/word.svg",
                              color: Color(0xff2388FF),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        Text(
                          "Monthly Statements",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Filter by Month & Year",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Month",
                              suffixIcon: const Icon(Icons.arrow_drop_down),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Year",
                              suffixIcon: const Icon(Icons.arrow_drop_down),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.search,color: Color(0xff2388FF),),
                      ],
                    ),
        ),
        foradminsummary
            ? AdminSummaryScreen()
            : forfleetsummary
                ? FleetSummarySCreen()
                : MonthlyStatementScreen(
                    forAdminSummary: forAdmin,
                    forFleetSummary: forFleet,
                  )
      ],
    );
  }
}

class MonthlyStatementScreen extends StatefulWidget {
  final VoidCallback? forFleetSummary;
  final VoidCallback? forAdminSummary;
  const MonthlyStatementScreen(
      {Key? key, this.forFleetSummary, this.forAdminSummary})
      : super(key: key);

  @override
  State<MonthlyStatementScreen> createState() => _MonthlyStatementScreenState();
}

class _MonthlyStatementScreenState extends State<MonthlyStatementScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 12,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10, crossAxisCount: 3, childAspectRatio: 2.2),
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
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xffE1FCEF)
                            ),
                            child:Text(
                              "Invoice Paid",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xff14804A)
                              ),
                            ),
                          ),
                         Spacer(),
                          InkWell(
                            onTap: widget.forFleetSummary,
                            child: const Icon(
                              Icons.remove_red_eye_outlined,
                              color: Color(0xff11B826),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: widget.forAdminSummary,
                            child: const Icon(
                              Icons.remove_red_eye_outlined,
                              color: Color(0xff083EA1),
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(15)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        RichText(
                          text: const TextSpan(
                              text: "Date Issued: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: "2022-08",
                                    style: TextStyle(
                                        color: Color(0xff5C5C5C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                        Spacer(),
                        Expanded(child: InkWell(
                          onTap: (){
                            setState(() {
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: Container(
                                    height: 50,
                                    width: 476,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(15)),
                                      color: Color(0xffF9FAFC),
                                    ),
                                    child: Text(
                                      "Send Email",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                  ),
                                  content: Container(
                                    height: 320,
                                    width: 476,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(15)),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Statement Of",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: "Fleet",
                                            suffixIcon:
                                            const Icon(Icons.arrow_drop_down,color: Colors.black,),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Recipient Name",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: "Recipient Name",
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Recipient email address",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: "Recipient email address",
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    Center(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.of(ctx).pop();
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                              color: Color(0xff083EA1)),
                                          padding: const EdgeInsets.all(14),
                                          child: const Text(
                                            "Send Email",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                            );
                          },
                            child: Icon(Icons.email_outlined,color: Color(0xff00AEEF),))),
                        SizedBox(width: 10,),
                        Text(
                          "Email PDF",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Color(0xff00AEEF)
                          ),
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
