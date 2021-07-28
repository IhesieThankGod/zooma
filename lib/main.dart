import 'package:flutter/material.dart';
import 'package:zooma/secondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final PageController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Everyone is tired we wanna go home....");
    controller = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    print("ohdfsdknvs kmvb");
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          child: PageView.builder(
            controller: controller,
            itemBuilder: (context, i) {
              return SecondScreen(i, controller);
            },
            itemCount: 3,
          ),
        ),
      ),
    );
  }
}
