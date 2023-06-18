import 'package:flutter/material.dart';
import 'cart.dart';
import 'ListTile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Expanded(
              child: AlertDialog(
            title: Text("Congratulations! You've bought 5 !"),
            content: Text("Do you want to delete"),
          ));
        });
  }

  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;
  int counter4 = 0;
  int counter5 = 0;
  int counter6 = 0;
  int counter7 = 0;
  int counter8 = 0;
  int bought = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CartPage(bought)));
        },
        child: Icon(Icons.shopping_cart),
      ),
      appBar: AppBar(
        title: Text("Product List"),
        centerTitle: true,
      ),

      //using ListView
      body: ListView(
        children: [
          Row_inside_ListView(
            "Product1",
            "Price\$20.00",
            "Counter:$counter1",
            press: () {
              counter1 += 1;
              bought += 1;
              setState(() {});
              if (counter1 == 5) {
                MyAlertDialog(context);
              }
            },
          ),
          Row_inside_ListView(
            "Product2",
            "Price\$20.00",
            "Counter:$counter2",
            press: () {
              counter2 += 1;
              bought += 1;
              setState(() {});
              if (counter2 == 5) {
                MyAlertDialog(context);
              }
            },
          ),
          Row_inside_ListView(
            "Product3",
            "Price\$20.00",
            "Counter:$counter3",
            press: () {
              counter3 += 1;
              bought += 1;
              setState(() {});
              if (counter3 == 5) {
                MyAlertDialog(context);
              }
            },
          ),
          Row_inside_ListView(
            "Product4",
            "Price\$20.00",
            "Counter:$counter4",
            press: () {
              counter4 += 1;
              bought += 1;
              setState(() {});
              if (counter4 == 5) {
                MyAlertDialog(context);
              }
            },
          ),
          Row_inside_ListView(
            "Product5",
            "Price\$20.00",
            "Counter:$counter5",
            press: () {
              counter5 += 1;
              bought += 1;
              setState(() {});
              if (counter5 == 5) {
                MyAlertDialog(context);
              }
            },
          ),
          Row_inside_ListView(
            "Product6",
            "Price\$20.00",
            "Counter:$counter6",
            press: () {
              counter6 += 1;
              bought += 1;
              setState(() {});
              if (counter6 == 5) {
                MyAlertDialog(context);
              }
            },
          ),
          Row_inside_ListView(
            "Product7",
            "Price\$20.00",
            "Counter:$counter7",
            press: () {
              counter7 += 1;
              bought += 1;
              setState(() {});
              if (counter7 == 5) {
                MyAlertDialog(context);
              }
            },
          ),
          Row_inside_ListView(
            "Product8",
            "Price\$20.00",
            "Counter:$counter8",
            press: () {
              counter8 += 1;
              bought += 1;
              setState(() {});
              if (counter8 == 5) {
                MyAlertDialog(context);
              }
            },
          ),
        ],
      ),
    );
  }
}

//  children: [
//           Row(
//             children: [Icon(Icons.add)],
//           ),
//         ],

// ListTile(
//             title: Text("Product1"),
//             subtitle: Text("\$10.00"),
//           ),
