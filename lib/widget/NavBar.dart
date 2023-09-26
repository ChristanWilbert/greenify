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
        width: 32,
        color: Colors.transparent,
        child: Column(
          children: [
            Expanded(
              child: RotatedBox(
                quarterTurns: -1,
                child: TextButton(
                  onPressed: () {
                    widget.setpageIndex(0);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        (widget.getpageIndex() == 0)
                            ? Colors.transparent
                            : const Color(0xff151515)),
                  ),
                  child: Text(
                    "HOME",
                    style: TextStyle(
                      color: (widget.getpageIndex() == 0)
                          ? Colors.white
                          : const Color.fromARGB(255, 56, 55, 55),
                    ),
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
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        (widget.getpageIndex() == 1)
                            ? Colors.transparent
                            : const Color(0xff151515)),
                  ),
                  child: Text(
                    "DEVICE",
                    style: TextStyle(
                      color: (widget.getpageIndex() == 1)
                          ? Colors.white
                          : const Color.fromARGB(255, 56, 55, 55),
                    ),
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
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        (widget.getpageIndex() == 2)
                            ? Colors.transparent
                            : Color(0xff151515)),
                  ),
                  child: Text(
                    "SUGGESTIONS",
                    style: TextStyle(
                      color: (widget.getpageIndex() == 2)
                          ? Colors.white
                          : const Color.fromARGB(255, 56, 55, 55),
                    ),
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
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        (widget.getpageIndex() == 3)
                            ? Colors.transparent
                            : const Color(0xff151515)),
                  ),
                  child: Text(
                    "STATS",
                    style: TextStyle(
                      color: (widget.getpageIndex() == 3)
                          ? Colors.white
                          : const Color.fromARGB(255, 56, 55, 55),
                    ),
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
