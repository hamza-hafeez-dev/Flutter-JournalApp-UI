import 'package:flutter/material.dart';

class CardUI extends StatelessWidget {
  final String title;
  final String question;
  final String tag;
  final Color color;

  const CardUI({
    super.key,
    required this.title,
    required this.question,
    required this.tag,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    // Card ki width screen ke according
    final cardWidth = screenWidth * 0.40;

    // Width ke according height
    final cardHeight = cardWidth * 0.72;

    return SizedBox(
      width: cardWidth,
      height: cardHeight,

      child: Container(
        padding: const EdgeInsets.all(13),

        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),
            Text(
              question,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 11, height: 1.3),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Today",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 9,
                    vertical: 5,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Text(tag, style: const TextStyle(fontSize: 9)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


