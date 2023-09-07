import 'package:flutter/material.dart';
import 'package:greenify/widget/NavBar.dart';
import 'package:greenify/widget/selectedDevices.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final List<Widget> page = [
    Column(
      children: const [
        Text(
          "Home",
          style: TextStyle(color: Colors.white70),
        ),
      ],
    ),
    const SelectedDevices(),
    Column(
      children: const [
        Text("page 3"),
      ],
    ),
    Column(
      children: const [
        Text(
          "Comming Soon!!",
          style: TextStyle(color: Colors.white70),
        ),
      ],
    ),
  ];
  int _pageIndex = 0;
  void _setpageIndex(int val) {
    setState(() {
      _pageIndex = val;
    });
  }

  int _getpageIndex() {
    return _pageIndex;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0x000c0c0c),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: page[_pageIndex],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavBar(
                    setpageIndex: _setpageIndex, getpageIndex: _getpageIndex),
              ],
            )
          ],
        ),
      ),
    );
  }
}
