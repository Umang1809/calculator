import 'package:flutter/material.dart';

class Mycalcy extends StatefulWidget {
  const Mycalcy({Key? key}) : super(key: key);

  @override
  State<Mycalcy> createState() => _MycalcyState();
}

class _MycalcyState extends State<Mycalcy> {
  String ans = "", blank = "", ans1 = "", anstop = "";
  double first = 0, second = 0, third = 0, temp = 0;
  int sum = 0, cnt = 0, hstry = 0, op = 0;

  void getvalue(String x) {
    ans = ans + x;
  }

  void operator(String y) {
    if (op >= 15) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.blueGrey,
            alignment: Alignment.center,
            title: Center(child: Text("Can`t Enter More Than 15 Operators")),
            elevation: 30,
            titleTextStyle: TextStyle(fontSize: 25),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Text("BACK"),
                iconSize: 80,
              )
            ],
          );
        },
      );
    }
    op++;
    if (hstry == 1) {
      anstop = "";
    }
    hstry = 0;
    double temp = first;
    first = double.parse(ans);

    anstop = anstop + ans + y;
    ans = "";

    if (cnt == 1) {
      first = first + temp;
    } else if (cnt == 2) {
      first = temp - first;
    } else if (cnt == 3) {
      first = first * temp;
    } else if (cnt == 4) {
      first = temp % first;
    }

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
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(10),
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 20, bottom: 20),
              child: Text(
                ("$anstop"),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white.withOpacity(0.2),
                ),
                maxLines: 5,
              ),
              margin: EdgeInsets.all(5),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20)),
              height: 150,
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 20, bottom: 20),
              child: Text(
                ("$ans"),
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
              margin: EdgeInsets.all(5),
            ),
            SizedBox(
              height: 30,
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
                          op = 0;
                          anstop = "";
                        });
                      },
                      child: Card(
                        elevation: 20,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              "C",
                              style: TextStyle(fontSize: 40),
                            ),
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
                      child: Card(
                        elevation: 20,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          operator("%");
                        });
                      },
                      child: Card(
                        color: Colors.black,
                        elevation: 20,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          //operator("/");
                          if (ans.length > 0) {
                            ans = ans.substring(0, ans.length - 1);
                          }
                          if (anstop.length > 0) {
                            anstop = anstop.substring(0, anstop.length - 1);
                          }
                        });
                      },
                      child: Card(
                        color: Colors.black,
                        elevation: 20,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey.shade700,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Icon(Icons.backspace_outlined)),
                        ),
                      ),
                    ),
                  )
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
                        child: Card(
                          color: Colors.black,
                          elevation: 20,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "7",
                                style: TextStyle(fontSize: 40),
                              ),
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        getvalue("8");
                      });
                    },
                    child: Card(
                      color: Colors.black,
                      elevation: 20,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "8",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  )),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("9");
                        });
                      },
                      child: Card(
                        color: Colors.black,
                        elevation: 20,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          operator("*");
                        });
                      },
                      child: Card(
                        color: Colors.black,
                        elevation: 20,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                  )
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
                      child: Card(
                        elevation: 20,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("5");
                        });
                      },
                      child: Card(
                        elevation: 20,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("6");
                        });
                      },
                      child: Card(
                        elevation: 20,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          operator("-");
                        });
                      },
                      child: Card(
                        elevation: 20,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                      child: Card(
                        elevation: 20,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("2");
                        });
                      },
                      child: Card(
                        elevation: 20,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("3");
                        });
                      },
                      child: Card(
                        elevation: 20,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          operator("+");
                        });
                      },
                      child: Card(
                        elevation: 20,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                      child: Card(
                        elevation: 20,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue("00");
                        });
                      },
                      child: Card(
                        elevation: 20,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          getvalue(".");
                        });
                      },
                      child: Card(
                        elevation: 20,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20),
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
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          hstry = 1;
                          second = double.parse(ans);
                          anstop = anstop + second.toString();
                          ans = "";

                          if (cnt == 1) {
                            ans = "${(first) + (second)}";
                            // anstop += "+";
                            // anstop = "";
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
                      child: Card(
                        elevation: 20,
                        color: Colors.black,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey.shade100,
                            borderRadius: BorderRadius.circular(20),
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
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
