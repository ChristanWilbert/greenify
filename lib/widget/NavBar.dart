import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
    required this.setpageIndex,
    required this.getpageIndex,
  });
  final Function(int) setpageIndex;
  final int Function() getpageIndex;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 50,
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: RotatedBox(
                quarterTurns: -1,
                child: TextButton(
                  onPressed: () {
                    widget.setpageIndex(0);
                  },
                  child: Text(
                    "HOME",
                    style: TextStyle(
                      color: (widget.getpageIndex() == 0)
                          ? Colors.white
                          : Color.fromARGB(255, 56, 55, 55),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        (widget.getpageIndex() == 0)
                            ? Colors.black
                            : Color(0xff151515)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: RotatedBox(
                quarterTurns: -1,
                child: TextButton(
                  onPressed: () {
                    widget.setpageIndex(1);
                  },
                  child: Text(
                    "DEVICE",
                    style: TextStyle(
                      color: (widget.getpageIndex() == 1)
                          ? Colors.white
                          : Color.fromARGB(255, 56, 55, 55),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        (widget.getpageIndex() == 1)
                            ? Colors.black
                            : Color(0xff151515)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: RotatedBox(
                quarterTurns: -1,
                child: TextButton(
                  onPressed: () {
                    widget.setpageIndex(2);
                  },
                  child: Text(
                    "SUGGESTIONS",
                    style: TextStyle(
                      color: (widget.getpageIndex() == 2)
                          ? Colors.white
                          : Color.fromARGB(255, 56, 55, 55),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        (widget.getpageIndex() == 2)
                            ? Colors.black
                            : Color(0xff151515)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: RotatedBox(
                quarterTurns: -1,
                child: TextButton(
                  onPressed: () {
                    widget.setpageIndex(3);
                  },
                  child: Text(
                    "STATS",
                    style: TextStyle(
                      color: (widget.getpageIndex() == 3)
                          ? Colors.white
                          : Color.fromARGB(255, 56, 55, 55),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        (widget.getpageIndex() == 3)
                            ? Colors.black
                            : Color(0xff151515)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
