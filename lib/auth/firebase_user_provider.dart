import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SAValuesFirebaseUser {
  SAValuesFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SAValuesFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SAValuesFirebaseUser> sAValuesFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SAValuesFirebaseUser>(
            (user) => currentUser = SAValuesFirebaseUser(user));
