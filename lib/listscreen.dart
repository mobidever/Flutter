import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final titles = ["List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("List Screen")),
        body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/detailScreen');
                // var bottomSheetController =
                //     Scaffold.of(context).showBottomSheet((context) => Container(
                //           color: Colors.red,
                //           child: Text(titles[index]),
                //           height: 100,
                //           width: 200,
                //         ));
                //
                // bottomSheetController.closed
                //     .then((value) => {print("Sheet Closed,!! Well done")});
              },
              title: Text(titles[index]),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
              trailing: Icon(Icons.battery_full),
            ));
          },
        ));
    return const Placeholder();
  }
}
