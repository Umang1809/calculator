import 'package:calculator/mcalc.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class spleshscreen extends StatefulWidget {
  const spleshscreen({Key? key}) : super(key: key);

  @override
  State<spleshscreen> createState() => _spleshscreenState();
}

class _spleshscreenState extends State<spleshscreen> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    forNavigate();
  }

  void forNavigate() {
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return Mycalcy();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Lottie.asset("animation/calculator.json"),
      ),
    );
  }
}
