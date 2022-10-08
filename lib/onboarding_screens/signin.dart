import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Text('Sign In',   style: GoogleFonts.lora(fontSize: 32, fontWeight: FontWeight.bold),)),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Write your Email'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              labelText: 'Enter your Email',
            ),
          ),
        ),



        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                labelText: 'Password',
                suffixIcon: Icon(Icons.visibility)
            ),
          ),
        ),


        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: Colors.green,

              ),


              onPressed: () {

            }, child: Text("Sign In") ),
          ),
        ),
        Center(child: Text("-----OR------")),
        Center(child: Text("Already have an account? ")),
      ],
    ),
    
    );
  }
}
