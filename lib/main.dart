import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce/screens/auth/forget_password_screen.dart';
import 'package:ecommerce/screens/auth/login_screen.dart';
import 'package:ecommerce/screens/auth/register_screen.dart';
import 'package:ecommerce/screens/category/single_category_screen.dart';
import 'package:ecommerce/screens/dashboard/dashboard.dart';
import 'package:ecommerce/screens/product/add_product_screen.dart';
import 'package:ecommerce/screens/product/edit_product_screen.dart';
import 'package:ecommerce/screens/product/my_product_screen.dart';
import 'package:ecommerce/screens/product/single_product_screen.dart';
import 'package:ecommerce/screens/splash_screen.dart';
import 'package:ecommerce/services/local_notification_service.dart';
import 'package:ecommerce/viewmodels/auth_viewmodel.dart';
import 'package:ecommerce/viewmodels/category_viewmodel.dart';
import 'package:ecommerce/viewmodels/global_ui_viewmodel.dart';
import 'package:ecommerce/viewmodels/product_viewmodel.dart';
import 'package:overlay_kit/overlay_kit.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  NotificationService.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GlobalUIViewModel()),
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => CategoryViewModel()),
        ChangeNotifierProvider(create: (_) => ProductViewModel()),
      ],
      child: OverlayKit(
        child: Consumer<GlobalUIViewModel>(builder: (context, loader, child) {
          // if (loader.isLoading) {
          //   OverlayLoadingProgress.start();
          // } else {
          //   OverlayLoadingProgress.stop();
          // }
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              fontFamily: "Poppins",
              primarySwatch: Colors.green,
              textTheme: GoogleFonts.aBeeZeeTextTheme(),
            ),
            initialRoute: "/splash",
            routes: {
              "/login": (BuildContext context) => LoginScreen(),
              "/splash": (BuildContext context) => SplashScreen(),
              "/register": (BuildContext context) => RegisterScreen(),
              "/forget-password": (BuildContext context) =>
                  ForgetPasswordScreen(),
              "/dashboard": (BuildContext context) => DashboardScreen(),
              "/add-product": (BuildContext context) => AddProductScreen(),
              "/edit-product": (BuildContext context) => EditProductScreen(),
              "/single-product": (BuildContext context) =>
                  SingleProductScreen(),
              "/single-category": (BuildContext context) =>
                  SingleCategoryScreen(),
              "/my-products": (BuildContext context) => MyProductScreen(),
            },
          );
        }),
      ),
    );
  }
}

