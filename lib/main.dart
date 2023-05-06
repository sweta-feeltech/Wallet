import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:general_expense_app/pages/Dashboard/bottom_bar.dart';
import 'package:general_expense_app/pages/Dashboard/expense_screen.dart';
import 'package:general_expense_app/pages/Dashboard/home_screen.dart';
import 'package:general_expense_app/pages/Dashboard/inventory_screen.dart';
import 'package:general_expense_app/pages/Dashboard/profile_screen.dart';
import 'package:general_expense_app/pages/LoginRegistrationScreens/login_screen.dart';
import 'package:general_expense_app/pages/LoginRegistrationScreens/splash_screen.dart';
import 'package:general_expense_app/responsive/responsive_layout.dart';

import 'pages/LoginRegistrationScreens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // await FkUserAgent.init();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  )
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, DeviceOrientation.portraitDown
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        // fontFamily: 'Poppins',
        // fontFamily: 'PTSerif',
      ),

      initialRoute: ResponsiveLayout.routeName,
      onGenerateRoute: globalGenerateRoute,
    );
  }

  static MaterialPageRoute? globalGenerateRoute(RouteSettings settings) {
    if(settings.name == ResponsiveLayout.routeName) {
      return getMaterialPageRoute(ResponsiveLayout(
        // mobileBody: OtpVerificationScreen(arguments: OtpVerificationScreenArguments("9725676540"),),
          mobileBody: SplashScreen(),
          TabletBody: SplashScreen()
      )
      );
    }

    //// FOR MOBILE SCREENS
    /// LOGINSCREEN AND SIGN UP AND VERIFICATION SCREEN
    if(settings.name == LogInScreen.routeName) {
      return getMaterialPageRoute(LogInScreen());
    }
    if(settings.name == MainPageScreen.routeName) {
      return getMaterialPageRoute(MainPageScreen());
    }
    if(settings.name == HomeScreen.routeName) {
      return getMaterialPageRoute(BottomBar());
    }
    if(settings.name == ProfileScreen.routeName) {
      return getMaterialPageRoute(ProfileScreen(
              (){}
      ));
    }
    if(settings.name == ExpenseScreen.routeName) {
      return getMaterialPageRoute(ExpenseScreen((){}));
    }
    if(settings.name == InventoryScreen.routeName) {
      return getMaterialPageRoute(InventoryScreen((){}));
    }
}

  static MaterialPageRoute getMaterialPageRoute(
      Widget Screen,
      // {RouteSettings? setting}
      ) {
    return MaterialPageRoute(
      // settings: setting,
        builder: ((context) {
          return Screen;
        })
    );
  }
}



