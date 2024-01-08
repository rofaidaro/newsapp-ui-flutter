
class NewsData {
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? date;

  NewsData(
    this.title,
    this.author,
    this.content,
    this.date,
    this.urlToImage,
  );


  static List<NewsData> breakingNewsData = [
    NewsData(
        "Mechatronics Students invents a robot \"Hager Ashraf\"",
        "Rofaida Montaser",
        "The class of 2022-2023 invents robot that makes pizza and gives it the name \"Hager\"",
        "2024-06-11",
        "https://i.ytimg.com/vi/sPlYon_zhFs/maxresdefault.jpg"),
    NewsData(
        "DTU asks students to pay the fees early",
        "Alyaa",
        "There was quite a bit of drama on several reports in various media platforms that the university has overtaken the fees to become the top In fact, there was quite a bit..",
        "2024-06-11",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4EHmesXvtMSw3f4ojQ4qRDrCmcBa0e47mKqd6jtJkKuXXyM3_GvHZanimoLihihEt7pU&usqp=CAU"),
    NewsData(
        "Bad weather, No school for a week",
        "Rofaida Montaser",
        "Starting from 1-1-2024 no school for a week til 1-7-2024.",
        "2024-06-11",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYZNOept7tWSYCSQCsXEHS_ZoSCx_a6Sy1kA&usqp=CAU"),
  ];

  static List<NewsData> recentNewsData = [
    NewsData(
        "DTU asks students to pay the fees early",
        "Alyaa",
        "There was quite a bit of drama on several reports in various media platforms that the university has overtaken the fees to become the top In fact, there was quite a bit..",
        "2024-06-11",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4EHmesXvtMSw3f4ojQ4qRDrCmcBa0e47mKqd6jtJkKuXXyM3_GvHZanimoLihihEt7pU&usqp=CAU"),
    NewsData(
        "Bad weather, No school for a week",
        "Rofaida Montaser",
        "Starting from 1-1-2024 no school for a week til 1-7-2024.",
        "2024-06-11",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYZNOept7tWSYCSQCsXEHS_ZoSCx_a6Sy1kA&usqp=CAU"),
    NewsData(
        "Dr.Ahmed gives a student an F - Delta Technological University",
        "Rofaida Montaser",
        "Dr.Ahmed gives an F because he sent a friend request to his wife.",
        "2022-08-11",
        "https://c8.alamy.com/zooms/9/8aeae3feb2c54af999e74da49c140fdc/2jf47xk.jpg"),
    NewsData(
        "Mechatronics Students invents a robot \"Hager Ashraf\"",
        "Rofaida Montaser",
        "The class of 2022-2023 invents robot that makes pizza and gives it the name \"Hager\"",
        "2024-06-11",
        "https://i.ytimg.com/vi/sPlYon_zhFs/maxresdefault.jpg"),
  ];
}
