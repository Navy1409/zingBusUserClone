import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:zing_bus_clone/view/home_navigation.dart';

class Auth{
  static final FirebaseAuth _firebaseAuth= FirebaseAuth.instance;
  static String verifyId="";
  // function to send otp
  static Future sendOtp(
      {
        required String phone,
        required Function errorStep,
        required Function nextStep,
      })async {
    await _firebaseAuth.verifyPhoneNumber(
        timeout: Duration(seconds: 30),
        phoneNumber: "+91$phone",
        verificationCompleted: (PhoneAuthCredential) async {
          return;
        },
        verificationFailed: (error) async {
          return;
        },
        codeSent: (verificationId, forceResendingToken) async {
          verifyId = verificationId;
          nextStep();
        },
        codeAutoRetrievalTimeout: (verificationId) async {
          return;
        }
    ).onError((error, stackTrace) {
      errorStep();
    });
  }


  static Future loginWithOtp({required String otp})async{
    final cred = PhoneAuthProvider.credential(verificationId: verifyId, smsCode: otp);
    try{
      final user= await _firebaseAuth.signInWithCredential(cred);
      if(user.user!=null){
        return "Success";
      }
      else{
        return "Wrong OTP";
      }
    }
    on FirebaseAuthException catch(e){
      return e.message.toString();
    }
    catch(e){
      return e.toString();
    }
  }


  static Future logOut( ) async{
    await _firebaseAuth.signOut();
  }

  static  Future<bool> isLoggedIn() async{
    var user = _firebaseAuth.currentUser;
    return user!=null;
  }
}