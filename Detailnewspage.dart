import 'package:flutter/material.dart';
import 'package:test1/layout/model/Getnews.dart';

class Detailnewspage extends StatelessWidget {

  final Getnews getnews;

  const Detailnewspage({Key? key, required this.getnews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: SafeArea(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
                'id: ${getnews}',
            ),
            Text('Title: ${getnews.title}'),
            const SizedBox(
              height: 20,
            ),
            const Text('Body: '),
            Text(getnews.body)
          ])),
    );
  }
}