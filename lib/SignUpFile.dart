
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parse_assignment_app/main.dart';

void main() {
  runApp(MaterialApp(
    home: ThirdFile(),
  ));
}

class ThirdFile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN UP'),
      ),body: SingleChildScrollView(
      child: (MyHome()),
    ),
    );
  }
}

class MyHome extends StatefulWidget{

  @override
  State<MyHome> createState() => _MyHomeState();


}

class _MyHomeState extends State<MyHome>{

  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  TextEditingController textEditingController3 = TextEditingController();
  TextEditingController textEditingController4 = TextEditingController();
  TextEditingController textEditingController5 = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
   return Form(
     key: formkey,
     child: Column(
       children: [
         Padding(padding: EdgeInsets.all(20),
           child: TextFormField(
             decoration: InputDecoration(
               hintText: ('First Name'),
             ),
             validator: (value) {
               if (value == null || value.isEmpty) {
                 return 'Enter the value';
               }
               return null;
             },
             controller: textEditingController1,
           ),
         ),
         Padding(padding: EdgeInsets.all(20),
           child: TextFormField(
             decoration: InputDecoration(
                 hintText:('Last Name')
             ),
             validator: (value){
               if(value==null ||value.isEmpty){
                 return "Enter the value";
               }
               return null;
             },
             controller: textEditingController2,
           ),
         ),

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
             controller: textEditingController3,
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
             controller: textEditingController4,
           ),
         ),
         Padding(padding: EdgeInsets.all(20),
           child: TextFormField(
             decoration: InputDecoration(
                 hintText:('Confirm Password')
             ),
             validator: (value){
               if(value==null ||value.isEmpty){
                 return "Enter the value";
               }
               return null;
             },
             controller: textEditingController5,
           ),
         ),
         ElevatedButton(
             onPressed: (){
               String firstname = textEditingController1.text;
               String lastname = textEditingController2.text;
               String email = textEditingController3.text;
               String password = textEditingController4.text;
               String confirmpassword = textEditingController5.text;

               Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdFile(
                 fname : firstname,
                 lname : lastname,
                 email : email,
                 password : password,
                 cpassword : confirmpassword,
               )));
               if (formkey.currentState!.validate()) {
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content : Text('uploading...')));
               }
             },
              child: Text('SUBMIT'),
         ),
         TextButton(
             onPressed:() {
               Navigator.pop( context, MaterialPageRoute(builder: (context) => MyApp()));
             },
           child: Text('<-- GO BACK'),
         ),
       ],
     ),
   );
  }
}