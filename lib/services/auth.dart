import 'package:firebase_auth/firebase_auth.dart' as fbAuth;
import 'package:keframa/models/user.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final fbAuth.FirebaseAuth _auth = fbAuth.FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  // create User object based on FirebaseUser
  User _userFromFirebaseUser(fbAuth.User fbUser) {
    // if we get a fb user back, then return the uid, otherwise null
    return fbUser != null ? User(uid: fbUser.uid) : null;
  }

  // auth change user stream
  // when a user signs in/out, we get info on our user, and we're mapping it into our
  // own user object. So when listening to the stream, we get back our own user object.
  Stream<User> get authUser => _auth
      .authStateChanges()
      // .map((fbAuth.User fbUser) => _userFromFirebaseUser(fbUser));
      .map(_userFromFirebaseUser);

  // Sign in anonymously
  Future signInAnon() async {
    try {
      fbAuth.UserCredential creds = await _auth.signInAnonymously();
      // firebase user
      fbAuth.User user = creds.user;

      // now we return a custom user object we defined in our models that contains a uid,
      // instead of the fb user w/ all other data we may not need
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign in with email & password
  Future loginWithEmailAndPassword(String email, String password) async {
    try {
      fbAuth.UserCredential creds = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      fbAuth.User user = creds.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Register with email & password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      fbAuth.UserCredential creds = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      fbAuth.User user = creds.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<fbAuth.User> signInGoogle() async {
    try {
      GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
      GoogleSignInAuthentication googleAuth =
          await googleSignInAccount.authentication;

      final fbAuth.AuthCredential creds = fbAuth.GoogleAuthProvider.credential(
          idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

      fbAuth.UserCredential authresult =
          await _auth.signInWithCredential(creds);
      fbAuth.User user = authresult.user;

      //check if user has real account
      // assert(!user.isAnonymous);
      // assert(await user.getIdToken() != null);

      // // make sure that this is same user that we signed in with
      // final fbAuth.User currentUser = _auth.currentUser;
      // assert(currentUser.uid == user.uid);

      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Google Sign out

  Future<void> signOutGoogle() async {
    try {
      await _googleSignIn.signOut();
      print("User signed out of Google");
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
