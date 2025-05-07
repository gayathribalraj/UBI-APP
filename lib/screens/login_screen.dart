import 'package:flutter/material.dart';
import 'package:ubi/screens/dashboard_screen.dart';
// import '../themes/theme_global.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppConfig {
  final loginFormgroup = FormGroup({
    'username': FormControl(
      value: '',
      validators: [
        Validators.required,
        // Validators.delegate(checkForRestrictedSpecialChars),
      ],
    ),
    'password': FormControl(
      value: '',
      validators: [
        Validators.required,
        // Validators.pattern(AppConstants.PATTERN_SPECIALCHAR),
      ],
    ),
  });
}

class LoginScreen extends StatelessWidget {
  final TextEditingController userNameValidation = TextEditingController();
  final TextEditingController passValidation = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loginFormgroup = AppConfig().loginFormgroup;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(235, 2, 34, 66),
              Color.fromARGB(211, 36, 12, 171),
            ],
          ),
        ),
        child: ReactiveForm(
          formGroup: loginFormgroup,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Welcome!! ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReactiveTextField(
                              formControlName: 'username',
                              autofocus: true,
                              decoration: InputDecoration(
                                labelText: 'Username',
                                border: OutlineInputBorder(),
                              ),
                              validationMessages: {
                                ValidationMessage.required:
                                    (error) => 'UserName is Required',
                                ValidationMessage.contains:
                                    (error) => error as String,
                              },
                            ),
                            const SizedBox(height: 40),
                            ReactiveTextField(
                              formControlName: 'password',
                              decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                              ),
                              obscureText: true,
                              validationMessages: {
                                ValidationMessage.required:
                                    (error) => 'Password is Required',
                                ValidationMessage.contains:
                                    (error) => error as String,
                              },
                            ),
                            SizedBox(height: 40),
                            SizedBox(
                              height: 40,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DashboardScreen(),
                                      ),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(235, 2, 34, 66),
                                        Color.fromARGB(211, 36, 12, 171),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),

                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Sign In',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        letterSpacing: 2,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Center(
                            child: Text(
                              'Powered by LENDperfect',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
