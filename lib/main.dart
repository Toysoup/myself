import 'package:flutter/material.dart';
import 'screen2.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tooltip demo",
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("自我介紹"),),
      body: Row(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Tooltip(
              waitDuration: Duration(seconds: 1),
              showDuration: Duration(seconds: 2),
              padding: EdgeInsets.all(5),
              height: 35,
              textStyle: TextStyle(fontSize: 20, color: Colors.white),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green),
              message: '我的自介',
              child: ElevatedButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder:(context) => screen2())),
                child: Icon(Icons.account_box, size: 100,),),
            ),
          ),
        ],
      ),

    );
  }
}
