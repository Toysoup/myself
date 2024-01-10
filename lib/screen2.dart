import 'package:flutter/material.dart';

class screen2 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("我的自介")),
      body: Center(
        child: Column (
          children: [
            ElevatedButton(onPressed: ()=> Navigator.of(context).pop(), child: Text("返回")),
            Text("我是張智宣,我的學號是C109151122,我來自新竹,感謝你的觀看"),
          ],
        ),
      ),
    );
  }
}