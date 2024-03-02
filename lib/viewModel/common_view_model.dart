import 'package:flutter/material.dart';

class CommonViewModel{

  showSnackBar(String message, BuildContext context){
    final snackBar = SnackBar(content: Text(message,style: const TextStyle(fontSize: 16),), backgroundColor: Colors.purple,);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}