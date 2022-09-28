import 'package:flutter/material.dart';

import '../../common/style.dart';

class SearchMovie extends StatelessWidget {
  final Map<String, dynamic> movie;
  const SearchMovie({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            movie['image'],
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              movie['name'],
              style: TextStyle(
                color: darkBlueC,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            Text(
              movie['genre'].join(', '),
              style: TextStyle(
                color: greyC,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [1, 2, 3, 4, 5]
                  .map(
                    (e) => Icon(
                      Icons.star,
                      size: 18,
                      color: e > movie['rating'] ? greyC : orangeC,
                    ),
                  )
                  .toList(),
            )
          ],
        )
      ],
    );
  }
}
