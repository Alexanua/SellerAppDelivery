import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../authenAuthentication/auth_screen.dart';
import '../global/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "سوف نشتاق لك "; // تعيين القيمة الافتراضية

  @override
  void initState() {
    super.initState();
    initSharedPreferences(); // تهيئة SharedPreferences عند تحميل الشاشة
  }

  Future<void> initSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      // استرجاع الاسم من SharedPreferences أو تعيين قيمة افتراضية
      name = sharedPreferences?.getString('oooooooh') ?? "سوف نشتاق لك";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.amber],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        title: Text(
          sharedPreferences?.getString("oooooooh") ?? "الله معك ", // استخدام قيمة افتراضية
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan,
          ),
          onPressed: () {
            firebaseAuth.signOut().then((value) {
              Navigator.push(context, MaterialPageRoute(builder: (c) => const AuthScreen()));
            });
          },
          child: const Text("الخروج"),
        ),
      ),
    );
  }
}
