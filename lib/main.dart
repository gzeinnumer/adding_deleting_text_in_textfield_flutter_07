import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MyTextInput(),
  ));
}

class MyTextInput extends StatefulWidget{
  @override
  MyTextInputState createState() => new MyTextInputState();
}

class MyTextInputState extends State<MyTextInput>{
  final TextEditingController controller = new TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Masukan Text"),
          backgroundColor: Colors.deepOrange,
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(
                    hintText: "Ketik disini"
                  ),
                  onSubmitted: (String str){
                    setState(() {
                      result = result + "\n" + str;
                    });
                    controller.text="";
                  },
                  controller: controller,
                ),
                new Text(result)
              ],
            ),
          ),
        ),
    );
  }
}