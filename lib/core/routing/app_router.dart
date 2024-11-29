import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/routing/routes.dart';
import 'package:flutter_advanced/features/login/ui/login_screen.dart';
import 'package:flutter_advanced/features/onboarding/onbording_screen.dart';


class AppRouter{
  Route generateRoute(RouteSettings settings){
  switch(settings.name){
    case Routes.onBordingScreen:
      return MaterialPageRoute(builder: (_)=>const OnBordingScreen());
    case Routes.loginScreen:
      return MaterialPageRoute(builder: (_)=>const LoginScreen());
    default :
      return MaterialPageRoute(builder: (_)=>Scaffold(
        body: Center(
          child: Text('No Route Define For${settings.name}'),
        ),
      ) );
  }
  }
}