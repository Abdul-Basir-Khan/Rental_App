import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental/Screens/assets/add_asset.dart';

class AssetScreen extends StatefulWidget {
  const AssetScreen({Key? key}) : super(key: key);

  @override
  State<AssetScreen> createState() => _AssetScreenState();
}

class _AssetScreenState extends State<AssetScreen> {
  bool addAsset = false;


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
          child:
              addAsset?  Row(
    children: [
    Text(
    "Assets List",
    style:
    TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
    ),
    Spacer(),
    InkWell(onTap: (){
      setState(() {
        addAsset=!addAsset;
      });
    },
        child: Icon(Icons.remove_red_eye_outlined,color: Color(0xff11B826),)),
    ],
    ) :
          Row(
            children: [
              Text(
                "Assets List",
                style:
                TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              Spacer(),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Icon(Icons.qr_code_2_outlined,color: Color(0xff2388FF),),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    addAsset=!addAsset;
                  });
                },
                  child: InkWell(child: Icon(Icons.add_circle_outline_outlined,color: Color(0xff2388FF),))),
            ],
          ),
        ),
        addAsset?AddAssetScreen():AssetViewScreen()
      ],
    );
  }
}


class AssetViewScreen extends StatefulWidget {
  const AssetViewScreen({Key? key}) : super(key: key);

  @override
  State<AssetViewScreen> createState() => _AssetViewScreenState();
}

class _AssetViewScreenState extends State<AssetViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
      GridView.builder(
      shrinkWrap: true,
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10, crossAxisCount: 3, childAspectRatio: 0.9),
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
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                ),
                child: Row(
                  children: [
                    const Text(
                      "001",
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
                  ],
                ),
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
                    Container(
                        height:120,
                        width:100,
                        child: const Image(image: AssetImage("assets/images/car.png"))),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          RichText(
                            text: const TextSpan(
                                text: "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Velit\n auctor a, ornare sed.",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(
                                      text: "Level 1, 5 George North\n Strathfield NSW 2137, AUSTRALIA",
                                      style: TextStyle(
                                          color: Color(0xff5C5C5C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400))
                                ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("\$10.76",style: TextStyle(
                              color: Color(0xff00AEEF),
                              fontSize: 24,
                              fontWeight: FontWeight.w600),),
                        ],
                      ),
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
