import 'package:dna/onboarding_screens/signin.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignIn(),
                  ));
            },
            child: const loadLogo(image: "assets/images/logo.png",)),
      ),
    );
  }
}

class loadLogo extends StatelessWidget {
  const loadLogo({
    Key? key, required this.image
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, height: 200,width: 200,);
  }
}
