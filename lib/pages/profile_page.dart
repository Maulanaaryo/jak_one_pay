import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: ListView(
        children: [
          // Profil(loggedUser: loggedUser),
          const SizedBox(
            height: 100.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Akun Saya',
                    style:
                        GoogleFonts.poppins(fontSize: 14, letterSpacing: 0.5),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                _profileItemButton(
                  icon: const Icon(
                    Icons.edit_outlined,
                    color: Colors.grey,
                  ),
                  title: 'Edit Profile',
                  onPressed: () {},
                ),
                _profileItemButton(
                    icon: const Icon(
                      Icons.lock_outlined,
                      color: Colors.grey,
                    ),
                    title: 'Ganti Password'),
                _profileItemButton(
                  icon: const Icon(Icons.delete_outlined),
                  title: 'Hapus Akun',
                ),

                const SizedBox(
                  height: 15.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tentang',
                    style:
                        GoogleFonts.poppins(fontSize: 14, letterSpacing: 0.5),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                _profileItemButton(
                  icon: const Icon(
                    Icons.question_answer_outlined,
                    color: Colors.grey,
                  ),
                  title: 'Aplikasi',
                  onPressed: () {},
                ),
                // _profileItemButton(
                //   icon: const Icon(
                //     Icons.key_outlined,
                //     color: Colors.grey,
                //   ),
                //   title: 'Pengaturan Chatbot',
                //   onPressed: () {
                //     Navigator.pushNamed(context, TableChatBotKey.routeName);
                //   },
                // ),
                _profileItemButton(
                    icon: Icon(Icons.privacy_tip_outlined),
                    title: 'Kebijakan Privasi'),
                _profileItemButton(
                    icon: Icon(Icons.note_alt_outlined),
                    title: 'Syarat dan Ketentuan'),
                _profileItemButton(
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.grey,
                  ),
                  title: 'Keluar',
                  onPressed: () async {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _profileItemButton({
  required Widget icon,
  required String title,
  void Function()? onPressed,
}) {
  return Container(
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.white38),
            top: BorderSide(color: Colors.white30))),
    width: double.infinity,
    child: ElevatedButton(
      style: const ButtonStyle(
          elevation: MaterialStatePropertyAll(0),
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          fixedSize: MaterialStatePropertyAll(Size(double.infinity, 50)),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
          ))),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon,
          const SizedBox(
            width: 8,
          ),
          Expanded(
              child: Text(
            title,
            style: TextStyle(color: Colors.grey),
          )),
          Icon(Icons.navigate_next, color: Color(0xFFFE5F5F))
        ],
      ),
    ),
  );
}
