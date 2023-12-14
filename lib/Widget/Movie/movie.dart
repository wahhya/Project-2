import 'package:flutter/material.dart';
import 'package:movie/Api/ApiController.dart';
import 'package:movie/Widget/Movie/listmovie.dart';

class Movie extends StatefulWidget {
  const Movie({Key? key})
      : super(
          key: key,
        );

  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  Future<List<dynamic>>? _data;

  @override
  void initState() {
    _data = ApiController().getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List movie = [
      {"image": "assets/gmbr1.jpg"},
      {"image": "assets/gmbr2.jpg"},
      {"image": "assets/gmbr1.jpg"},
      {"image": "assets/gmbr2.jpg"},
      {"image": "assets/gmbr1.jpg"},
      {"image": "assets/gmbr2.jpg"},
      {"image": "assets/gmbr1.jpg"},
      {"image": "assets/gmbr2.jpg"},
      {"image": "assets/gmbr1.jpg"},
      {"image": "assets/gmbr2.jpg"},
      {"image": "assets/gmbr1.jpg"},
      {"image": "assets/gmbr2.jpg"},
      {"image": "assets/gmbr1.jpg"},
      {"image": "assets/gmbr2.jpg"},
      {"image": "assets/gmbr1.jpg"},
      {"image": "assets/gmbr2.jpg"},
      {"image": "assets/gmbr1.jpg"},
      {"image": "assets/gmbr2.jpg"},
      {"image": "assets/gmbr1.jpg"},
      {"image": "assets/gmbr2.jpg"},
    ];
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          children: [
            FutureBuilder<List<dynamic>>(
              future: _data,
              builder: (context, snapshot) {
                print("ini data ${snapshot.data}");
                if (snapshot.hasData) {
                  return SizedBox(
                    width: 600,
                    height: 720,
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return listmovie(
                          image: '${snapshot.data![index]['thumbnail']}',
                          description: snapshot.data![index]['description'],
                        );
                      },
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
