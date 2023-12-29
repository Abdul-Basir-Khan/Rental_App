import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            RichText(
              text: const TextSpan(
                  text: "Profile Completion",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                      text: "\nPlease complete your profile",
                      style: TextStyle(
                          color: Color(0xff898989),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
            ),
            Spacer(),
            SvgPicture.asset("assets/icon/left.svg"),
            SizedBox(
              width: 10,
            ),
            SvgPicture.asset("assets/icon/right.svg"),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                          text: "Welcome Joe,",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                              text: "\nGood Morning!",
                              style: TextStyle(
                                  color: Color(0xff898989),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ]),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircularStepProgressIndicator(
                      selectedColor: Color(0xff11B826),
                      unselectedColor: Color(0xffCFCFCF),
                      totalSteps: 8,
                      currentStep: 6,
                      width: 90,
                      roundedCap: (_, isSelected) => isSelected,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "60 %",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.redAccent),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Completed",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff898989)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                          text: "Email",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                              text:
                                  "\nComplete your email so, we can verify\n your profile.",
                              style: TextStyle(
                                  color: Color(0xff898989),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff083EA1),
                      ),
                      child: Text(
                        "Verify Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  RichText(
                    text: const TextSpan(
                        text: "Payment Method",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(
                            text:
                                "\nSelect your payment method so, you can\n pay your taxes.",
                            style: TextStyle(
                                color: Color(0xff898989),
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff083EA1),
                    ),
                    child: Text(
                      "Select Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Weather.png"),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Clock.png"),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SfCalendar(
                        view: CalendarView.month,
                      ),
                    ),
                    Text(
                      "Today",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.black12),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 2,
                                  height: 40,
                                  color: Color(0xffB54896),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Apple Keynote",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "Online",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "10:00-11:30",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 2,
                                  height: 40,
                                  color: Color(0xff71B548),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Design meeting",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "Video call",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "12:30-13:00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 2,
                                  height: 40,
                                  color: Color(0xff71B548),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Product meeting",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "Video call",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "15:30-16:00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 2,
                                  height: 40,
                                  color: Color(0xffB54896),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Product meeting",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "Video call",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "15:30-16:00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 290,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff2C2C2E),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/pic1.png",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Lisa Haydon",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffEBEBF5),
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/pic2.png",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Peter Herbert\nBarnaba",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffEBEBF5),
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/pic3.png",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Chris Patt",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffEBEBF5),
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/pic4.png",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Julie Roberts",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffEBEBF5),
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/pic5.png",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Kristen",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffEBEBF5),
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/pic6.png",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Julie Roberts",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffEBEBF5),
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/pic7.png",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Peter Herbert\nBarnaba",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffEBEBF5),
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/pic8.png",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Lisa Haydon",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffEBEBF5),
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/pic9.png",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Lisa Haydon",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffEBEBF5),
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/pic10.png",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Julie Roberts",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffEBEBF5),
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                height: 290,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff1A5BD6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recent Rentals",
                      style:
                          TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.w400, fontSize: 17),
                    ),
                    Expanded(
                      child: ListTile(
                        title: FittedBox(
                          child: Text(
                            "Utimate Luxury Car Rentals Pty Ltd. | LDV-RA ",
                            style: TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        subtitle: FittedBox(
                          child: Text(
                            "Start Date: May 12, 2021 | End Date: May 20, 2021",
                            style: TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        trailing: Image(
                            image: AssetImage("assets/images/rental1.png")),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: FittedBox(
                          child: Text(
                            "Simba Car Rental | LDV-RA Start Date:",
                            style: TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        subtitle: FittedBox(
                          child: Text(
                            "May 12, 2021 | End Date: May 20, 2021",
                            style: TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        trailing: Image(
                            image:
                                AssetImage("assets/images/rental2.png")),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: FittedBox(
                          child: Text(
                            "Utimate Luxury Car Rentals Pty Ltd.    |   LDV-RA",
                            style: TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        subtitle: FittedBox(
                          child: Text(
                            "Start Date: May 12, 2021 | End Date: May 20, 2021",
                            style: TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        trailing: Image(
                            image:
                                AssetImage("assets/images/rental1.png")),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: FittedBox(
                          child: Text(
                            "Simba Car Rental | LDV-RA Start Date:",
                            style: TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        subtitle: FittedBox(
                          child: Text(
                            "May 12, 2021 | End Date: May 20, 2021",
                            style: TextStyle(
                              color:Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        trailing: Image(
                            image:
                                AssetImage("assets/images/rental2.png")),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Column(
              children: [
                Container(
                  width: 324,
                    height: 95,
                    padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xffFDCE30),Color(0xffF8C109)]),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("27",style:TextStyle(color:Colors.white,fontSize:40,fontWeight: FontWeight.w600)),
                            SizedBox(width: 20,),
                            Text("Registered\nDriver",style:TextStyle(color:Colors.white,fontSize:20,fontWeight: FontWeight.w400)),
                          ],
                        ),
                ),
                SizedBox(height:10),
                Container(
                  width: 324,
                  height: 95,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xffFDCE30),
                    gradient: LinearGradient(colors: [Color(0xff0BB839),Color(0xff058527)]),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$20.02",style:TextStyle(color:Colors.white,fontSize:40,fontWeight: FontWeight.w600)),
                      SizedBox(width: 20,),
                      Text("Connect\nEarn",style:TextStyle(color:Colors.white,fontSize:20,fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffFFAB00),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 405,
                    child: Image(
                        image: AssetImage("assets/images/car_sport.png")),
                  ),
                  SizedBox(height: 10,),
                  Text("NEED TO RENT CARS?",style:TextStyle(color:Colors.white,fontSize:24,fontWeight: FontWeight.w700)),
                  SmoothPageIndicator(
                    controller:_controller,
                    count:  2,
                    axisDirection: Axis.horizontal,
                    effect:  SlideEffect(
                        spacing:  8.0,
                        radius:  4.0,
                        dotWidth:  34.0,
                        dotHeight:  12.0,
                        paintStyle:  PaintingStyle.stroke,
                        strokeWidth:  1.5,
                        dotColor:  Colors.black,
                        activeDotColor:  Colors.white
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
          ],
        ),
        SizedBox(height:10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xffDB4B3D),Color(0xffD03728)]),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle_outline_outlined,color: Colors.white,),
                      SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                            text: "Add New Rental",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                  text: "\nNew Rental",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400))
                            ]),
                      ),
                    ],
                  )
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child : Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xff3573E7),Color(0xff1A5BD6)]),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle_outline_outlined,color: Colors.white,),
                      SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                            text: "End Rental",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                  text: "\nComplete Rental",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400))
                            ]),
                      ),
                    ],
                  )
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xffDE5494),Color(0xffCF4485)]),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle_outline_outlined,color: Colors.white,),
                      SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                            text: "Start Condition Report",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                  text: "\nVehicle Condition\nReport",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400))
                            ]),
                      ),
                    ],
                  )
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xff9557F3),Color(0xff692FC2)]),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle_outline_outlined,color: Colors.white,),
                      SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                            text: "View Usage Statements",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                  text: "\nUsage Statemets",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400))
                            ]),
                      ),
                    ],
                  )
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xffFD9840),Color(0xffF07A13)]),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle_outline_outlined,color: Colors.white,),
                      SizedBox(height: 10,),
                      RichText(
                        text: const TextSpan(
                            text: "Manage Tags",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                  text: "\nTags Management",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400))
                            ]),
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}
