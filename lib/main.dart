import 'package:flutter/material.dart';

import 'SecondFile.dart';

void main(){
  runApp(
      MaterialApp(
          home:MyApp()));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN IN '),
      ),
      body:MyCustomForm(),
    );
  }
}
class MyCustomForm extends StatefulWidget {

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {

  TextEditingController textEditingController6 = TextEditingController();
  TextEditingController textEditingController7 = TextEditingController();

  @override

  final formkey = GlobalKey <FormState> ();
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child:Column(
        children: [

          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText:('Email')
              ),
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Enter the value";
                }
                return null;

              },
              controller: textEditingController6,
            ),
          ),

          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText:('Password')
              ),
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Enter the value";
                }
                return null;

              },
              controller: textEditingController7,
            ),
          ),

          ElevatedButton(onPressed: (){

            String email = textEditingController6.text;
            String text = textEditingController7.text;
            Navigator.push(context, MaterialPageRoute
              (builder: (context) =>SecondFile(
                text2: text ,
                text3: email)));
          },
              child: Text('LOGIN'),
          ),

        ],
      ),
    );
  }
}