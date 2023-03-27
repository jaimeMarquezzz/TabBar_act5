import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Color(0xff233a1a)),
            tabs: [
              Tab(icon: Icon(Icons.add_photo_alternate)),
              Tab(icon: Icon(Icons.account_tree)),
              Tab(icon: Icon(Icons.add_ic_call)),
              Tab(icon: Icon(Icons.add_circle)),
            ],
          ),
          centerTitle: true,
          title: Text('CFE'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.add_photo_alternate, size: 350),
            Icon(Icons.account_tree, size: 350),
            Icon(Icons.add_ic_call, size: 350),
            Icon(Icons.add_circle, size: 350),
          ],
        ),
      ),
    );
  }
}
