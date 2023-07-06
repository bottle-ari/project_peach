import 'dart:developer';

import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';

import '../../../models/content.dart';
import '../../../widgets/content_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color cardColor = Colors.transparent;
  double swipeProgress = 0.0;

  // 임시 content data
  List<Content> contents = [
    Content(
      title: "'나한, 마음이 이르는 얼굴' 특별전",
      thumbnail:
          "https://www.mcst.go.kr/attachFiles/cultureInfoCourt/monthServ/1688369786975.jpg",
      contentID: "1",
      category: "전시",
      cost: "무료",
      periodFrom: "2023.07.05.",
      periodTo: "2023.08.10.",
      time: "화요일(19:30)",
      location: "위도 & 경도",
      address: "서울 | 국립극장 달오름극장",
      likedCount: "1,202",
    ),
    Content(
      title: "illusive sound 2023 展 - the first illusion",
      thumbnail:
          "https://www.mcst.go.kr/attachFiles/cultureInfoCourt/monthServ/1688368830886.jpg",
      contentID: "1",
      category: "전시",
      cost: "무료",
      periodFrom: "2023.07.05.",
      periodTo: "2023.08.10.",
      time: "화요일(19:30)",
      location: "위도 & 경도",
      address: "서울 | 국립극장 달오름극장",
      likedCount: "1,202",
    ),
    Content(
      title: "양산시립합창단 정기연주회",
      thumbnail:
          "https://www.mcst.go.kr/attachFiles/cultureInfoCourt/monthServ/1687484806112.jpg",
      contentID: "1",
      category: "전시",
      cost: "무료",
      periodFrom: "2023.07.05.",
      periodTo: "2023.08.10.",
      time: "화요일(19:30)",
      location: "위도 & 경도",
      address: "서울 | 국립극장 달오름극장",
      likedCount: "1,202",
    ),
    Content(
      title: "TRAVEL IS BACK",
      thumbnail:
          "https://www.mcst.go.kr/attachFiles/cultureInfoCourt/monthServ/1688002842042.jpg",
      contentID: "1",
      category: "전시",
      cost: "무료",
      periodFrom: "2023.07.05.",
      periodTo: "2023.08.10.",
      time: "화요일(19:30)",
      location: "위도 & 경도",
      address: "서울 | 국립극장 달오름극장",
      likedCount: "1,202",
    ),
    Content(
      title: "2023 이응노미술관 아트랩대전 양승원",
      thumbnail:
          "https://www.mcst.go.kr/attachFiles/cultureInfoCourt/monthServ/1686702156425.jpg",
      contentID: "1",
      category: "전시",
      cost: "무료",
      periodFrom: "2023.07.05.",
      periodTo: "2023.08.10.",
      time: "화요일(19:30)",
      location: "위도 & 경도",
      address: "서울 | 국립극장 달오름극장",
      likedCount: "1,202",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF7F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBF7F7),
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.ac_unit_rounded,
                  color: Color(0xFFFFA19B),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Paech",
                  style: TextStyle(
                    color: Color(0xFFFFA19B),
                  ),
                ),
              ],
            ),
            Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.75,
        child: AppinioSwiper(
          backgroundCardsCount: 1,
          swipeOptions: const AppinioSwipeOptions.symmetric(horizontal: true),
          unlimitedUnswipe: true,
          unswipe: _unswipe,
          onSwiping: (AppinioSwiperDirection direction) {
            debugPrint(direction.toString());
            if (direction == AppinioSwiperDirection.left) {
              cardColor = Colors.red;
            } else if (direction == AppinioSwiperDirection.right) {
              cardColor = Colors.green;
            }
          },
          onSwipe: _swipe,
          padding: EdgeInsets.symmetric(horizontal: 10),
          onEnd: _onEnd,
          cardsCount: contents.length,
          //candidates.length,
          cardsBuilder: (BuildContext context, int index) {
            double opacity = (swipeProgress - 0.5).abs() * 2;

            return Stack(children: [
              ContentCard(contents[index]),
            ]);
          },
        ),
      ),
    );
  }

  void _swipe(int index, AppinioSwiperDirection direction) {
    log("the card was swiped to the: " + direction.name);
  }

  void _unswipe(bool unswiped) {
    if (unswiped) {
      log("SUCCESS: card was unswiped");
    } else {
      log("FAIL: no card left to unswipe");
    }
  }

  void _onEnd() {
    log("end reached!");
  }
}
