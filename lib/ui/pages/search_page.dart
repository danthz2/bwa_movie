import 'package:bwa_movie/common/constant.dart';
import 'package:bwa_movie/common/style.dart';
import 'package:bwa_movie/ui/widgets/search_movie.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  static const routName = '/search_page';
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> searchMovie = [
      {
        'name': 'The Dark II',
        'genre': ['Horror'],
        'rating': 4,
        'image': image3
      },
      {
        'name': 'The Dark Knight',
        'genre': ['Heroes'],
        'rating': 5,
        'image': image4
      },
      {
        'name': 'The Dark Tower',
        'genre': ['Action'],
        'rating': 4,
        'image': image5
      },
    ];
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 90,
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
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TextField(
                  cursorColor: darkBlueC,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    filled: true,
                    fillColor: whiteC,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: Icon(
                        Icons.search,
                        color: darkBlueC,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Text(
                    'Search Result',
                    style: TextStyle(
                      color: darkBlueC,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '(3)',
                    style: TextStyle(
                      color: darkBlueC,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  ListView.builder(
                    itemCount: searchMovie.length,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 30, top: index == 0 ? 20 : 0),
                        child: SearchMovie(movie: searchMovie[index]),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
          Positioned(
            bottom: 50,
            left: 75,
            right: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(220, 50),
                primary: darkBlueC,
                shape: const StadiumBorder(),
              ),
              child: const Text(
                'Suggest Movie',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
