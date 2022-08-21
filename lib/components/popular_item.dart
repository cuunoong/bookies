import 'package:bookies/models/book.dart';
import 'package:bookies/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class PopularItem extends StatelessWidget {
  final Book book;
  const PopularItem({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, bottom: 12, right: 24),
      height: 178,
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xFFF6F8FA)),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(13)),
              child: Image.asset(book.image),
            ),
            const SizedBox(
              width: 16,
            ),
            Flexible(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  style: medium16.copyWith(color: text),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  book.topic,
                  style: regular14.copyWith(color: textSecondary),
                ),
              ],
            )),
            SizedBox(
              width: 36,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white),
                    child: const Icon(
                      FeatherIcons.heart,
                      size: 16,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
