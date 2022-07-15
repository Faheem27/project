// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:northern_hevean/models/transportModel.dart';

class TransportDescriptionPage extends StatefulWidget {
  const TransportDescriptionPage({Key key}) : super(key: key);

  @override
  TransportTransportDescriptionPage createState() =>
      TransportTransportDescriptionPage();
}

class TransportTransportDescriptionPage
    extends State<TransportDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context).settings.arguments as TransportationModel;
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
    final args =
        ModalRoute.of(context).settings.arguments as TransportationModel;
    return Column(
      children: [
        Text(args.desc,
            textAlign: TextAlign.left, style: const TextStyle(fontSize: 16.0)),
      ],
    );
  }
}
