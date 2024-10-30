class NewsItem {
  final String imageUrl;
  final String title;
  final String link;
  final String date;

  NewsItem(
      {required this.imageUrl,
      required this.title,
      required this.link,
      required this.date});

  static List<NewsItem> newsItem() {
    return [
      NewsItem(
        imageUrl: "assets/images/berita1.png",
        title:
            "Bagaimana menangani krisis sampah elektronik? Dengan kerja keras dan teknologi",
        link: "Lanjut baca",
        date: "15 Mei 2024",
      ),
      NewsItem(
        imageUrl: "assets/images/berita2.png",
        title: "Sampah Elektronik Menumpuk? Seberapa parah sih?",
        link: "Lanjut baca",
        date: "01 Juni 2024",
      ),
      NewsItem(
        imageUrl: "assets/images/berita3.png",
        title: "Cara Indonesia Capai Nol Sampah Elektronik",
        link: "Lanjut baca",
        date: "15 Mei 2024",
      ),
      // Add more news items as needed
    ];
  }
}
