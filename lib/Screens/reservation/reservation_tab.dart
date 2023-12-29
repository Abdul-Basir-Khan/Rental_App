import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental/Screens/reservation/reservation.dart';
import 'package:table_calendar/table_calendar.dart';

class ReservationCalenderScreen extends StatefulWidget {
  const ReservationCalenderScreen({Key? key}) : super(key: key);

  @override
  State<ReservationCalenderScreen> createState() => _ReservationCalenderScreenState();
}

class _ReservationCalenderScreenState extends State<ReservationCalenderScreen> {
  bool isReservation = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color(0xffE8E8E8)),
        ),
        child: isReservation?Row(
          children: [
            Text(
              "Reservations List",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),

            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Quotes",
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
                  hintText: "29/08/2022 - 29/08/2022",
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
                  hintText: "All",
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
            IconButton(
              icon: Icon(Icons.calendar_today_outlined,color: Color(0xff2388FF),),
             onPressed: () {
                setState(() {
                  isReservation=!isReservation;
                });
              },
            ),
          ],
        ) :
        Row(
          children: [
            Text(
              "Reservation Calendar",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xff083EA1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Reservations",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffE1E5F2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Manifest",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Filter by Location",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "All",
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
            Icon(
              Icons.add_circle_outline_outlined,
              color: Color(0xff2388FF),
            ),
            SizedBox(
              width: 5,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    isReservation =! isReservation;
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
            SizedBox(
              width: 5,
            ),
            InkWell(
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
                          "Help",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                      content: Container(
                        height: 250,
                        width: 476,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(15)),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xff083EA1),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text("This color on the calendar shows the total number\n of rentals that are Returning in a calendar day.")
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xff11B826),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text("This color on the calendar shows the total number\n of rentals that are Returning in a calendar day.")
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xff11B826),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text("This color on the calendar shows the total number\n of rentals that are Returning in a calendar day.")
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFF2D46),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text("This color on the calendar shows the total number\n of rentals that are Returning in a calendar day.")
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xff2388FF),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text("This color on the calendar shows the total number\n of rentals that are Returning in a calendar day.")
                              ],
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
                                  color: Color(0xffF4F4F4)),
                              padding: const EdgeInsets.all(14),
                              child: const Text(
                                "Close",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                });


              },
              child: Icon(
                Icons.help_outline_outlined,
                color: Color(0xff2388FF),
              ),
            ),
          ],
        ),
      ),
      isReservation?ReservationScreen():CalenderScreen()
    ]);
  }
}

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
              color: Color(0xffFCFCFC),
            border: Border.all(color: Color(0xffE8E8E8))
          ),

          child: TableCalendar(
            locale: "en_US",
            headerStyle: HeaderStyle(formatButtonVisible: false,),
            focusedDay: today,
            firstDay: DateTime.utc(
              2010,
              10,
              19,
            ),
            lastDay: DateTime.utc(2050, 12, 30),
          ),
        ),
      ],
    );
  }
}

