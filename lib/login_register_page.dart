import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:testauth/auth.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  
  Future<void> signInwithEmailAndPassword() async {
    try {
      await Auth().signInwithEmailAndPassword(
        email: _email.text, 
        password: _password.text,
        );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserwithEmailAndPassword() async {
    try {
      await Auth().createUserwithEmailAndPassword(
        email: _email.text, 
        password: _password.text,
        );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _title() {
    return const Text('Firebase Auth');
  }

  Widget _entryField(
    String title,
    TextEditingController controller,
  ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: title,
      ),
    );
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : 'Humm ? $errorMessage');
  }

  Widget _submitButton() {
    return ElevatedButton(
      onPressed: isLogin ? signInwithEmailAndPassword : createUserwithEmailAndPassword, 
      child: Text(isLogin ? 'Login' : 'Register' ),
      );
  }

  Widget _loginOrRegisterButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      }, 
      child: Text(isLogin ? 'Register Instead' : 'Login Instead'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _entryField('email', _email),
            _entryField('password', _password),
            _errorMessage(),
            _submitButton(),
            _loginOrRegisterButton()
          ],),
      ),
    );
  }
}