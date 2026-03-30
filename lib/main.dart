import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

          body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: SizedBox(
                width: double.infinity,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                const SizedBox(height: 60),

                const Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),

                const Text(
                  'Enter your credential to login',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 50),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.purple.shade50,
                    filled: true,
                    prefixIcon: const Icon(Icons.person),
                    hintText: 'Username',
                    contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.purple.shade50,
                    filled: true,
                    prefixIcon: const Icon(Icons.lock),
                    hintText: 'Password',
                    contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,

                         ),
                       ),
                     ),

                  const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                          onPressed:(){

                      },
                         style: ElevatedButton.styleFrom(
                           backgroundColor:Colors.purple,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadiusGeometry.circular(30.0),
                           ),
                         ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                   const SizedBox(height: 15),

                  TextButton(
                      onPressed:(){

                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                        TextButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                              MaterialPageRoute(builder: (context) => const SignUpPage()),
                            );
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),

                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                   ],
                 ),
               )
             ),
          ),
    );
  }
}

class SignUpPage extends StatelessWidget{
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.black,
          ),

        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: const SafeArea(
          child: Center(
            child: Text(
              'Blank',
              style: TextStyle(fontSize: 20),
            ),
          )
      ),
    );
  }


}