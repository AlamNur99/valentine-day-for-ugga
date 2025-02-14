import 'package:flutter/material.dart';
import 'package:valentine_day_for_ugga/style/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        child: Center(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Happy Valentine day ',
                  style: blackTextStyle.copyWith(
                    fontSize: 25,
                    fontWeight: bold,
                  ),
                ),
                TextSpan(
                  text: 'Ugga',
                  style: pinkTextStyle.copyWith(fontSize: 25, fontWeight: bold),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget caledar() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
        child: Center(
          child: Container(
            width: 258,
            height: 197,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/calendar.png')),
            ),
          ),
        ),
      );
    }

    Widget sentence() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 165,
              height: 254,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/ugga.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    style: blackTextStyle.copyWith(fontSize: 14),
                    'Selamat hari valentine buat pacarku yang cantik, manis, imut, lucuu sedunia inii, jangan pernah bosan” yaa sama randomkuu',
                  ),
                  Container(height: 30),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'tetap jadi cewek ceria yang punya senyum yang manis sama tetap suka selalu sama terus yaa ',
                          style: blackTextStyle.copyWith(fontSize: 14),
                        ),
                        TextSpan(
                          text: 'Uggaa',
                          style: pinkTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget love() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    '"tidak cuma hari inii tapi dari awal sama, sekarang, sampai seterusnya bakal tetapka jadi laki” yang sama sama ',
                style: blackTextStyle.copyWith(fontSize: 25, fontWeight: bold),
              ),
              TextSpan(
                text: 'Uggaa',
                style: pinkTextStyle.copyWith(fontSize: 25, fontWeight: bold),
              ),
              TextSpan(
                text: ' inii"',
                style: blackTextStyle.copyWith(fontSize: 25, fontWeight: bold),
              ),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [title(), caledar(), sentence(), love()],
        ),
      ),
    );
  }
}
