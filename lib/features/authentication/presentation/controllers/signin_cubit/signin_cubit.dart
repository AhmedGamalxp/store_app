import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:store_app/core/constants.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninInitial());
  FirebaseAuth auth = FirebaseAuth.instance;
  List<String> erorrList = [];
  Future<void> signInWithEmailAndPass({
    required String email,
    required String password,
  }) async {
    try {
      emit(SigninLoading());
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(SigninSuccess());
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
        emit(SigninFailure(errorMassage: kSignInErorr));
      }
    } catch (e) {
      if (!erorrList.contains(kErorr)) {
        erorrList.add(kErorr);
      }
      emit(SigninFailure(errorMassage: kErorr));
    }
  }
}
