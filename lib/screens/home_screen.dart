import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app_tut/components/breaking_news_card.dart';
import 'package:news_app_tut/components/news_list_tile.dart';
import 'package:news_app_tut/models/news_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //let's start with the Appbar
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "DTU News",
          style: TextStyle(color: Color.fromARGB(255, 14, 3, 40)),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ))
        ],
      ),
      backgroundColor: Color.fromARGB(255, 124, 154, 171),


      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Breaking News",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 14, 3, 40)
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //let's build our caroussel
              CarouselSlider.builder(
                  itemCount: NewsData.breakingNewsData.length,
                  itemBuilder: (context, index, id) =>
                      BreakingNewsCard(NewsData.breakingNewsData[index]),
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                  )),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "Recent",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 14, 3, 40),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              //now let's create the cards for the recent news
              Column(
                children: NewsData.recentNewsData
                    .map((e) => NewsListTile(e))
                    .toList(),
              ),
            ],
          ),
        ),
      ),


      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 12,right: 12,bottom: 12),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 14, 3, 40),
          borderRadius: BorderRadius.circular(16),
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          selectedItemColor: Colors.blueAccent,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: "Bookmark",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.rss_feed_rounded),
              label: "Feed",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
