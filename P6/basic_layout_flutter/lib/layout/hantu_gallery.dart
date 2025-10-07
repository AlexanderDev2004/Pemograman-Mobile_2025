import 'package:flutter/material.dart';

class HantuGalleryPage extends StatelessWidget {
  final String title;
  const HantuGalleryPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    const titleText = Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Kuntilanak — Sang Penunggu Pohon Beringin',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Creepster',
          color: Colors.redAccent,
          fontWeight: FontWeight.w800,
          fontSize: 28,
          letterSpacing: 1.5,
          shadows: [
            Shadow(blurRadius: 10, color: Colors.red, offset: Offset(2, 2)),
          ],
        ),
      ),
    );

    const subTitle = Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        '"Kuntilanak" dikenal sebagai arwah penasaran perempuan yang sering muncul di malam hari '
        'dengan tawa melengking dan rambut panjang terurai. Ia menjadi legenda urban di berbagai daerah di Indonesia.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Times New Roman',
          fontSize: 18,
          color: Colors.white70,
          height: 1.8,
        ),
      ),
    );

    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.bloodtype, color: Colors.red[800]),
        Icon(Icons.bloodtype, color: Colors.red[800]),
        Icon(Icons.bloodtype, color: Colors.red[800]),
        Icon(Icons.bloodtype, color: Colors.grey[700]),
        Icon(Icons.bloodtype, color: Colors.grey[700]),
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '666 Review dari Dunia Arwah',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'RobotoMono',
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );

    const descTextStyle = TextStyle(
      color: Colors.white,
      fontFamily: 'RobotoMono',
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
      fontSize: 16,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.nightlight_round, color: Colors.deepPurpleAccent),
                const Text('ASAL:'),
                const Text('Indonesia'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.sick, color: Colors.redAccent),
                const Text('TINGKAT HOROR:'),
                const Text('99/100'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.visibility, color: Colors.white70),
                const Text('WAKTU MUNCUL:'),
                const Text('Tengah Malam'),
              ],
            ),
          ],
        ),
      ),
    );

    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [titleText, subTitle, ratings, iconList],
      ),
    );

    final mainImage = ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'images/kunti.png',
        height: 900,
        width: 500,
        fit: BoxFit.cover,
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            color: Colors.black.withOpacity(0.7),
            shadowColor: Colors.redAccent,
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Colors.redAccent, width: 2),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: leftColumn),
                Expanded(flex: 3, child: mainImage),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
