import 'package:flutter/material.dart';

class DeviceCard extends StatefulWidget {
  const DeviceCard({super.key});

  @override
  State<DeviceCard> createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33),
        color: const Color(0xff151515),
        border: Border.all(
          color: const Color(0xff292F39),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(85, 12, 12, 165),
            child: Container(
              width: 53,
              height: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: const Color(0xff3FD604),
                border: Border.all(
                  color: const Color(0xff292F39),
                ),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "2QTY",
                  style: TextStyle(
                      color: Color(0xff043600),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Helevetica"),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 39, 86, 124),
            child: Image.asset(
              "assets/images/Vector.png",
              width: 40,
              height: 37,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 84, 41, 101),
            child: Text("Air Conditioner",
                style: TextStyle(
                  color: Color(0xffEEF1F4),
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Helevetica",
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(42, 114, 43, 66),
            child: Container(
              width: 65,
              height: 20.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: const Color(0xff151515),
                border: Border.all(
                  color: const Color(0xff292F39),
                ),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "1.5 TON",
                  style: TextStyle(
                    color: Color(0xff9BA5B7),
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 148, 7, 8),
            child: Container(
              width: 135,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xffEEF1F4),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: const Color(0xff292F39),
                ),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text("1500W",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Helevetica",
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
