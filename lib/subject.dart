import 'package:flutter/material.dart';

class Subject extends StatelessWidget {
  var classIndex;
 Subject(this.classIndex);
  var subjectList = [
    ['bangla', 'english', 'math'],
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
    ],
    [
      'test 1', 'test 2'
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subjects'),
      ),
      body: GridView.builder(
          itemCount: subjectList[this.classIndex].length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          padding: const EdgeInsets.all(20),
          itemBuilder:  (_, index) =>
              InkWell(
                onTap: (){
                  print('clicked ${index}');
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Subject(index) ));
                },
                child: Container(
                  height: 100,
                  child: Text(subjectList[this.classIndex][index],
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
    );
  }
}