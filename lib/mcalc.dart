import 'package:flutter/material.dart';

class Mycalcy extends StatefulWidget {
  const Mycalcy({Key? key}) : super(key: key);

  @override
  State<Mycalcy> createState() => _MycalcyState();
}

class _MycalcyState extends State<Mycalcy> {
  String ans = "", blank = "", ans1 = "";
  double first = 0, second = 0, third = 0, temp = 0;
  int sum = 0, cnt = 0;

  void getvalue(String x) {
    ans = ans + x;
  }

  void operator(String y) {
    double temp = first;
    first = double.parse(ans);
    if (cnt == 1) {
      first = first + temp;
    } else if (cnt == 2) {
      first = temp - first;
    } else if (cnt == 3) {
      first = first * temp;
    } else if (cnt == 4) {
      first = temp % first;
    }

    ans = "";

    if (y == "+") {
      cnt = 1;
    } else if (y == "-") {
      cnt = 2;
    } else if (y == "*") {
      cnt = 3;
    } else if (y == "/") {
      cnt = 4;
    } else if (y == "%") {
      cnt = 5;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Calculator 2.0.0")),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              alignment: Alignment.bottomRight,
              child: Text(
                ("$ans"),
                style: TextStyle(fontSize: 50),
              ),
              margin: EdgeInsets.all(5),
            ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      hoverColor: Colors.black,
                      onTap: () {
                        setState(() {
                          ans = " ";
                          ans1 = blank;
                          sum = 0;
                          temp = 0;
                          first = 0;
                          second = 0;
                          cnt = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.orange,
                        ),
                        child: Center(
                          child: Text(
                            "C",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          operator("()");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "( )",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          operator("%");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "%",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          operator("/");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "/",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("7");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "7",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("8");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "8",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("9");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "9",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          operator("*");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "*",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("4");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "4",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("5");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "5",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("6");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "6",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          operator("-");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("1");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("2");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("3");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          operator("+");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("0");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "0",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("00");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "00",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue(".");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            ".",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          second = double.parse(ans);

                          ans = "";

                          if (cnt == 1) {
                            ans = "${(first) + (second)}";
                          } else if (cnt == 2) {
                            ans = "${(first) - (second)}";
                          } else if (cnt == 3) {
                            ans = "${(first) * (second)}";
                          } else if (cnt == 4) {
                            ans = "${(first) / (second)}";
                          } else if (cnt == 5) {
                            ans = "${(first) * (second) / 100}";
                          }
                          cnt = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(
                            "=",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // TextButton(
            //     onPressed: () {
            //       print("====TextButton");
            //     },
            //     child: Text("I Am TextButton")),
            // ElevatedButton.icon(
            //     onPressed: () {},
            //     icon: Icon(Icons.search),
            //     label: Text("Search"))
          ],
        ));
  }
}
