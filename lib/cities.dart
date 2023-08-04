import 'package:flutter/material.dart';
import 'package:listview_builder2/citiesdatamodel.dart';

class CityImages extends StatelessWidget {
  final CitiesDataModel citiesDataModel;
  const CityImages({Key? key, required this.citiesDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "Cities",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0,left: 20,right: 20),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(citiesDataModel.images),
                  fit: BoxFit.fill
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(citiesDataModel.desc,style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
