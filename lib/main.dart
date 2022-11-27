import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Your Secure System'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranCozunurluk = MediaQuery.of(context);
    final double ekranYukseklik = ekranCozunurluk.size.height;
    final double ekranGenisligi = ekranCozunurluk.size.width;

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: ekranYukseklik / 40),
                child: SizedBox(
                  width: ekranGenisligi / 3,
                  child: Image.asset("assets/images/logo.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYukseklik / 20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "UserName",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: ekranYukseklik / 134,
                    left: ekranYukseklik / 20,
                    right: ekranYukseklik / 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "PassWord",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYukseklik / 34),
                child: SizedBox(
                  width: ekranGenisligi / 1.34,
                  height: ekranYukseklik / 12,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Login Button Pushed");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: ekranGenisligi / 24,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("SignUP a basıldı");
                },
                child: Text(
                  "Sing UP",
                  style: TextStyle(
                      color: Colors.white38,
                      fontSize: ekranGenisligi/34
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
