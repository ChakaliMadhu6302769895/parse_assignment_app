
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdFile extends StatelessWidget{

  late final fname;
   final lname;
   final email;
   final password;
   final cpassword;

  ThirdFile({this.fname,this.lname,this.email,this.password,this.cpassword});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('USER DATA '),
      ),
      body:   Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(fname),
            Text(lname),
            Text(email),
            Text(password),
            Text(cpassword),
          ],
        ),
      ),
    );
  }
}