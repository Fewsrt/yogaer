import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class YogaerFirebaseUser {
  YogaerFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

YogaerFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<YogaerFirebaseUser> yogaerFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<YogaerFirebaseUser>((user) => currentUser = YogaerFirebaseUser(user));
