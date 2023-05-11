import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(101, 45, 221, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: const NetworkImage(
                    "https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745"),
                radius: 120,
              ),
              const SizedBox(
                height: 15,
              ),
              button1(
                tittle: "Facebook",
                goToUrl: () {
                  print("funciona");
                },
              ),
              button1(
                tittle: "Linkedin",
                goToUrl: () {
                  print("funciona");
                },
              ),
              button1(
                tittle: "whatsapp",
                goToUrl: () {
                  print("funciona");
                },
              ),
              // button1(tittle: "whatsapp",),
              // button1(tittle: "linkedin",),
            ],
          ),
        ),
      ),
    );
  }
}

class button1 extends StatelessWidget {
  
  final String tittle;
  final VoidCallback goToUrl;

  const button1({
    required this.goToUrl,
    required this.tittle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ElevatedButton(onPressed: goToUrl, child: Text(tittle)),
    );
  }
}
