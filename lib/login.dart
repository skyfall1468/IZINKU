import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController inputNIS = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IZINKU'),
        backgroundColor: Color(0xFFFDF6F7),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 20),

              Center(
                child: Image(
                  image: const AssetImage('assets/is_app_icon_512.png'),
                  width: 250,
                  height: 250,
                ),
              ),
              const SizedBox(height: 16),

              Center(
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: inputNIS,
                    decoration: const InputDecoration(
                      fillColor: Color(0xFFFFFFFF),
                      hintText: 'Masukkan NIS/Email',
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),

                    validator:(value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'NIS/Email Wajib Diisi';
                      }
                      return null;
                    },
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Center(
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: inputPassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      fillColor: Color(0xFFFFFFFF),
                      hintText: 'Masukkan Password Kamu',
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))
                      )
                    ),

                      validator:(value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'NIS/Email Wajib Diisi';
                          }
                          return null;
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    ElevatedButton(
                      child: const Text('Masuk'),
                      onPressed: () {

                        if (_formKey.currentState!.validate()) {
                            print('NIS/Email: ${inputNIS.text}');
                            print('Sandi: ${inputPassword}');
                            Navigator.pushReplacementNamed(context, '/hompage');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}