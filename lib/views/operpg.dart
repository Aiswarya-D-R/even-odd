import 'package:flutter/material.dart';

class Operpg extends StatefulWidget {
  @override
  _OperpgState createState() => _OperpgState();
}

class _OperpgState extends State<Operpg> {
  TextEditingController numbercontroller = TextEditingController();
  String msg = "????";
  int num;

  void _check() {
    if (num % 2 == 0) {
      msg = "EVEN";
    } else {
      msg = "ODD";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/backgrd.jpeg"),
        fit: BoxFit.fill,
      )),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 175.0,
            ),
            Container(
              //margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0)),
              ),
              height: MediaQuery.of(context).size.height - 175,
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //SizedBox(height: 15.0,),
                    Text(
                      "ODD OR EVEN",
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    TextField(
                      controller: numbercontroller,
                      decoration: InputDecoration(
                        hintText: "Enter Number",
                        labelText: "Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: Icon(Icons.format_list_numbered),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        // print("HI");
                        setState(() {
                          num = int.parse(numbercontroller.text);
                          print(num);
                          _check();
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.black,
                              Colors.green,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 50.0,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            "CHECK",
                            style:
                                TextStyle(fontSize: 25.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.green,
                          ],
                        ),
                      ),
                      height: 50.0,
                      child: Center(
                          child: Text(
                        "NUMBER IS " + msg,
                        style: TextStyle(fontSize: 25.0, color: Colors.white),
                      )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
