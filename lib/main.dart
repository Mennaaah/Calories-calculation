import 'package:flutter/material.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculation",
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

        // Define the default font family.
        fontFamily: 'Montserrat',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String gender;
  final FirebaseMessaging _messaging = FirebaseMessaging();

  @override
  void initState() {
    super.initState();

    _messaging.getToken().then((token) {
      print(token);
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body:
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            Center(
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Text("Are you male or female"),
              ),
              FlatButton(
                color: Colors.pinkAccent,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FemalePage(
                              title: 'Female page',
                              gender: 'female',
                            )),
                  );
                  {
                    setState(() {
                      gender = 'female';
                    });
                  }
                },
                child: Text(
                  "Female",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black54,
                  ),
                  maxLines: 1,
                ),
              ),
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FemalePage(
                              title: 'Male page',
                              gender: 'male',
                            )),
                  );
                  setState(() {
                    gender = 'male';
                  });
                },
                child: Text(
                  "Male",
                  //style: TextStyle(fontSize: 20.0),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black54,
                  ),
                  maxLines: 1,
                ),
              ),
              // //Container(
              //   //color: Colors.yellow,
              //   //child: IconButton(
              //     //iconSize: 30.0,

              //     // Use the MdiIcons class for the IconData
              //     //icon: new Icon(MdiIcons.humanFemale),
              //     //hoverColor: Colors.lightBlue,
              //     //color: Colors.black,
              //     //onPressed: () {
              //       //Navigator.push(
              //         //context,
              //         //MaterialPageRoute(
              //             //builder: (context) => FemalePage(
              //                   title: 'Female page',
              //                   gender: 'female',
              //                 )),
              //       );
              //       {
              //         setState(() {
              //           gender = 'female';
              //         });
              //       }
              //     },
              //   ),
              // ),
              // Container(
              //   color: Colors.yellow,
              //   child: IconButton(
              //     iconSize: 30.0,

              //     // Use the MdiIcons class for the IconData
              //     icon: new Icon(MdiIcons.humanMale),
              //     hoverColor: Colors.lightBlue,
              //     color: Colors.black,
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => FemalePage(
              //                   title: 'Female page',
              //                   gender: 'male',
              //                 )),
              //       );
              //       {
              //         setState(() {
              //           gender = 'male';
              //         });
              //       }
              //     },
              //   ),
              // ),
              // FlatButton(
              //   color: Colors.pinkAccent,
              //   textColor: Colors.white,
              //   disabledColor: Colors.grey,
              //   disabledTextColor: Colors.black,
              //   padding: EdgeInsets.all(8.0),
              //   splashColor: Colors.blueAccent,
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => FemalePage(
              //                 title: 'Female page',
              //                 gender: 'female',
              //               )),
              //     );
              //     {
              //       setState(() {
              //         gender = 'female';
              //       });
              //     }
              //   },
              //   child: Text(
              //     "Female",
              //     style: TextStyle(fontSize: 20.0),
              //   ),
              // ),
              // FlatButton(
              //   color: Colors.blue,
              //   textColor: Colors.white,
              //   disabledColor: Colors.grey,
              //   disabledTextColor: Colors.black,
              //   padding: EdgeInsets.all(8.0),
              //   splashColor: Colors.blueAccent,
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => FemalePage(
              //                 title: 'Male page',
              //                 gender: 'male',
              //               )),
              //     );
              //     setState(() {
              //       gender = 'male';
              //     });
              //   },
              //   child: Text(
              //     "Male",
              //     style: TextStyle(fontSize: 20.0),
              //   ),
              // ),
              // IconButton(
              //     // Use the MdiIcons class for the IconData
              //     icon: new Icon(MdiIcons.sword),
              //     color: Colors.purpleAccent,
              //     onPressed: () {
              //       print('Using the sword');
              //     })
            ],
          ),
        ));

    // floatingActionButton: FloatingActionButton(
    //   onPressed: _incrementCounter,
    //   tooltip: 'Increment',
    //   child: Icon(Icons.add),
    // ), // This trailing comma makes auto-formatting nicer for build methods.
  }
}

class FemalePage extends StatefulWidget {
  FemalePage({Key key, this.title, this.gender}) : super(key: key);

  final String title;
  final String gender;

  @override
  _FemalePageState createState() => _FemalePageState();
}

class _FemalePageState extends State<FemalePage> {
  final kilograms = TextEditingController();
  final centimeters = TextEditingController();
  final age = TextEditingController();
  int kilogramsval;
  int ageval;
  int centimererval;
  bool isButtonEnabled = true;
  double consta;
  double bmrtobe;
  String activitylvl;

