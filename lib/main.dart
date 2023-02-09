import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_auth/auth_controller.dart';
import 'package:login_auth/login_page.dart';
import 'package:login_auth/signup_page.dart';
import 'package:login_auth/welcome_page.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value)=>Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  LoginPage(),
    );
  }
}

  

