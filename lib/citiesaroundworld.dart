import 'package:flutter/material.dart';
import 'package:listview_builder2/cities.dart';
import 'package:listview_builder2/citiesdatamodel.dart';

class AroundWorld extends StatefulWidget {
  const AroundWorld({Key? key}) : super(key: key);

  @override
  State<AroundWorld> createState() => _AroundWorldState();
}

class _AroundWorldState extends State<AroundWorld> {
  static List name = [
    'Delhi',
    'London',
    'Vancouver',
    'New York',
    'Barcelona',
    'Tokyo'
  ];
  static List images = [
    "images/delhi.jpeg",
    "images/london.jpeg",
    "images/vancouver.webp",
    "images/new york.jpeg",
    "images/barcelona.jpeg",
    "images/tokyo.jpeg"
  ];
  static List desc = ['India', 'Britain', 'Canada', 'USA', 'Spain', 'Japan'];
  static List subdesc = [
    'Population:19 Mill',
    'Population:8 Mill',
    'Population:2.4 Mill',
    'Population:8.1 Mill',
    'Population:16.2 lakh',
    'Population:1.4 crores'
  ];
  final List<CitiesDataModel> citynames = List.generate(
      name.length,
      (index) => CitiesDataModel('${name[index]}', '${images[index]}',
          '${desc[index]}', '${subdesc[index]}'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Cities Around World',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: citynames.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ListTile(
                    title: Text(
                      citynames[index].name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    leading: Container(
                      width: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(citynames[index].images),
                              fit: BoxFit.cover)),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          citynames[index].desc,
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          citynames[index].subdesc,
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (CityImages(
                                    citiesDataModel: citynames[index],
                                  ))));
                    },
                  ),
                ),
              ),
            );
          }),
    );
  }
}
