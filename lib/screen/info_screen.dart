import 'package:flutter/material.dart';
import 'package:grid_view/utils/list_data.dart';


class InfoScreen extends StatefulWidget {
  CountryData countryData;
  InfoScreen({Key? key, required this.countryData}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.countryData.countryName),),
      body: Column(
        children: [
          Image.network(widget.countryData.countryImageUrl)
        ],
      ),
    );
  }
}
