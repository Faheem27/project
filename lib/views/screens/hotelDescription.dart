// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:northern_hevean/models/hotelsModel.dart';

class HotelDescriptionPage extends StatefulWidget {
  const HotelDescriptionPage({Key key}) : super(key: key);

  @override
  _HotelDescriptionPageState createState() => _HotelDescriptionPageState();
}

class _HotelDescriptionPageState extends State<HotelDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as HotelModel;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              iconTheme: const IconThemeData(color: Colors.white),
              backgroundColor: Colors.green,
              pinned: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(args.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic)),
                background: Image.asset(
                  args.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(10.0),
              sliver: SliverToBoxAdapter(
                child: buildDescription(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDescription() {
    final args = ModalRoute.of(context).settings.arguments as HotelModel;
    return Column(
      children: [
        Text(args.desc,
            textAlign: TextAlign.left, style: const TextStyle(fontSize: 16.0)),
        const SizedBox(
          height: 10.0,
        ),
        FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () {
                Navigator.popAndPushNamed(context, '/moreDetailScreen');
              },
              child: const Text('More Detail'),
            ))
      ],
    );
  }
}
