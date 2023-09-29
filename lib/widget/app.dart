import 'package:flutter/material.dart';
import 'package:greenify/widget/NavBar.dart';
import 'package:greenify/widget/home.dart';
import 'package:greenify/widget/selectedDevices.dart';
import 'package:greenify/widget/suggestion/suggestion.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final List<Widget> page = [
    const Home(),
    const SelectedDevices(),
    const Suggestion(),
    Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Comming Soon!!",
            style: TextStyle(color: Colors.white70),
          ),
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
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/homebg.png"),
              fit: BoxFit.cover,
              opacity: 0.6,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: page[_pageIndex],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavBar(
                      setpageIndex: _setpageIndex, getpageIndex: _getpageIndex),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
