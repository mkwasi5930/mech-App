
import 'package:flutter/material.dart';
import 'package:mech_app/screens/home.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  static const routName = '/sign_in';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isLoggingIn = true;
  bool isSigningIn = false;
  String fullName = '';
  String email = '';
  String phoneNumber = '';
  String city = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();

  void _setLogginIn() {
    setState(() {
      isLoggingIn = !isLoggingIn;
    });
  }

  Future<bool> _handleForm(BuildContext context) async {
    bool isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      setState(() {
        isSigningIn = true;
      });
      setState(() {
        isSigningIn = false;
      });

      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Card(
          child: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                if (!isLoggingIn)
                  TextFormField(
                    key: const ValueKey("fullname"),
                    decoration: const InputDecoration(label: Text("Full Name:")),
                    onSaved: (value) {
                      fullName = value!.trim();
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter your full name";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                  key: const ValueKey("email"),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(label: Text("Email:")),
                  onSaved: (value) {
                    email = value!.trim();
                  },
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return "enter a valid email";
                    }
                    return null;
                  },
                ),
                if (!isLoggingIn)
                  TextFormField(
                    key: const ValueKey("phoneNumber"),
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(label: Text("Phone:")),
                    onSaved: (value) {
                      phoneNumber = value!.trim();
                    },
                    validator: (value) {
                      if (value!.isEmpty || value.trim().length != 10) {
                        return "enter a valid phone";
                      }
                      return null;
                    },
                  ),
                  if (!isLoggingIn)
                  TextFormField(
                  key: const ValueKey("city"),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(label: Text("City")),
                  onSaved: (value) {
                    email = value!.trim();
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter a city name";
                    }
                    return null;
                  },
                ), 
                TextFormField(
                  key: const ValueKey("password"),
                  obscureText: true,
                  decoration: const InputDecoration(label: Text("Password:")),
                  onSaved: (value) {
                    password = value!.trim();
                  },
                  validator: (value) {
                    if (value!.isEmpty || value.length < 8) {
                      return "enter a valid password";
                    }
                    return null;
                  },
                ),
                if (!isLoggingIn)
                  TextFormField(
                    key: const ValueKey("confirmPassword"),
                    obscureText: true,
                    decoration:
                        const InputDecoration(label: Text("Confirm Password:")),
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return "password did not match";
                      }
                      return null;
                    },
                  ),
                isSigningIn
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () {
                              Navigator.of(context).
                              push(MaterialPageRoute(builder: (context) => const HomePage(key: ValueKey(0),)));
                            },
                        child: isLoggingIn
                            ? const Text("Login")
                            : const Text("SignUp"),),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: _setLogginIn,
                    child: isLoggingIn
                        ? const Text("Create an Account")
                        : const Text("Login to Account"))
              ],
            )),
      ))),
    ));
  }
}
