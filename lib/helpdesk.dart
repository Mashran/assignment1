import 'package:flutter/material.dart';

class HelpdeskPage extends StatefulWidget {
  const HelpdeskPage({super.key});

  @override
  State<HelpdeskPage> createState() => _HelpdeskPageState();
}

class _HelpdeskPageState extends State<HelpdeskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("HELPDESK"),
          titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30),
          backgroundColor: Colors.blue,
        ),
        body:
        Center(
          child: GridView.count(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("assets/images/Asset1.png"),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset("assets/images/Asset2.png"),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset("assets/images/Asset3.png"),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset("assets/images/Asset4.png"),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset("assets/images/Asset5.png"),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset("assets/images/Asset6.png"),
              )
            ],
          ),
        )
    );
  }
}