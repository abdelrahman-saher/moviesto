import 'package:auto_route/annotations.dart';
import 'package:moviesto/presentation/main_screen.dart';
import 'package:moviesto/presentation/sign_up/screens/main.dart';

@MaterialAutoRouter(replaceInRouteName: "Route", routes: [
  AutoRoute(
    page: MainScreen,
    initial: true,
  ),
  AutoRoute(
    page: SignUpPage,
  )
])
class $AppRouter {}
