import 'package:flutter/material.dart';

main() {
  runApp(MyApp());

  ;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key, this.alert});
  final alert;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add  corse",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(padding: EdgeInsets.all(30)),
        Container(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Center(
                      child: Container(
                          child: Image.network(
                        "https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg",
                        fit: BoxFit.cover,
                      )),
                    )),
              )
            ],
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(),
          onPressed: () {},
          child: Text(
            "Show Alert",
            style: TextStyle(color: Color.fromARGB(255, 235, 239, 244)),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(),
          onPressed: () {
            AlertDialog alert = AlertDialog(
              
              
              );
          },
          child: Text(
            "Settings",
            style: TextStyle(color: Color.fromARGB(255, 235, 239, 244)),
          ),
        ),
      ]),
    );
  }
}
