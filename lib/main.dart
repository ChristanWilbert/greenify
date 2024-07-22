import 'package:flutter/material.dart';
import 'package:greenify/provider/device_provider.dart';
import 'package:greenify/widget/home/splashscreen1.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => DeviceProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashContainer(), //App(),
      debugShowCheckedModeBanner: false,
      title: "Greenify by Wilbro Green Energy",
    );
  }
}
