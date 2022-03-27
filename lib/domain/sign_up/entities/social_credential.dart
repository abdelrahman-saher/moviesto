import 'package:firebase_auth/firebase_auth.dart';

class SocialCredential {
  final AuthCredential authCredential;
  final String? email;
  SocialCredential(this.authCredential, {this.email});
}
