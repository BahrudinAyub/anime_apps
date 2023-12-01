import 'package:dunia_anime/widgets/list_data_categories_like.dart';
import 'package:dunia_anime/widgets/list_data_most_searched.dart';
import 'package:dunia_anime/widgets/list_data_popular_tv_series.dart';
import 'package:dunia_anime/widgets/list_data_search_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageDiscoverScreen extends StatelessWidget {
  const PageDiscoverScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search For',
                  filled: true,
                  fillColor: Colors.blueGrey,
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height:
                      16.0), // Untuk memberikan ruang antara TextField dan Text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search History',
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
                                    color: Colors.white, // Warna garis kotak
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most searched',
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: dataListMostSearched.map((mostsearched) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            mostsearched.gambarMostSearched,
                            height: 180.h,
                            width: 150.w,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            '${mostsearched.judulMostSearched}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Schyler',
                            ),
                          ),
                          SizedBox(height: 3.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white, // Warna garis kotak
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      2), // Bentuk sudut kotak
                                ),
                                child: Text(
                                  '${mostsearched.genreMostSearched1}',
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
                                  '${mostsearched.genreMostSearched2}',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
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

              Container(
                height: 35,
                margin: EdgeInsets.only(
                  bottom: 5,
                ),
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories you like',
                      textAlign: TextAlign.start,
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
                      onPressed: () {
                        // Your onPressed logic here
                      },
                    )
                  ],
                ),
              ),
              Container(
                height: 150.h,
                margin: EdgeInsets.only(bottom: 1),
                // color: Colors.blue,
                alignment: Alignment.centerLeft,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataListCategoriesYouLike.length,
                  separatorBuilder: (context, index) {
                    // Add space between items
                    return SizedBox(width: 16.0);
                  },
                  itemBuilder: (context, index) {
                    var categoriesyoulike = dataListCategoriesYouLike[index];

                    return Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            categoriesyoulike.gambarCategoriesYouLike,
                            height: 150.h,
                            width: 130.w,
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
                    'Popular TV Series',
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: dataListPopularTV.map((popularTV) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            popularTV.gambarPopularTV,
                            height: 180.h,
                            width: 150.w,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            '${popularTV.judulPopularTV}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Schyler',
                            ),
                          ),
                          SizedBox(height: 3.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white, // Warna garis kotak
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      2), // Bentuk sudut kotak
                                ),
                                child: Text(
                                  '${popularTV.genrePopularTV1}',
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
                                  '${popularTV.genrePopularTV2}',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              )
                            ],
                          ),
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
    );
  }
}
