import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp Putri'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // ignore: dead_code, 
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Text('BERITA TERBARU'),
                  Text('PERTANDINGAN HARI INI'),
                ],
              )
            ]),
          ),
          Container(
            margin: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purpleAccent),
            ),
            child: Column(children: <Widget>[
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/ronaldo.jpg'),
                  ),
                ),
              ),
              Container(
                height: 45,
                alignment: Alignment.center,
                child: const Text(
                  'Costa Mendekat Ke Palmiras',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                color: Colors.purpleAccent,
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Transfer',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey)),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              "assets/images/gambar1.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Expanded(
                            child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text(
                              "Pique Bilang Wasit Untungkan Madrid, Koeman Tepuk Jidat",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Barcelona Feb 13, 2021",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 20,
            alignment: Alignment.center,
            child: const Text(
              '',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey)),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          "assets/images/gambar1.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text(
                            "Fútbol Club Barcelona, juga dikenal sebagai Barcelona atau Barça, adalah klub sepak bola profesional yang berbasis di Barcelona.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Barcelona Feb 13, 2021",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
