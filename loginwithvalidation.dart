import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget
{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar
          (
            title: Text('Login Page'),
          ),
      body: Padding(

          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child:Column(

                children: [

                  TextFormField(controller:_emailController,decoration: InputDecoration(hintText: "Enter Your Email"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your Email';
                        }
                        return null;
                      },),
                  SizedBox(height: 10),
                  TextFormField(controller:_passwordController,obscureText:true,decoration: InputDecoration(hintText: "Enter Your Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: ()
                  {



                    if (_formKey.currentState!.validate()) {
                      // Process login here
                      String email = _emailController.text;
                      String password = _passwordController.text;
                      // Implement your login logic here
                      print("success");
                    }


                  }, child: Text("Login"))


                ],


            ),

          ),


      ),

    );
  }
}


