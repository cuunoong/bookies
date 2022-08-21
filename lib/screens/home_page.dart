import 'package:bookies/components/popular_item.dart';
import 'package:bookies/components/topic_item.dart';
import 'package:bookies/datas/populars.dart';
import 'package:bookies/datas/topics.dart';
import 'package:bookies/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 24, bottom: 12),
              child: Text(
                'Topics',
                style: medium18.copyWith(color: text),
              ),
            ),
            SizedBox(
              height: 180,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  itemBuilder: ((context, index) =>
                      TopicItem(topic: topics[index])),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 16,
                      ),
                  itemCount: topics.length),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 24, bottom: 12),
              child: Text(
                'Most Popular',
                style: medium18.copyWith(color: text),
              ),
            ),
            ...populars.map((book) => PopularItem(book: book))
          ],
        )));
  }
}
