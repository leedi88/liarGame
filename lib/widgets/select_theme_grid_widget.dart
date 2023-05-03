import 'package:flutter/material.dart';

class SelectThemeGridWidget extends StatefulWidget {
  const SelectThemeGridWidget({
    super.key,
    required this.onSelectTheme,
  });

  final VoidCallback onSelectTheme;

  @override
  State<SelectThemeGridWidget> createState() => _SelectThemeGridWidgetState();
}

class _SelectThemeGridWidgetState extends State<SelectThemeGridWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black12,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 6,
            childAspectRatio: 1 / 0.8,
          ),
          itemCount: themeItem.length,
          itemBuilder: (context, index) => Card(
            margin: const EdgeInsets.all(8),
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey,
              ),
              child: TextButton(
                onPressed: widget.onSelectTheme,
                child: Text(
                  themeItem[index],
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final themeItem = [
  "백화점아울렛",
  "MBTI",
  "빵",
  "아시안푸드",
  "올림픽",
  "백화점브랜드",
  "투자",
  "과일",
  "제철음식",
  "축구",
  "수산시장",
  "아이스크림할인점",
  "포켓몬",
  "BTS",
  "유럽여행",
  "LOL",
  "화장품",
  "봉지과자",
  "맥주",
  "군대용어",
  "아이들장난감",
  "추억의불량식품",
  "TV프로그램",
  "브랜드치킨"
];
