import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Norvic International Hospital',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color.fromARGB(255, 3, 71, 126),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              // SizedBox(height: 10),
              Text('Sign in to your account',
                  style:
                      TextStyle(color: const Color.fromARGB(255, 3, 71, 126))),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Mobile no.',
                    // hintText: 'Mobile no.',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone)),
              ),
              SizedBox(height: 10),

              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility_off))),

              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: Text('Forgot Password?'))),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: const Color.fromARGB(255, 3, 71, 126)),
                    onPressed: () {},
                    child:
                        Text('Login', style: TextStyle(color: Colors.white))),
              ),
              SizedBox(height: 15),
              Text(
                'By loggin in, you agree to our Terms and Privacy policy',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 15),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Activate Account'),
                  )),

              SizedBox(height: 15),
              Text(
                'If you are loggin in for the first time, please activate your account',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
