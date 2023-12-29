import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CarporateView extends StatefulWidget {
   final VoidCallback ? forUpdate;
   final VoidCallback ? forEdit;
  const CarporateView({
  super.key,  this.forUpdate,  this.forEdit,
  });
  @override
  State<CarporateView> createState() => _CarporateViewState();
}

class _CarporateViewState extends State<CarporateView> {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10, crossAxisCount: 3, childAspectRatio: 1.2),
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
                      "LDV-RA",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: widget.forEdit,
                      child: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Color(0xff11B826),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: widget.forUpdate,
                      child: SvgPicture.asset("assets/icon/edit.svg",
                          color: const Color(0xff2388FF)),
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
                    const Image(image: AssetImage("assets/images/A.png")),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          RichText(
                            text: const TextSpan(
                                text: "Corporate: ",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(
                                      text: "Ultimate Luxury Cars \n Pty Ltd",
                                      style: TextStyle(
                                          color: Color(0xff5C5C5C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400))
                                ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: const TextSpan(
                                text: "Start Date: ",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(
                                      text: "May-28-2021",
                                      style: TextStyle(
                                          color: Color(0xff5C5C5C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),),
                                ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: const TextSpan(
                                text: "End Date: ",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(
                                      text: "June-28-21",
                                      style: TextStyle(
                                          color: Color(0xff5C5C5C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400))
                                ]),
                          ),
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
    );
  }
}