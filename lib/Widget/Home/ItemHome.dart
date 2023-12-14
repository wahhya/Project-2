import 'package:flutter/material.dart';
import 'package:movie/Widget/Movie/movie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ItemHome extends StatefulWidget {
  const ItemHome({super.key});

  @override
  State<ItemHome> createState() => _ItemHomeState();
}

class _ItemHomeState extends State<ItemHome> {
  String? nbi;
  String? nama;
  String? email;

  data() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? _nbi = prefs.getString('nbi');
    String? _nama = prefs.getString('nama');
    String? _email = prefs.getString('email');
    setState(() {
      nbi = _nbi;
      nama = _nama;
      email = _email;
    });
  }

  @override
  void initState() {
    super.initState();
    data();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 550,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/Home/boss_265674.png",
            width: 150,
            height: 150,
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("NAMA : $nama"),
            ],
          ),
          Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("NBI : $nbi"),
            ],
          ),
          Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Email : $email"),
            ],
          ),
          Divider(
            thickness: 2,
            color: Colors.black,
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Movie()));
            },
            child: Text(
              "MASUK",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
