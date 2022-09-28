import 'package:bwa_movie/common/constant.dart';
import 'package:bwa_movie/common/style.dart';
import 'package:bwa_movie/ui/pages/search_page.dart';
import 'package:flutter/material.dart';

import '../widgets/from_disney.dart';
import '../widgets/top_movie.dart';

class HomePage extends StatelessWidget {
  static const routName = '/home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> topMovie = [
      {
        'name': 'John Wick 4',
        'genre': ['Action', 'Crime'],
        'rating': 5,
        'image': topImage1
      },
      {
        'name': 'Bohemian',
        'genre': ['Documentary'],
        'rating': 3,
        'image': topImage2
      }
    ];

    List<Map<String, dynamic>> disneyMovie = [
      {
        'name': 'Mulan Session',
        'genre': ['History', 'War'],
        'rating': 3,
        'image': image1
      },
      {
        'name': 'Beauty & Beast',
        'genre': ['Sci-Fiction'],
        'rating': 5,
        'image': image2
      }
    ];
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 260,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffFBFBFD), Color(0xffF0F1F6)])),
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 30, 10, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Moviez',
                          style: TextStyle(
                            color: darkBlueC,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Watch much easier',
                          style: TextStyle(
                            color: greyC,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SearchPage.routName);
                      },
                      icon: const Icon(Icons.search),
                      iconSize: 28,
                      color: darkBlueC,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 280,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  itemCount: topMovie.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 300,
                      margin: EdgeInsets.only(right: index == 0 ? 24 : 0),
                      child: TopMovie(movie: topMovie[index]),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  Text(
                    'From Disney',
                    style: TextStyle(
                      color: darkBlueC,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  ListView.builder(
                    itemCount: disneyMovie.length,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 30, top: index == 0 ? 20 : 0),
                        child: FromDisney(movie: disneyMovie[index]),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
