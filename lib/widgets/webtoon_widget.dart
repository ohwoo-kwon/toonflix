import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final WebtoonModel webtoon;

  const Webtoon({super.key, required this.webtoon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder:
                (context) => DetailScreen(
                  id: webtoon.id,
                  title: webtoon.title,
                  thumb: webtoon.thumb,
                ),
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: webtoon.id,
            child: Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: const Offset(10, 10),
                    color: Colors.black.withAlpha(70),
                  ),
                ],
              ),
              child: Image.network(
                webtoon.thumb,
                headers: const {'Referer': 'https://comic.naver.com'},
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(webtoon.title, style: const TextStyle(fontSize: 22)),
        ],
      ),
    );
  }
}
