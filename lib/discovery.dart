import 'package:flutter/material.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({super.key});

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  List<Map<String, dynamic>> discoveryList = [
    {
      "header": "Lunch & Dinner",
      "image": "assets/images/Asset1.png",
      "footer": "25 Places"
    },
    {
      "header": "Hotel",
      "image": "assets/images/Asset2.png",
      "footer": "48 Places"
    },
    {
      "header": "Taxi",
      "image": "assets/images/Asset3.png",
      "footer": "16 Nearby"
    },
    {
      "header": "ATM-Machine",
      "image": "assets/images/Asset4.png",
      "footer": "15 Places"
    },
    {
      "header": "WiFi Hotspot",
      "image": "assets/images/Asset5.png",
      "footer": "57 Hotspot"
    },
    {
      "header": "Drink",
      "image": "assets/images/Asset6.png",
      "footer": "65 Places"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("DISCOVERY"),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30),
        backgroundColor: Colors.green,
      ),
      body: Column(children: [
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: discoveryList.length,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)
                ),
                  child: GridTile(
                    header: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(discoveryList[index]["header"],
                        style: const TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 15),textAlign: TextAlign.center,),
                    ),
                    footer: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(discoveryList[index]["footer"],
                        textAlign: TextAlign.center,),
                    ),
                    child: Image.asset(discoveryList[index]["image"]),
                  ),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}