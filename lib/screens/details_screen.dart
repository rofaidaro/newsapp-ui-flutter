
import 'package:flutter/material.dart';
import 'package:news_app_tut/models/news_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen(this.data, {Key? key}) : super(key: key);
  NewsData data;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 3, 40),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
        backgroundColor: Color.fromARGB(255, 188, 226, 246),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.data.title!,
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              widget.data.author!,
              style: TextStyle(
                color: Color.fromARGB(255, 14, 3, 40),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Hero(
              tag: "${widget.data.title}",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network(widget.data.urlToImage!),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(widget.data.content!)
          ],
        ),
      ),
    );
  }
}
