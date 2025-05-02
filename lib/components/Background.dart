import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    // return ElevatedButton.icon(
    //     icon: Icon(Icons.mail, color: Colors.blueAccent,size: 20),
    //     onPressed: (){print("Hello");},
    //     label: Text("Send me")
    // );
    // return Image.network("https://images.unsplash.com/photo-1745552383962-c555a920229c?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
    return Container(
      child: Image.asset("images/photo-2.jpg"),
      padding: EdgeInsets.all(50),
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 30),
      color: Colors.green,
    );
  }
}
