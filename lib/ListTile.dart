import 'package:flutter/material.dart';

class Row_inside_ListView extends StatelessWidget {
  const Row_inside_ListView(this.txt1, this.txt2, this.txt3, {this.press});
  final Function()? press;
  final String txt1;
  final String txt2;
  final String txt3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            title: Text(txt1),
            subtitle: Text(txt2),
          ),
        ),
        const SizedBox(
          width: 200,
        ),
        Expanded(
          child: ListTile(
            title: Text(txt3),
            subtitle: ElevatedButton(onPressed: press, child: Text("Buy Now")),
          ),
        ),
      ],
    );
  }
}
