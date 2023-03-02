import 'package:flutter/material.dart';

class gst_calculator extends StatefulWidget {
  const gst_calculator({Key? key}) : super(key: key);

  @override
  State<gst_calculator> createState() => _gst_calculatorState();
}

class _gst_calculatorState extends State<gst_calculator> {
  String prs = "";
  String AC = "";
  List k=[Colors.black12,Colors.deepOrange];
  int a=0,b=0,c=0,d=0,e=0;
  dynamic ans=0,p=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Container(
            height: 40,
            width: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "ORIGINAL PRICE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "$prs Rs",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 80,
            width: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Center(
                    child: Text(
                      "GST",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        b=0;
                        c=0;
                        d=0;
                        e=0;
                        p=int.parse(prs)*3/100;
                        setState(() {
                          ans=int.parse(prs)+p;
                          a=1;
                        });
                      },
                        child: cal(3,k[a])),
                    InkWell(onTap: (){
                      a=0;
                      c=0;
                      d=0;
                      e=0;

                      p=int.parse(prs)*5/100;
                      setState(() {
                        ans=int.parse(prs)+p;
                        b=1;
                      });
                    },
                        child: cal(5,k[b])),
                    InkWell(onTap: (){
                      b=0;
                      a=0;
                      d=0;
                      e=0;
                      p=int.parse(prs)*12/100;
                      setState(() {
                        ans=int.parse(prs)+p;
                        c=1;
                      });
                    },
                        child: cal(12,k[c])),
                    InkWell(onTap: (){
                      b=0;
                      c=0;
                      a=0;
                      e=0;
                      p=int.parse(prs)*18/100;
                      setState(() {
                        ans=int.parse(prs)+p;
                        d=1;
                      });
                    },
                        child: cal(18,k[d])),
                    InkWell(onTap: (){
                      b=0;
                      c=0;
                      d=0;
                      a=0;
                      p=int.parse(prs)*28/100;
                      setState(() {
                        ans=int.parse(prs)+p;
                        e=1;
                      });
                    },
                        child: cal(28,k[e])),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 40,
            width: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "FINAL PRICE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "$ans Rs",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 80,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Center(
                    child: Text(
                      "CGST/SGST",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Center(
                    child: Text(
                      "25",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        prs = prs + "7";
                      });
                    },
                    child: error("7"),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        prs = prs + "4";
                      });
                    },
                    child: error("4"),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        prs = prs + "1";
                      });
                    },
                    child: error("1"),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        prs = prs + "00";
                      });
                    },
                    child: error(00),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        prs = prs + "8";
                      });
                    },
                    child: error("8"),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        prs = prs + "5";
                      });
                    },
                    child: error("5"),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        prs = prs + "2";
                      });
                    },
                    child: error("2"),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        prs = prs + "00";
                      });
                    },
                    child: error("00"),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        prs = prs + "9";
                      });
                    },
                    child: error("9"),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        prs = prs + "6";
                      });
                    },
                    child: error("6"),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        prs = prs + "3";
                      });
                    },
                    child: error("3"),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        prs = prs + ".";
                      });
                    },
                    child: error("."),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        prs = "";
                        AC = "";
                        a=0;b=0;c=0;d=0;e=0;
                      });
                    },
                    child: Center(
                      child: Container(
                        height: 200,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Text(
                            "AC",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              letterSpacing: 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        prs=prs.substring(0,prs.length-1);
                      });
                    },
                    child: Center(
                      child: Container(
                        height: 200,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Icon(Icons.backspace_outlined, color: Colors.black,size: 18,)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),);
  }
}

Widget cal( int i, Color a) {
  return Container(
    height: 40,
    width: 100,

    decoration: BoxDecoration(   color: a,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Center(
      child: Text("$i%",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
    ),
  );
}

Widget error(n) {
  return Container(
    height: 100,
    width: 100,
    child: Center(
      child: Text(
        "$n",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  );
}