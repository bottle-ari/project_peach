import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_peach/models/content.dart';
import 'package:project_peach/widgets/content_detail_list_item.dart';
import 'package:project_peach/widgets/tag_text.dart';

class ContentDetail extends StatelessWidget {
  final Content content;

  const ContentDetail(this.content, {super.key});

  void _onButtonPressed() {
    // go to url
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Color(0xFFFBF7F7),
      ),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Container(
            height: 240,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4), // 그림자 색상 설정
                  offset: const Offset(-4, 0), // 그림자의 좌우 위치 조정
                  blurRadius: 4, // 그림자의 흐림 정도 설정
                  spreadRadius: 0, // 그림자의 퍼지는 정도 설정
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.4), // 그림자 색상 설정
                  offset: const Offset(4, 0), // 그림자의 좌우 위치 조정
                  blurRadius: 4, // 그림자의 흐림 정도 설정
                  spreadRadius: 0, // 그림자의 퍼지는 정도 설정
                ),
              ],
            ),
            child: Image.network(content.thumbnail!),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(25)),
                color: Colors.white,
                border: Border.all(
                  style: BorderStyle.solid,
                  color: const Color(0xFFEDEDED),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Transform.scale(
                        scale: 1.5,
                        child: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(Radius.circular(50)),
                              border: Border.all(
                                style: BorderStyle.solid,
                                color: const Color(0xFFFFA19B),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 2, right: 8, bottom: 2, top: 2),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.place_outlined,
                                    color: Color(0xFFFFA19B),
                                  ),
                                  Text(
                                    "${3 + 2} km",
                                    style: TextStyle(
                                        color: Color(0xFFFFA19B),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      content.title,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          content.address,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFF797979),
                          ),
                        ),
                        Row(
                          children: [
                            TagText(content.category),
                            const SizedBox(
                              width: 8,
                            ),
                            TagText(content.cost),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Row(
                        children: [
                          const Icon(Icons.thumb_up,
                            color: Color(0xFF18CB2A),
                            size: 18,
                          ),
                          const SizedBox(width: 5,),
                          Text(content.likedCount,
                            style: const TextStyle(
                              color: Color(0xFF18CB2A),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Color(0xFFE2E2E2),
                      thickness: 2,
                    ),
                    ContentDetailListItem(
                        property: "기간",
                        description:
                            "${content.periodFrom} ~ ${content.periodTo}"),
                    ContentDetailListItem(
                        property: "시간", description: content.time!),
                    ContentDetailListItem(
                        property: "요금", description: content.cost),
                    const ContentDetailListItem(
                        property: "문의", description: "강원도립국악관현악단"),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: TextButton(
                        onPressed: _onButtonPressed,
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFFFA19B)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            // 모양 변경
                            fixedSize: MaterialStateProperty.all(
                                const Size(1000, 60))),
                        child: const Text(
                          "바로가기",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
