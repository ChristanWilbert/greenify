import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenify/computations/MonthlyConsumption.dart';
import 'package:greenify/models/device_class.dart';
import 'package:greenify/provider/device_provider.dart';
import 'package:provider/provider.dart';

class Suggestion extends StatefulWidget {
  const Suggestion({super.key});

  @override
  State<Suggestion> createState() => _SuggestionState();
}

class _SuggestionState extends State<Suggestion> {
  int gridType = 1;
  final List offGridPros = [
    "Independent and self-sufficient",
    "Back-up power during powercuts",
    "Environmentally friendly",
    "Assured Bill Reduction over lifetime of the solar power plant"
  ];
  final List onGridPros = [
    "Earn more on excess electricity generated",
    "Cost effective with no battery replacement costs",
    "Environmentaly friendly",
    "Assured Bill Reduction over lifetime of the solar power plant"
  ];
  final List offGridCons = [
    "Surplus energy production could go to waste",
    "High battery replacement costs"
  ];
  final List onGridCons = [
    "No power during blackouts",
    "Grid regulations and limits"
  ];
  @override
  Widget build(BuildContext context) {
    List<Device> devices = context.read<DeviceProvider>().selectedDevices;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "Recommended",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: "HelveticaReg",
              fontWeight: FontWeight.w700,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1, 6),
                  blurRadius: 9.0,
                  color: Color.fromARGB(255, 56, 42, 42),
                ),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(6),
            height: (MediaQuery.of(context).size.height * .88 > 700)
                ? MediaQuery.of(context).size.height * .88
                : 700,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                  bottomLeft: Radius.circular(53),
                  bottomRight: Radius.circular(53)), // Set border radius here
              color: Color.fromARGB(204, 23, 23, 23),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: FilledButton(
                          style: const ButtonStyle(
                            padding:
                                MaterialStatePropertyAll(EdgeInsets.all(29)),
                            backgroundColor: MaterialStatePropertyAll(
                              Color(0xff0a3734),
                            ),
                          ),
                          onPressed: () {},
                          child: SizedBox(
                            height: 75,
                            child: Column(
                              children: [
                                const Text(
                                  "Recommended Power Plant",
                                  style: TextStyle(
                                      color: Color(0XFFA7EFEB),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Helvetica",
                                      fontSize: 12),
                                ),
                                Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      (MonthlyConsumption(devices) ~/ 4)
                                          .toString(),
                                      style: const TextStyle(
                                          color: Color(0XFFA7F2ED),
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "HelveticaReg",
                                          fontSize: 46),
                                    ),
                                    const Text(
                                      "kW",
                                      style: TextStyle(
                                          color: Color(0XFFA7F2ED),
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "HelveticaReg",
                                          fontSize: 36),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .42 < 200
                          ? MediaQuery.of(context).size.width * .42
                          : 250,
                      height: MediaQuery.of(context).size.width * .42 < 200
                          ? MediaQuery.of(context).size.width * .42
                          : 150,
                      child: Card(
                        color: Color.fromARGB(203, 255, 106, 32),
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        margin: const EdgeInsets.all(4),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 5),
                                    child: Image.asset(
                                      "assets/images/vector2.png",
                                      height: 39,
                                      width: 39,
                                    ),
                                  ),
                                  const Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 15.0),
                                      child: Text(
                                        "Daily\nEnergy\nConsumption",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        softWrap: true,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  MonthlyConsumption(devices).toString(),
                                  style: const TextStyle(
                                    fontFamily: "Helvetica",
                                    fontSize: 36,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text(
                                  "units",
                                  style: TextStyle(
                                    fontFamily: "Helvetica",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .42 < 200
                          ? MediaQuery.of(context).size.width * .42
                          : 250,
                      height: MediaQuery.of(context).size.width * .42 < 200
                          ? MediaQuery.of(context).size.width * .42
                          : 150,
                      child: Card(
                        color: Color.fromARGB(207, 33, 210, 39),
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        margin: const EdgeInsets.all(4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 10, top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 15),
                                    child: Image.asset(
                                      "assets/images/vector3.png",
                                      height: 39,
                                      width: 39,
                                    ),
                                  ),
                                  const Flexible(
                                      child: Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Text(
                                      "Daily\nEnergy\nGeneration",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      softWrap: true,
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ))
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  ((MonthlyConsumption(devices) ~/ 4) * 4)
                                      .toString(),
                                  style: const TextStyle(
                                    fontFamily: "Helvetica",
                                    fontSize: 36,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text(
                                  "units",
                                  style: TextStyle(
                                    fontFamily: "Helvetica",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: gridType == 0
                                ? const AssetImage("assets/images/bg5.png")
                                : const AssetImage("assets/images/bg6.png"))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  gridType = 0;
                                });
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 6, 15, 6),
                                margin: const EdgeInsets.only(
                                    right: 0, top: 5, left: 7),
                                decoration: gridType == 1
                                    ? const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/gridbg.png"),
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    : BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        color: const Color(0xff97dfda)),
                                child: Text(
                                  "ON-GRID",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: gridType == 0
                                        ? Colors.black
                                        : const Color(0xff97DFDA),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  gridType = 1;
                                });
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 5, 15, 5),
                                margin: const EdgeInsets.only(
                                    right: 5, top: 6, left: 0),
                                decoration: gridType == 0
                                    ? const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/gridbg.png"),
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    : BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        color: const Color(0xff97dfda)),
                                child: Text(
                                  "OFF-GRID",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: gridType == 1
                                        ? Colors.black
                                        : const Color(0xff97DFDA),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, right: 15),
                              child: Image.asset(
                                "assets/images/vector1.png",
                                height: 35,
                                width: 35,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                "PROS",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Helvetica",
                                  fontSize: 20,
                                  color: Color.fromARGB(88, 72, 255, 243),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: (gridType == 1)
                                ? offGridPros.map((e) {
                                    return posPoint(e);
                                  }).toList()
                                : onGridPros.map((e) {
                                    return posPoint(e);
                                  }).toList(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                "CONS",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Helvetica",
                                  fontSize: 20,
                                  color: Color.fromARGB(88, 72, 255, 243),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: (gridType == 1)
                                ? offGridCons.map((e) {
                                    return negPoint(e);
                                  }).toList()
                                : onGridCons.map((e) {
                                    return negPoint(e);
                                  }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

Widget posPoint(e) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset("assets/images/tick.png"),
      ),
      Flexible(
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0, bottom: 4),
          child: Text(
            e,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 13,
                color: const Color.fromARGB(183, 181, 250, 245)),
          ),
        ),
      ),
    ],
  );
}

Widget negPoint(e) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset("assets/images/redcross.png"),
      ),
      Flexible(
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0, bottom: 4),
          child: Text(
            e,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 13,
                color: const Color.fromARGB(183, 181, 250, 245)),
          ),
        ),
      ),
    ],
  );
}
