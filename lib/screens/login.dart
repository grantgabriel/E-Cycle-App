import 'package:e_cycle/constants/colors.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Make all to center
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_secondary.png', width: 100,),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Masuk atau Daftar',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 370,
              height: 57,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(  
              width: 370,
              height: 57,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text(
                  "Selanjutnya",
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500), 
                  )
                ),
            ),
            const SizedBox(
              height: 5,
            ),
            
            SizedBox(
              width: 372,
              child: Row(
                children: [
                  Container(width: 169, height: 2, color: Colors.black),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('OR'),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(width: 169, height: 2, color: Colors.black),

                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),

            Container(
              width: 373,
              height: 57,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(6),
              ),
              child: ElevatedButton(onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ), child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/images/logo_google.png'), width: 24,),
                    SizedBox(width: 10,),
                    Text('Masuk dengan Google', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),)
                  ],
                ), )
            ),

            const SizedBox(
              height: 16,
            ),

            Container(
              width: 373,
              height: 57,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(6),
              ),
              child: ElevatedButton(onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ), child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/images/logo_facebook.png'), width: 24,),
                    SizedBox(width: 10,),
                    Text('Masuk dengan Facebook', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),)
                  ],
                ), )
            ),
           
             
          ],
        ),
      ),
    );
  }
}