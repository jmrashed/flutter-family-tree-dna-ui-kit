import 'dart:async';
import 'package:dna/subject.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Image.asset("assets/images/logo.png")
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override


     List<String> lists=
    [
      'Bangla 1st Paper',
      'Bangla 2nd Paper',
      'English 1st Paper',
      'English 2nd Paper',
      'Religion'
      'Math',
      'Physics',
      'ICT',
      'Chemistry',
      'Biology',
      'Higher Math',
      'Accounting',
      'Finance',
      'Business Entrepreneurship',
      'Agricultural Studies',
      'General Science',
      'Bangladesh and Global Studies'
    ];


  List<String> classes=
  [
    'ONE',
    'TWO',
    'THREE'
  ];
  var subjectList = [
    [ 'bangla', 'english', 'math'],
    [ 'bangla', 'english', 'test'],
    [ 'bangla', 'english', 'test 2'],
  ];

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

          title: Text("Quiz")
      ),
      body: Center(
          child: Center(
            child: GridView.builder(
                itemCount: classes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                padding: const EdgeInsets.all(20),
                itemBuilder:  (_, index) =>
                 InkWell(
                   onTap: (){
                     print('clicked ${index}');
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Subject(index) ));
                   },
                   child: Container(
                    height: 100,
                    child: Text(classes[index],
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    color: Colors.green,
                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.all(10.0),
                    alignment: Alignment.center,
                ),
                 )


            ),
          ),

      ),
    );
  }
}