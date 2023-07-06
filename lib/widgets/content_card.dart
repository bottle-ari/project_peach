import 'package:flutter/material.dart';
import 'package:project_peach/models/content.dart';
import 'content_detail.dart';

class ContentCard extends StatefulWidget {
  final Content content;

  const ContentCard(this.content,{super.key});

  @override
  State<ContentCard> createState() => _ContentCardState();
}

class _ContentCardState extends State<ContentCard> {

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return ContentDetail(widget.content);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
            image: NetworkImage(widget.content.thumbnail!), fit: BoxFit.fill),
      ),
      child: GestureDetector(
        onVerticalDragStart: (details) {
          _showBottomSheet();
        },
        child: Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.black.withOpacity(0.0)],
              stops: [0.7, 1], // 각 색상의 위치를 지정하여 강도 조절
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(25)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xFFFFA19B),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 2, right: 8, bottom: 2, top: 2),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.place,
                                color: Colors.white,
                              ),
                              Text(
                                "${3 + 2} km",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      widget.content.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.content.address,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    color: Colors.white,
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                child: Text(
                                  widget.content.category,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    color: Colors.white,
                                  ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                child: Text(
                                  widget.content.cost,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Transform.scale(
                  scale: 1.5,
                  child: const Icon(
                    Icons.keyboard_arrow_up_rounded,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      // Foreground widget here
    );
  }
}
