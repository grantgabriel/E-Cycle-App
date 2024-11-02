import 'package:e_cycle/constants/app_styles.dart';
import 'package:e_cycle/screens/article/widgets/article_content.dart';
import 'package:e_cycle/screens/article/widgets/other_article.dart';
import 'package:flutter/material.dart';

class ArticleDetailPage extends StatelessWidget {
  const ArticleDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF009421),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios_new),
                    color: Colors.white,
                  ),
                  const Expanded(
                    child: Text(
                      "E-Article",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                  ),
                  const SizedBox(width: 48)
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ArticleContent(
                        title: "Sampah Elektronik Menumpuk? Seberapa Parah Sih?",
                        imgName: "img_artikel_1.png",
                        description: "Di Indonesia, penggunaan barang elektronik sudah menjadi bagian tak terpisahkan dari kehidupan sehari-hari. Hampir setiap orang, dari berbagai kalangan dan usia, memiliki perangkat elektronik. Namun, setiap barang elektronik memiliki umur pemakaian yang terbatas, di mana seiring waktu, performanya menurun hingga akhirnya tidak dapat digunakan lagi."
                      ),
                      const SizedBox(height: 66),
                      const ArticleContent(
                        title: "Proses Remanufaktur dalam Pengolahan Sampah Elektronik",
                        imgName: "img_artikel_2.png",
                        description: "Remanufaktur adalah proses mendaur ulang produk elektronik dengan cara membongkar, memperbaiki, dan memproduksi ulang perangkat sehingga dapat digunakan kembali. Dalam konteks sampah elektronik, remanufaktur berfokus pada pemanfaatan komponen yang masih berfungsi untuk menghasilkan perangkat dengan performa yang mendekati perangkat baru. Proses ini mencakup inspeksi, pemisahan komponen yang rusak, penggantian suku cadang, dan pengujian akhir untuk memastikan kualitasnya. Remanufaktur tidak hanya mengurangi limbah elektronik yang berakhir di TPA, tetapi juga memperpanjang siklus hidup perangkat elektronik dan menghemat sumber daya alam yang digunakan untuk memproduksi komponen baru. Proses ini menjadi solusi berkelanjutan bagi industri teknologi di era modern."
                      ),
                      const SizedBox(height: 66),
                      const ArticleContent(
                        title: "Inovasi dalam Remanufaktur: Mendorong Ekonomi Sirkular",
                        imgName: "img_artikel_3.png",
                        description: "Ekonomi sirkular menjadi konsep yang semakin populer, di mana produk yang sudah tidak terpakai dapat dimanfaatkan kembali melalui proses seperti remanufaktur. Dalam industri elektronik, remanufaktur tidak hanya mengurangi kebutuhan akan bahan mentah baru, tetapi juga membuka peluang ekonomi baru, terutama di negara-negara berkembang. Teknologi modern memungkinkan lebih banyak komponen elektronik untuk diperbaiki dan diproduksi ulang dengan biaya yang lebih rendah. Misalnya, baterai, papan sirkuit, dan layar dapat direkondisi untuk digunakan kembali. Selain mengurangi jejak karbon, inovasi ini juga menciptakan lapangan kerja baru dalam industri daur ulang dan pengolahan sampah elektronik. Dengan dukungan dari pemerintah dan kesadaran konsumen, remanufaktur berpotensi mengubah model bisnis tradisional menjadi lebih berkelanjutan.",
                      ),
                      const SizedBox(height: 66),
                      Text(
                        "Artikel Lainnya",
                        style: AppStyles.titleStyle.copyWith(
                          fontSize: 14
                        ),
                      ),
                      const SizedBox(height: 20),
                      const OtherArticle(
                        title: "Jepang Jauh Lebih Maju dalam Pengelolaan Sampah Elektronik",
                        imgName: "artikel_lainnya_1.png",
                        addtionalInformation: "27 Mei 2024 • 5 min read",
                      ),
                      const OtherArticle(
                        title: "Beberapa Negara Berikut Mulai Membangun Fasilitas E-Waste",
                        imgName: "artikel_lainnya_2.png",
                        addtionalInformation: "01 Juni 2024 • 3 min read",
                      ),
                      const OtherArticle(
                        title: "Tahukah Anda? Produksi Barang Elektronik Menghasilkan Limbah.",
                        imgName: "artikel_lainnya_3.png",
                        addtionalInformation: "27 Mei 2024 • 5 min read",
                      ),
                    ],
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
