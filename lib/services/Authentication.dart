import 'package:google_sign_in/google_sign_in.dart';

class Authentication with ChangeNotifier {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  String userUid;
  String get getUserId => userUid;

  Future logIntoAccount(String email, String password) async {
    UserCredential userCredential = await firebaseAuth.signWithEmailAndPassword(email: email, password: password);

    User user = userCredential.user;
    userUid = user.uid;
    print(userUid);
    notifyListeners();
  } //Future

  Future logOutViaEmail() {
    return firebaseAuth.signOut();
  }

  Future createAccount(String email, String password) async {
    UserCredential userCredential = await firebaseAuth.createWithEmailAndPassword(email: email, password: password);

    User user = userCredential.user;
    userUid = user.uid;
    print(userUid);
    notifyListeners();
  } //Future

  Future signInWithGoogle() async {
    final GoogleSignInAcoount googleSingInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAcoount.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.credential(accessToken: googleSignInAuthentication.accessToken, idToken: googleSignInAuthentication.idToken);

    final UserCredential userCredential = await firebaseAuth.signInWithCredential(authCredential);
    final User user = userCredential.user;
    assert(user.uid != null);

    userUid = user.uid;
    print('je prihlaseny tento GOOGLE USER id => $userUid');
    notifyListeners();
  }

  Future signOutWihtGoogle() async {
    return googleSignIn.signOut();
  }
}
