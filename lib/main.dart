import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final audioPlayer = AudioPlayer();
    final AudioCache player = AudioCache(fixedPlayer: audioPlayer);

    void playSound() async {
      await player.play('lagu.mp3');
    }

    void stopSound() async {
      await audioPlayer.stop();
    }

    void pauseSound() async {
      await audioPlayer.pause();
    }

    void speedSound1() async {
      await audioPlayer.setPlaybackRate(1.0);
    }

    void speedSound2() async {
      await audioPlayer.setPlaybackRate(2.0);
    }

    void speedSound4() async {
      await audioPlayer.setPlaybackRate(4.0);
    }

    void speedSound6() async {
      await audioPlayer.setPlaybackRate(6.0);
    }
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 247, 246, 255),
          title: Container(
              child: Text(
            "Cerita Rakyat",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "RORO JONGGRANG",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset('./assets/gambar.jpg'),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              playSound();
                            },
                            icon: Icon(Icons.play_arrow)),
                        IconButton(
                            onPressed: () {
                              pauseSound();
                            },
                            icon: Icon(Icons.pause)),
                        IconButton(
                            onPressed: () {
                              stopSound();
                            },
                            icon: Icon(Icons.stop)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            speedSound1();
                          },
                          child: Text(
                            "1x",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            speedSound2();
                          },
                          child: Text(
                            "2x",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            speedSound4();
                          },
                          child: Text(
                            "4x",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            speedSound6();
                          },
                          child: Text(
                            "6x",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    '''
            Alkisah di Jawa Tengah ada sebuah kerajaan bernama Pengging. Sang raja mempunyai seorang putra bernama Joko Bandung. Joko Bandung adalah pemuda perkasa dan mempunyai ilmu kesaktian yang tinggi, akan tetapi ia enggan menikah, ia ingin menguasai prambanan.
            Prambanan dipimpin oleh raja Boko yang tubuhnya tinggi dan besar sehingga dia dianggap sebagai keturunan raksasa. Perang antara Pengging dan Prambanan pun terjadi, setelah pertarungan besar itu terjadi raja Boko pun mati di tangan Bandung Bodnowoso dan akhirnya prajurit Prambanan pun menyerahkan diri.
            Bandung Bondowoso pun diantar ke dalam istana dan melihat seorang putri cantik bernama Roro Jongrang. Joko Bandung langsung jatuh cinta dan ingin menikahinya. Roro Jongrang pun mengatakan "Hamba bersedia diperistri asalkan kau mampu membuat 1000 candi dan 2 buah sumur yang sangat dalam."
            Badung Bondowoso pun membuat semua itu dengan dibantu para jin dan makhluk ghaib lainnya. Roro Jonggrang melihat itu dan ia pun terkejut, akhirnya memanggil dayang-dayang istana untuk membantunya membakar kayu dan tumpukan jerami juga memukul-memukul alu dan lesung.
            Bunyi lesung dan bakaran jerami membuat ayam jantan berkokok dan para makhluk halus pun menghentikan pekerjaannya dan Bandung Bondowoso mengahampiri Roro Jonggrang dan ia berkaat "Kalau kau tidak ingin aku nikahi bilang saja, malah kau gunakan tipu muslihat. Dasar kau ini keras seperti batu, dan Roro Jonggrang pun berubah menjadi batu."
              ''',
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
