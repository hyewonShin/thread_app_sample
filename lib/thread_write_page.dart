import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThreadWritePage extends StatelessWidget {
  const ThreadWritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: Get.back,
          behavior: HitTestBehavior.translucent,
          child: Center(
            child: Text(
              '취소',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Text('새로운 스레드'),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.more_horiz,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/profile_image.png',
                  width: 50,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Kimsungduck',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff262626),
                        ),
                      ),
                      TextField(
                        cursorHeight: 16,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: '새로운 소식이 있나요?',
                          hintStyle: TextStyle(
                            color: Color(0xff9a9a9a),
                            fontSize: 14,
                          ),
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 50),
                Expanded(
                  child: SizedBox(
                    height: 250,
                    child: PageView(
                      padEnds: false,
                      controller: PageController(viewportFraction: 0.4),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Stack(children: [
                              Container(
                                color: Colors.grey.shade200,
                              ),
                              Positioned(
                                right: 5,
                                top: 5,
                                child: Icon(Icons.close),
                              )
                            ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Stack(children: [
                              Container(
                                color: Colors.grey.shade200,
                              ),
                              Positioned(
                                right: 5,
                                top: 5,
                                child: Icon(Icons.close),
                              )
                            ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Stack(children: [
                              Container(
                                color: Colors.grey.shade200,
                              ),
                              Positioned(
                                right: 5,
                                top: 5,
                                child: Icon(Icons.close),
                              )
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 60),
                GestureDetector(
                    child:
                        Image.asset('assets/images/photo_icon.png', width: 30)),
                SizedBox(width: 10),
                GestureDetector(
                    child:
                        Image.asset('assets/images/photo_icon.png', width: 30)),
                SizedBox(width: 10),
                GestureDetector(
                    child:
                        Image.asset('assets/images/gif_icon.png', width: 30)),
                SizedBox(width: 10),
                GestureDetector(
                    child:
                        Image.asset('assets/images/mic_icon.png', width: 30)),
                SizedBox(width: 10),
                GestureDetector(
                    child:
                        Image.asset('assets/images/align_icon.png', width: 30)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
