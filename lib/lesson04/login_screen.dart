import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen04 extends StatefulWidget {
  const LoginScreen04({super.key});

  @override
  State<LoginScreen04> createState() => _LoginScreen04State();
}

class _LoginScreen04State extends State<LoginScreen04> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email = 'baias';
  String password = '12345';


  void login(){
    if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
      if (emailController.text == email && passwordController.text == password ){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const NextScreen()));
      } else if(emailController.text != email){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Email is wrong ')));
      }

    } else if(emailController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Email can not be empty ')));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('password can not be empty ')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Email'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Password'),
            ),
            ElevatedButton(onPressed: () {
              login();
            }, child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}


class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

    );
  }
}

