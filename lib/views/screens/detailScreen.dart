// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:northern_hevean/models/detailScreenModel.dart';

class MoreDetailScreen extends StatefulWidget {
  const MoreDetailScreen({Key key}) : super(key: key);

  @override
  State<MoreDetailScreen> createState() => _MoreDetailScreenState();
}

class _MoreDetailScreenState extends State<MoreDetailScreen> {
  List<DetailScreenImageModel> imageList = [];

  Future<void> getDetailImage() async {
    imageList.add(DetailScreenImageModel(1, 'assets/hotel1.jpg'));
    imageList.add(DetailScreenImageModel(1, 'assets/hotel2.jpg'));
    imageList.add(DetailScreenImageModel(1, 'assets/hotel3.jpg'));
    imageList.add(DetailScreenImageModel(1, 'assets/hotel4.jpg'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail & Booking'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Expanded(
                child: SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    return Image(image: AssetImage('${imageList[index]}'));
                  }),
            )),
            FractionallySizedBox(
                widthFactor: 1,
                child:
                    ElevatedButton(onPressed: () {}, child: const Text('Book')))
          ],
        ));
  }
}
