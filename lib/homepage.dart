import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text(
          "Cuisine App",
          style: GoogleFonts.itim(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            piccover(),
            cuisineheader(),
            profile(),
            Auther(),
            showdata(),
          ],
        ),
      ),
    );
  }

  Image piccover() => Image.asset('images/lobsterCover.jpg');

  Container cuisineheader() {
    return Container(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 25,
                right: 5,
              ),
              child: Text(
                'วิธีทำ “ล็อบสเตอร์อบชีส” \nเมนูอาหารฝรั่งทำง่ายแบบไม่ง้อร้าน!  ',
                style: GoogleFonts.itim(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 7,
                left: 25,
                right: 25,
              ),
              child: Text(
                'เนื้อล็อบสเตอร์เด้ง ๆ โปะซอสเข้มข้น\nและชีสเน้นๆกับเมนู “ล็อบสเตอร์อบชีส”\nที่มาพร้อมวิธีทำที่ทำตามได้ไม่ยาก\nพร้อมแล้วตามมาเข้าครัวกันเลย!  ',
                style: GoogleFonts.krub(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
  }

 Widget showdata() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 13,
        right: 13,
        bottom:20,
      ),
      child: Container(
        height: 110,
        color: Colors.amber[300],
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 17),
                  child: FaIcon(
                    FontAwesomeIcons.stopwatch,
                    color: Colors.indigo[300],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 17),
                  child: Text(
                    'เวลาเตรียม\n10 นาที',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.prompt(
                        color: Colors.black54,
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 17),
                  child: FaIcon(
                    FontAwesomeIcons.utensils,
                    color: Colors.orange[400],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 17),
                  child: Text(
                    'เวลาปรุง\n50 นาที',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.prompt(
                        color: Colors.black54,
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 17),
                  child: FaIcon(
                    FontAwesomeIcons.gripfire,
                    color: Colors.red[700],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 17),
                  child: Text(
                    'แคลอรี่\n300 Kcal/เสิร์ฟ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.prompt(
                        color: Colors.black54,
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 17),
                  child: FaIcon(
                    FontAwesomeIcons.user,
                    color: Colors.green[700],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 17),
                  child: Text(
                    'สำหรับ\n5 เสิร์ฟ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.prompt(
                        color: Colors.black54,
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget Auther() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 7,
          ),
          child: Text(
            'วันที่ 27 ธ.ค. 2564   • โดย Sunshine ',
            style: GoogleFonts.aleo(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  
  Widget profile() {     
    return Padding(       
      padding: const EdgeInsets.only(top: 10),       
      child: CircleAvatar(         
        radius: 66,         
        backgroundColor: Colors.black26,         
        child: CircleAvatar(           
          radius: 65,           
          backgroundImage: NetworkImage('https://scontent.furt2-1.fna.fbcdn.net/v/t1.6435-9/57101664_101433414392745_7630786584266145792_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHWr4UFRqleDl77WrYs6IRZge7ad7rWED6B7tp3utYQPo7wAFqvvcbe2LdKrwsWdWKcThopvH7Et3FzgwSV5OeD&_nc_ohc=iBug0IElkS0AX_e1ILX&tn=FcRPC4ZW6hJtaOYY&_nc_ht=scontent.furt2-1.fna&oh=00_AT9Lg2q09SmOZfkcRpHxQnhc9Pv1x32SOUpbNzvdrCEnFQ&oe=61F03A65'),       
            ),      
          ),     
        );
  }
}
