import 'package:flutter/material.dart';

class RowComponent extends StatelessWidget {
  const RowComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ContainerItem1(text: "four", backgroundColor: Colors.indigo),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            minimumSize: Size(88, 36),
            padding: EdgeInsets.symmetric(horizontal: 16),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2)),
            ),
          ),
          child: const Text("hep"),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          color: Colors.blueAccent,
          child: Text(
            "My Container",
            style: TextStyle(
              backgroundColor: Colors.lightGreen,
              fontSize: 20,
              color: Colors.deepOrange,
            ),
          ),
        ),
      ],
    );
  }
}

class ColumnComponent extends StatelessWidget {
  const ColumnComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ContainerItem1(text: "One", backgroundColor: Colors.amberAccent),
        ContainerItem1(text: "Two", backgroundColor: Colors.blueAccent),
        ContainerItem1(text: "Three", backgroundColor: Colors.purpleAccent),
        RowComponent()
      ],
    );
  }
}

class ContainerItem1 extends StatelessWidget {
  final String text;
  final Color backgroundColor;

  const ContainerItem1({
    super.key,
    required this.text,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      color: backgroundColor,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            backgroundColor: Colors.lightGreen,
            fontSize: 20,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}
