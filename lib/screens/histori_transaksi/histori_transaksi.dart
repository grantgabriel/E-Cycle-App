import 'package:e_cycle/constants/colors.dart';
import 'package:e_cycle/screens/widgets/new_header.dart';
import 'package:flutter/material.dart';

class HistoriTransaksi extends StatelessWidget {
  const HistoriTransaksi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: const NewHeader(title: 'Histori Transaksi'),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 8),
            // button task
            Container(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                            ),
                            padding: const EdgeInsets.all(0)),
                        child: const Text('E-Picker',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600))),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffF2F2F2),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                      ),
                      child: const Text('Selesai',
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 14,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600)),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            // berlangsung card
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: Column(
                children: [
                  // card 1
                  Card(
                    elevation: 4.6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.white,
                    borderOnForeground: true,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      splashColor: Colors.black.withAlpha(30),
                      onTap: () {},
                      child: Container(
                        // height: 100,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 9),
                        child: Column(
                          children: [
                            // card header
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    color: Color(0xffFCCD2A),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/icon_motorbike.png',
                                    width: 34,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                const Expanded(
                                    child: Text(
                                  'Sip! Tunggu ya, kami sedang mencarikan E-Picker untukmu',
                                  style: TextStyle(
                                      color: Color(0xff2E3430),
                                      fontSize: 14,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600),
                                )),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Divider(
                              color: const Color(0xff2E3430).withOpacity(0.5),
                              thickness: 0.5,
                            ),
                            const SizedBox(height: 8),
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: const Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Sisa waktu pencarian E-Picker: ",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: primaryColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      // timer sisa waktu penjemputan
                                      Text(
                                        "3 menit",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: primaryColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Apabila waktu pencarian habis, penjemputan akan dibatalkan secara otomatis",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        color: Color(0xff2E3430),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15),
                            // card footer line
                            Center(
                              child: Container(
                                width: 117,
                                height: 4,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(7)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // card 2
                  Card(
                    elevation: 4.6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.white,
                    borderOnForeground: true,
                    // shadowColor: const Color(0xff000000).withOpacity(0.4),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      splashColor: Colors.black.withAlpha(30),
                      onTap: () {},
                      child: Container(
                        // height: 100,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 9),
                        child: Column(
                          children: [
                            // card header
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    color: Color(0xffFCCD2A),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/icon_motorbike.png',
                                    width: 34,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                const Expanded(
                                    child: Text(
                                  'Sip! Tunggu ya, kami sedang mencarikan E-Picker untukmu',
                                  style: TextStyle(
                                      color: Color(0xff2E3430),
                                      fontSize: 14,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600),
                                )),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Divider(
                              color: const Color(0xff2E3430).withOpacity(0.5),
                              thickness: 0.5,
                            ),
                            const SizedBox(height: 8),
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: const Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Sisa waktu pencarian E-Picker: ",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: primaryColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      // timer sisa waktu penjemputan
                                      Text(
                                        "3 menit",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: primaryColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Apabila waktu pencarian habis, penjemputan akan dibatalkan secara otomatis",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        color: Color(0xff2E3430),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Divider(
                              color: const Color(0xff2E3430).withOpacity(0.5),
                              thickness: 0.5,
                            ),
                            // card when expanded
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                          'assets/images/icon_sort_by_time.png'),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text(
                                        '17:30 - 19:30',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                          'assets/images/icon-location_point.png'),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      const Text(
                                        'Jl. Abdul Hakim, Padang Bulan', // nama alamat
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: const Color(0xff2E3430).withOpacity(0.5),
                              thickness: 0.5,
                            ),
                            // Detai sampah elektronik
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: const Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Detail Sampah Elektronik',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 7),
                                  // Item sampah elektronik
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Smartphone Samsung J15',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '1 Item',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'LG A34 TV ELD',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '1 Item',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'AC Samsung',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '1 Item',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: const Color(0xff2E3430).withOpacity(0.5),
                              thickness: 0.5,
                            ),
                            // Perkiraan harga
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset('assets/images/coin.png',
                                              width: 24),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          const Text(
                                            'Total harga',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff2E3430)),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        '1.400.000',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff2E3430)),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset('assets/images/coin.png',
                                              width: 24),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          const Text(
                                            'Total harga',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff2E3430)),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        '1.400.000',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff2E3430)),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset('assets/images/coin.png',
                                              width: 24),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          const Text(
                                            'Biaya admin (10%)',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff2E3430)),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        '200.000',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff2E3430)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  // Dashed line
                                  Row(
                                    children: List.generate(
                                        150 ~/ 2,
                                        (index) => Expanded(
                                              child: Container(
                                                color: index % 2 == 0
                                                    ? Colors.transparent
                                                    : Colors.black,
                                                height: 1,
                                              ),
                                            )),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset('assets/images/coin.png',
                                              width: 24),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          const Text(
                                            'Estimasi pendapatan',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff2E3430)),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        '1.200.000',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff2E3430)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            // Button batal
                            SizedBox(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: const BorderSide(
                                          color: Color(0xffAF0F0F), width: 1)),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Batal',
                                  style: TextStyle(color: Color(0xffAF0F0F)),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            // card footer line
                            Center(
                              child: Container(
                                width: 117,
                                height: 4,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(7)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