  double calories_calc(double bmr, String level) {
    double calories;
    if (level == 'Little to no exercise') {
      calories = bmr * 1.2;
    } else if (level == 'Light exercise (1–3 days per week)') {
      calories = bmr * 1.375;
    } else if (level == 'Moderate exercise (3–5 days per week)') {
      calories = bmr * 1.55;
    } else if (level == 'Heavy exercise (6–7 days per week)') {
      calories = bmr * 1.725;
    } else if (level ==
        'Very heavy exercise (twice per day, extra heavy workouts)') {
      calories = bmr * 1.9;
    }
    return calories;
  }

  bool isEmpty() {
    setState(() {
      if ((kilograms.text != " ") &&
          (centimeters.text != " ") &&
          (age.text != " ") &&
          (kilograms.text != "") &&
          (centimeters.text != "") &&
          (age.text != "") &&
          activitylvl != null) {
        isButtonEnabled = true;
      } else {
        isButtonEnabled = false;
      }
    });
    return isButtonEnabled;
  }

  void initState() {
    super.initState();

    isEmpty();
  }

  double calculate(int ages, int heights, int weights, String genders) {
    double result;
    if (genders == 'female') {
      result = (10 * weights) + (6.25 * heights) - (5 * ages) - 161;
    } else if (genders == 'male') {
      result = (10 * weights) + (6.25 * heights) - (5 * ages) + 5;
    }

    return result;
  }

  String trial = "choose your level of acticity";
  //String value = 'Please choose your lvl activity';
  String textapp =
      'Your BMR will be calculated according to the following, please input them';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    textapp,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black54,
                    ),
                    maxLines: 1,
                  ),
                ),

                Row(
                  textDirection: TextDirection.ltr,
                  children: <Widget>[
                    Container(
                      width: 180,
                      child: SizedBox(
                        child: Text(
                          'Weight in kg',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black54,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      child: TextField(
                        controller: kilograms,
                        onChanged: (text) {
                          isEmpty();
                          print(text);
                          print(isButtonEnabled);
                          print(activitylvl);
                          setState(() {
                            kilogramsval = int.parse(text);
                          });
                          print("menna");

                          print(kilograms.text);
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.ltr,
                  children: <Widget>[
                    Container(
                      width: 180,
                      child: SizedBox(
                          child: Text(
                        'Height in centimeters',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black54,
                        ),
                        maxLines: 1,
                      )),
                    ),
                    Container(
                      width: 180,
                      child: TextField(
                        controller: centimeters,
                        onChanged: (text2) {
                          isEmpty();
                          print(isButtonEnabled);
                          print(text2);
                          print(activitylvl);
                          setState(() {
                            centimererval = int.parse(text2);
                          });
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.ltr,
                  children: <Widget>[
                    Container(
                      width: 180,
                      child: SizedBox(
                          child: Text(
                        'Age in years',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black54,
                        ),
                        maxLines: 1,
                      )),
                    ),
                    Container(
                      width: 180,
                      child: TextField(
                        controller: age,
                        onChanged: (text3) {
                          isEmpty();
                          print(isButtonEnabled);
                          print(activitylvl);
                          print(text3);
                          setState(() {
                            ageval = int.parse(text3);
                          });
                          print("final");
                          print(isButtonEnabled);
                          print(activitylvl);
                        },
                      ),
                    )
                  ],
                ),
                // Row(
                //   textDirection: TextDirection.ltr,
                //   children: <Widget>[
                //     Container(
                //         height: 180, child: Text('Height in centimerers')),
                //     Container(
                //       height: 180,
                //       child: TextField(
                //         onChanged: (text2) {
                //           isEmpty();
                //           print(int.parse(text2) + 3);
                //           setState(() {
                //             centimererval = int.parse(text2);
                //           });
                //         },
                //       ),
                //     )
                //   ],
                // ),
                // Row(
                //   children: <Widget>[
                //     Text('age in years'),
                //     TextField(
                //       onChanged: (text3) {
                //         isEmpty();
                //         setState(() {
                //           centimererval = int.parse(text3);
                //         });
                //       },
                //     )
                //   ],
                // ),
                // Center(
                //   child: RaisedButton(
                //     child: Text(
                //       "Calculate",
                //       style: TextStyle(color: Colors.white),
                //     ),
                //     onPressed: isButtonEnabled
                //         ? () {
                //             print("enabled");
                //             double result = calculate(ageval, centimererval,
                //                 kilogramsval, widget.gender);
                //           }
                //         : null,
                //     color: Colors.red,
                //   ),

                //   // floatingActionButton: FloatingActionButton(
                //   //   onPressed: _incrementCounter,
                //   //   tooltip: 'Increment',
                //   //   child: Icon(Icons.add),
                //   // ), // This trailing comma makes auto-formatting nicer for build methods.
                // )

                Row(
                  children: <Widget>[
                    new DropdownButton<String>(
                      items: <String>[
                        'Little to no exercise',
                        'Light exercise (1–3 days per week)',
                        'Moderate exercise (3–5 days per week)',
                        'Heavy exercise (6–7 days per week)',
                        'Very heavy exercise (twice per day, extra heavy workouts)	'
                      ].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(
                            value,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black54,
                            ),
                            maxLines: 1,
                          ),
                        );
                      }).toList(),
                      hint: Text(trial),
                      onChanged: (value) {
                        print(value);

                        setState(() {
                          value = value;
                          activitylvl = value;
                          trial = value;
                        });
                        isEmpty();
                        print(activitylvl);
                        print(isButtonEnabled);
                      },
                    )
                  ],
                ),
                Center(
                  child: RaisedButton(
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black54,
                      ),
                      maxLines: 1,
                    ),
                    onPressed: isButtonEnabled
                        ? () {
                            print("enabled");
                            bmrtobe = calculate(ageval, centimererval,
                                kilogramsval, widget.gender);
                            setState(() {
                              textapp = ('your BMR are ' + '$bmrtobe');
                              consta = calories_calc(bmrtobe, activitylvl);
                              textapp = ('your calories are ' + '$consta');
                            });
                          }
                        : null,
                    color: Colors.red,
                  ),
                )
              ]),
        ));
  }
}

