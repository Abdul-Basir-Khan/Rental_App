import 'package:flutter/material.dart';


class VehicleQrScreen extends StatefulWidget {
  const VehicleQrScreen({Key? key}) : super(key: key);

  @override
  State<VehicleQrScreen> createState() => _VehicleQrScreenState();
}

class _VehicleQrScreenState extends State<VehicleQrScreen> {
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      shrinkWrap: true,
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10, crossAxisCount: 3, childAspectRatio: 2.4),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(20),
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.circular(15),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("DB24CZ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                  Spacer(),
                 Container(
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Color(0xff2388FF)
                   ),
                   child: Center(
                     child: Text("Dymo Print",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                   ),
                 )
                ]
              ),
            ),
          ],
        );
      },
    );
  }
}
