import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'package:store_app/core/constants.dart';
import 'package:store_app/features/authentication/data/models/face_book_model/face_book_model.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninInitial());
  FirebaseAuth auth = FirebaseAuth.instance;

  List<String> erorrList = [];
  FaceBookModel faceBookModel = FaceBookModel();

  Future<void> signInWithEmailAndPass({
    required String email,
    required String password,
  }) async {
    try {
      emit(SigninLoading());
      await auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      if (auth.currentUser!.emailVerified) {
        emit(SigninSuccess());
      } else if (!auth.currentUser!.emailVerified &&
          !erorrList.contains(kUserNotFound)) {
        erorrList.add(kverifyAccount);
        emit(SigninFailure(errorMassage: kverifyAccount));
      }
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'user-not-found' && !erorrList.contains(kUserNotFound)) {
        erorrList.add(kUserNotFound);
        emit(SigninFailure(errorMassage: kUserNotFound));
      } else if (ex.code == 'wrong-password' &&
          !erorrList.contains(kWrongPass)) {
        erorrList.add(kWrongPass);
        emit(SigninFailure(errorMassage: kWrongPass));
      } else if (!erorrList.contains(kSignInErorr)) {
        erorrList.add(kSignInErorr);
        print(ex.code);
        emit(SigninFailure(errorMassage: kSignInErorr));
      }
    } catch (e) {
      if (!erorrList.contains(kErorr)) {
        erorrList.add(kErorr);
        print(e.toString());
      }
      emit(SigninFailure(errorMassage: kErorr));
    }
  }

//google sign in method
  Future signInWithGoogle() async {
    // Trigger the authentication flow
    try {
      emit(SigninLoading());

      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return;
      }
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);

      emit(SigninSuccess());
    } catch (e) {
      if (!erorrList.contains(kErorr)) {
        erorrList.add(kErorr);
      }
      emit(SigninFailure(errorMassage: kErorr));
    }
  }

  //facebook sign in method
  Future signInWithFacebook() async {
    try {
      emit(SigninLoading());
      final LoginResult loginResult = await FacebookAuth.instance.login();

      if (loginResult.status == LoginStatus.success) {
        final data = await FacebookAuth.instance.getUserData();
        faceBookModel = FaceBookModel.fromJson(data);
        print('============================');
        print(faceBookModel.email);
        print('============================');
        emit(SigninSuccess());
      }
    } catch (e) {
      if (!erorrList.contains(kErorr)) {
        print('========================');
        print(e);
        print('========================');
        erorrList.add(kErorr);
      }
      emit(SigninFailure(errorMassage: kErorr));
    }
  }
}
