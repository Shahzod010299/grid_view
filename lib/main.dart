import 'package:flutter/material.dart';
import 'package:grid_view/screen/info_screen.dart';
import 'package:grid_view/utils/list_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        itemCount: getList().length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              maxCrossAxisExtent: 200),
          itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  InfoScreen(countryData: getList()[index])),
            );
          },
          child: Card(
            child: Stack(
              children: [
                  Image.network(getList()[index].countryImageUrl,fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
                Container(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(getList()[index].countryName,style: TextStyle(color: Colors.white),),
                ),color: Colors.brown.withOpacity(0.3),width: double.infinity,)
              ],
            ),
          ),
        );
      })
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
