import 'package:carousel_slider/carousel_slider.dart';
import 'package:dunia_anime/widgets/list_data_continue_watching.dart';
import 'package:dunia_anime/widgets/list_data_on_cinemas.dart';
import 'package:dunia_anime/widgets/list_data_popular_movies.dart';
import 'package:dunia_anime/widgets/list_data_search_history.dart';
import 'package:dunia_anime/widgets/list_data_today_selection_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageHomeScreen extends StatelessWidget {
  const PageHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CarouselSlider(
                    items: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/image/poster_underwater_list.jpg',
                          // width: double.infinity,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8.0),
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'assets/image/poster_extraction_list.jpg',
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/image/poster_greyhound_list.jpg',
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 230.h,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      enlargeCenterPage: true,
                      aspectRatio: 14 / 9,
                      viewportFraction: 1.3,
                      autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                    ),
                  ),
                  // Your other content goes here
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Now On Cinemas',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Schyler',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'See All',
                          style: TextStyle(
                            fontFamily: 'Schyler',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          // Your onPressed logic here
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: dataListNewInCinemas.map((cinemaData) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                cinemaData.imagePath,
                                height: 120.h,
                                width: 200.w,
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                '${cinemaData.text1}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schyler',
                                ),
                              ),
                              Text(
                                '${cinemaData.text2}',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                  SizedBox(
                    height: 0.5.h,
                  ),
                  //lanjutan kode
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Movies',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Schyler',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'See all',
                          style: TextStyle(
                            fontFamily: 'Schyler',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          // Your onPressed logic here
                        },
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: dataListPopularMovies.map((movie) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                movie.gambarPopular,
                                height: 180.h,
                                width: 150.w,
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                '${movie.judul}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schyler',
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color:
                                            Colors.white, // Warna garis kotak
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          2), // Bentuk sudut kotak
                                    ),
                                    child: Text(
                                      '${movie.genre1}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25.w,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Text(
                                      '${movie.genre2}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                  SizedBox(height: 2.h),
                  Container(
                    // color: Colors.amber,
                    height: 30.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Continue Watching',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Schyler',
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        TextButton(
                          child: Text(
                            'See All',
                            style: TextStyle(
                              fontFamily: 'Schyler',
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 135.h,
                    margin: EdgeInsets.only(
                      bottom: 1,
                    ),
                    // color: Colors.blue,
                    alignment: Alignment.topLeft,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: dataListContinueWatching1.length,
                      separatorBuilder: (context, index) {
                        // Add space between items
                        return SizedBox(width: 16.0);
                      },
                      itemBuilder: (context, index) {
                        var continueWatching = dataListContinueWatching1[index];

                        return Padding(
                          padding: EdgeInsets.only(top: 0, bottom: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                continueWatching.gambarContinueWatching,
                                height: 130.h,
                                width: 200.w,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Today Selection',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Schyler',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      TextButton(
                        child: Text(
                          'See All',
                          style: TextStyle(
                            fontFamily: 'Schyler',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: dataListSearchHistory.map((history) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                history.gambarHistory,
                                height: 180.h,
                                width: 150.w,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                '${history.judulHistory}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schyler',
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color:
                                            Colors.white, // Warna garis kotak
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          2), // Bentuk sudut kotak
                                    ),
                                    child: Text(
                                      '${history.genreHistory1}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25.w,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Text(
                                      '${history.genreHistory2}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                  SizedBox(
                    height: 1.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: dataListTodaySelection.map((todaySelection) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                todaySelection.gambarTodaySelection,
                                height: 180.h,
                                width: 150.w,
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                '${todaySelection.judulTodaySelection}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Schyler',
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color:
                                            Colors.white, // Warna garis kotak
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          2), // Bentuk sudut kotak
                                    ),
                                    child: Text(
                                      '${todaySelection.genreTodaySelection1}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25.w,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Text(
                                      '${todaySelection.genreTodaySelection2}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
