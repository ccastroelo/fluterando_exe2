import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.fromLTRB(12, 16, 12, 16),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Row(
            children: [
              Expanded(child: Container()),
              Expanded(child: Image.asset('assets/imagens/logo.png')),
              Expanded(child: Container()),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Get your Money\nUnder Control",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 34, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Manager your expenses",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white38,
                fontWeight: FontWeight.w500),
          ),
          const Text(
            "Seamlessly",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white38,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 60,
          ),
          const EmailLoginButton(),
          const SizedBox(
            height: 12,
          ),
          const GoogleLoginButton(),
          SizedBox(
            height: 40,
          ),
          RichText(
            text: const TextSpan(
                text: "Already have an account? ",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: "Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      )),
                ]),
          ),
          SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      padding: const EdgeInsets.all(14),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: 18,
              height: 18,
              child: Image.asset('assets/imagens/google-logo.png')),
          const SizedBox(
            width: 8,
          ),
          const Text(
            "Sign Up with Google",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class EmailLoginButton extends StatelessWidget {
  const EmailLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff5e5ce5),
          border: Border.all(
            color: const Color(0xff5e5ce5),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      alignment: Alignment.center,
      padding: EdgeInsets.all(14),
      width: double.infinity,
      child: const Text(
        "Sign Up with Email ID",
        style: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }
}
