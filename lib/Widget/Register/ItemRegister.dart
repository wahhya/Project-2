import 'package:flutter/material.dart';
import 'package:movie/Page/Homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ItemRegister extends StatefulWidget {
  const ItemRegister({super.key});

  @override
  State<ItemRegister> createState() => _ItemRegisterState();
}

class _ItemRegisterState extends State<ItemRegister> {
  var nama = TextEditingController();
  var nbi = TextEditingController();
  var email = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 800,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade300.withOpacity(.9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/Brain/brain.png",
            width: 250,
            height: 200,
          ),
          Divider(
            thickness: 7,
            color: Colors.black38,
            indent: 40,
            endIndent: 40,
          ),
          SizedBox(
            height: 30,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                  ),
                  child: TextFormField(
                    controller: nama,
                    validator: (String? value) {
                      if (value!.isEmpty || value.isEmpty) {
                        return ("Nama Belum Diisi");
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Nama',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                  ),
                  child: TextFormField(
                    controller: nbi,
                    validator: (String? value) {
                      if (value!.isEmpty || value.isEmpty) {
                        return ("Nbi Belum Diisi");
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Nbi',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                  ),
                  child: TextFormField(
                    controller: email,
                    validator: (String? value) {
                      if (value!.isEmpty || value.isEmpty) {
                        return ("Email Belum Diisi");
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.setString('nama', nama.text);
                      await prefs.setString('nbi', nbi.text);
                      await prefs.setString('email', email.text);

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    }
                  },
                  child: Text(
                    "REGISTER",
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
          ),
        ],
      ),
    );
  }
}