//created it inorder to make it build again after choosing the value inorder to appear in the dropdown insttead of the hint text
class MyDropDown extends StatefulWidget {
  MyDropDown({
    String activitylvl,
    Key key,
  }) : super(key: key);
  //final String activitylvl;
  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String selected;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selected,
      hint: Text("Please choose your activity level"),
      items: <String>[
        'Little to no exercise',
        'Light exercise (1–3 days per week)',
        'Moderate exercise (3–5 days per week)',
        'Heavy exercise (6–7 days per week)',
        'Very heavy exercise (twice per day, extra heavy workouts)	'
      ].map((String value) {
        return new DropdownMenuItem<String>(
          value: value,
          child: new Text(value),
        );
      }).toList(),
      onChanged: (value) {
        setState(() => selected = value);
      },
    );
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'BMR calculation',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String gender;

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//         appBar: AppBar(
//           // Here we take the value from the MyHomePage object that was created by
//           // the App.build method, and use it to set our appbar title.
//           title: Text(widget.title),
//         ),
//         body:
//             // Center is a layout widget. It takes a single child and positions it
//             // in the middle of the parent.
//             Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Container(
//               child: Text("Are you male or female"),
//             ),
//             FlatButton(
//               color: Colors.pinkAccent,
//               textColor: Colors.white,
//               disabledColor: Colors.grey,
//               disabledTextColor: Colors.black,
//               padding: EdgeInsets.all(8.0),
//               splashColor: Colors.blueAccent,
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => FemalePage(
//                             title: 'Female page',
//                             gender: 'female',
//                           )),
//                 );
//                 {
//                   setState(() {
//                     gender = 'female';
//                   });
//                 }
//               },
//               child: Text(
//                 "Female",
//                 style: TextStyle(fontSize: 20.0),
//               ),
//             ),
//             FlatButton(
//               color: Colors.blue,
//               textColor: Colors.white,
//               disabledColor: Colors.grey,
//               disabledTextColor: Colors.black,
//               padding: EdgeInsets.all(8.0),
//               splashColor: Colors.blueAccent,
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => FemalePage(
//                             title: 'Male page',
//                             gender: 'male',
//                           )),
//                 );
//                 setState(() {
//                   gender = 'male';
//                 });
//               },
//               child: Text(
//                 "Male",
//                 style: TextStyle(fontSize: 20.0),
//               ),
//             ),
//           ],
//         ));

//     // floatingActionButton: FloatingActionButton(
//     //   onPressed: _incrementCounter,
//     //   tooltip: 'Increment',
//     //   child: Icon(Icons.add),
//     // ), // This trailing comma makes auto-formatting nicer for build methods.
//   }
// }

// class FemalePage extends StatefulWidget {
//   FemalePage({Key key, this.title, this.gender}) : super(key: key);

//   final String title;
//   final String gender;

//   @override
//   _FemalePageState createState() => _FemalePageState();
// }

// class _FemalePageState extends State<FemalePage> {
//   final kilograms = TextEditingController();
//   final centimeters = TextEditingController();
//   final age = TextEditingController();
//   int kilogramsval;
//   int ageval;
//   int centimererval;
//   bool isButtonEnabled = true;

//   double bmrtobe;

//   bool isEmpty() {
//     setState(() {
//       if ((kilograms.text != " ") &&
//           (centimeters.text != " ") &&
//           (age.text != " ") &&
//           (kilograms.text != "") &&
//           (centimeters.text != "") &&
//           (age.text != "")) {
//         isButtonEnabled = true;
//       } else {
//         isButtonEnabled = false;
//       }
//     });
//     return isButtonEnabled;
//   }

//   void initState() {
//     super.initState();

//     isEmpty();
//   }

//   double calculate(int ages, int heights, int weights, String genders) {
//     double result;
//     if (genders == 'female') {
//       result = (10 * weights) + (6.25 * heights) - (5 * ages) - 161;
//     } else if (genders == 'male') {
//       result = (10 * weights) + (6.25 * heights) - (5 * ages) + 5;
//     }

//     return result;
//   }

//   String textapp =
//       'Your BMR will be calculated according to the following, please input them';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
//         body: Container(
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Container(
//                   child: Text(textapp),
//                 ),

//                 Row(
//                   textDirection: TextDirection.ltr,
//                   children: <Widget>[
//                     Container(
//                       width: 180,
//                       child: SizedBox(child: Text('Weight in kg')),
//                     ),
//                     Container(
//                       width: 180,
//                       child: TextField(
//                         controller: kilograms,
//                         onChanged: (text) {
//                           isEmpty();
//                           print(text);
//                           print(isButtonEnabled);
//                           setState(() {
//                             kilogramsval = int.parse(text);
//                           });
//                           print("menna");

//                           print(kilograms.text);
//                         },
//                       ),
//                     )
//                   ],
//                 ),
//                 Row(
//                   textDirection: TextDirection.ltr,
//                   children: <Widget>[
//                     Container(
//                       width: 180,
//                       child: SizedBox(child: Text('Height in centimeters')),
//                     ),
//                     Container(
//                       width: 180,
//                       child: TextField(
//                         controller: centimeters,
//                         onChanged: (text2) {
//                           isEmpty();
//                           print(text2);
//                           setState(() {
//                             centimererval = int.parse(text2);
//                           });
//                         },
//                       ),
//                     )
//                   ],
//                 ),
//                 Row(
//                   textDirection: TextDirection.ltr,
//                   children: <Widget>[
//                     Container(
//                       width: 180,
//                       child: SizedBox(child: Text('Age in years')),
//                     ),
//                     Container(
//                       width: 180,
//                       child: TextField(
//                         controller: age,
//                         onChanged: (text3) {
//                           isEmpty();
//                           print(text3);
//                           setState(() {
//                             ageval = int.parse(text3);
//                           });
//                           print("final");
//                           print(isButtonEnabled);
//                         },
//                       ),
//                     )
//                   ],
//                 ),
//                 // Row(
//                 //   textDirection: TextDirection.ltr,
//                 //   children: <Widget>[
//                 //     Container(
//                 //         height: 180, child: Text('Height in centimerers')),
//                 //     Container(
//                 //       height: 180,
//                 //       child: TextField(
//                 //         onChanged: (text2) {
//                 //           isEmpty();
//                 //           print(int.parse(text2) + 3);
//                 //           setState(() {
//                 //             centimererval = int.parse(text2);
//                 //           });
//                 //         },
//                 //       ),
//                 //     )
//                 //   ],
//                 // ),
//                 // Row(
//                 //   children: <Widget>[
//                 //     Text('age in years'),
//                 //     TextField(
//                 //       onChanged: (text3) {
//                 //         isEmpty();
//                 //         setState(() {
//                 //           centimererval = int.parse(text3);
//                 //         });
//                 //       },
//                 //     )
//                 //   ],
//                 // ),
//                 // Center(
//                 //   child: RaisedButton(
//                 //     child: Text(
//                 //       "Calculate",
//                 //       style: TextStyle(color: Colors.white),
//                 //     ),
//                 //     onPressed: isButtonEnabled
//                 //         ? () {
//                 //             print("enabled");
//                 //             double result = calculate(ageval, centimererval,
//                 //                 kilogramsval, widget.gender);
//                 //           }
//                 //         : null,
//                 //     color: Colors.red,
//                 //   ),

//                 //   // floatingActionButton: FloatingActionButton(
//                 //   //   onPressed: _incrementCounter,
//                 //   //   tooltip: 'Increment',
//                 //   //   child: Icon(Icons.add),
//                 //   // ), // This trailing comma makes auto-formatting nicer for build methods.
//                 // )

//                 Center(
//                     child: Column(children: <Widget>[
//                   RaisedButton(
//                     child: Text(
//                       "Calculate",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     onPressed: isButtonEnabled
//                         ? () {
//                             print("enabled");
//                             bmrtobe = calculate(ageval, centimererval,
//                                 kilogramsval, widget.gender);
//                             setState(() {
//                               textapp = ('your BMR are ' + '$bmrtobe');
//                             });
//                           }
//                         : null,
//                     color: Colors.red,
//                   ),
//                   RaisedButton(
//                     child: Text(
//                       "Back",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     color: Colors.red,
//                   ),
//                 ]))
//               ]),
//         ));
//   }
// }
