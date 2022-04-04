import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PikoJogoFirebaseUser {
  PikoJogoFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

PikoJogoFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PikoJogoFirebaseUser> pikoJogoFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PikoJogoFirebaseUser>(
            (user) => currentUser = PikoJogoFirebaseUser(user));
