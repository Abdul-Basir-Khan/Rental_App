import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DriverNotificationScreen extends StatefulWidget {
  const DriverNotificationScreen({Key? key}) : super(key: key);

  @override
  State<DriverNotificationScreen> createState() => _DriverNotificationScreenState();
}

class _DriverNotificationScreenState extends State<DriverNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All SMS sent to Sam John",
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
                    width: 10,
                  ),
                  Text("Total Cost: \$0", style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 18),)
                ]),
          ),
        GridView.builder(
        shrinkWrap: true,
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20, crossAxisCount: 3, childAspectRatio: 1.8),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Est hac non scelerisque mi,\n nibh. Nisl metus, tellus egestas sem erat\n pellentesque turpis semper pharetra.",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),),
                    ),
                    SizedBox(height: 10,),
                    Text("Dec 21, 2022", style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14),),
                  ],
                ),
              ),

            ],
          );
        }
    ),
      ],
    );
  }
}


