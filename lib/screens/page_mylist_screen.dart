import 'package:dunia_anime/widgets/list_data_mylist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageMylistScreen extends StatelessWidget {
  const PageMylistScreen({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor:
                  Colors.transparent, // Atur latar belakang menjadi transparan
              elevation: 0, // Hilangkan efek bayangan
              title: Text(
                'My List',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Schyler',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            backgroundColor: Colors.black,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  // color: Colors.lightBlue,
                  alignment: Alignment.topLeft,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: dataListMylist.length,
                    itemBuilder: (context, index) {
                      var mylistData = dataListMylist[index];

                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              mylistData.gambarMylist,
                              height: 180.h,
                              width: 400.w,
                            ),
                            SizedBox(height: 1),
                            Text(
                              '${mylistData.judulMylist}',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Schyler',
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '${mylistData.genreMylist1}',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 10.h),
                                Text(
                                  '${mylistData.genreMylist2}',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            )));
  }
}
