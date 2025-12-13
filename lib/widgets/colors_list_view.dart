import 'package:flutter/material.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors =const [
    const Color(0xff1E1E2C), // Dark Navy
    const Color(0xff2D2F4A), // Deep Indigo
    const Color(0xff3A3F7D), // Muted Blue
    const Color(0xff5C6BC0), // Soft Blue
    const Color(0xff7986CB), // Light Indigo
    const Color(0xff9FA8DA), // Pastel Lavender
    const Color(0xffC5CAE9), // Very Light Purple
    const Color(0xffFFB74D), // Warm Accent
    const Color(0xffFF8A65), // Coral Accent
    const Color(0xff81C784), // Soft Green
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
