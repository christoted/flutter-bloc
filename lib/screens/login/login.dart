import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grow_now_clone/components/CustomButton.dart';
import 'package:grow_now_clone/constant.dart';
import 'package:grow_now_clone/screens/login/bloc/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (_) => LoginBloc(),
      child: MultiBlocListener(
        listeners: [
          // use one listener should be fine 
          BlocListener<LoginBloc, LoginState>(listener: (context, state) {
            if (state is LoginSuccessState) {
              print("Naviate to root");
              // Navigate here
              Navigator.pushNamed(context, rootRoute);
            } else if (state is UpdateFormState) {
              print("TEST state");
            } else {
              print("state apa ini");
            }
          })
        ],
        child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/background.jpg"),
              fit: BoxFit.cover,
            )),
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.all(8.0),
              height: MediaQuery.of(context).size.height / 1.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 110,
                    margin: const EdgeInsets.only(left: 8, top: 16),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/grownow-grey-logo.png"),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        BlocBuilder<LoginBloc, LoginState>(
                            buildWhen: (prev, curr) => prev.email != curr.email,
                            builder: (context, state) {
                              return TextFormField(
                                controller: _emailController,
                                decoration: const InputDecoration(
                                  // icon: Icon(Icons.person),
                                  // hintText: 'Type your email here',
                                  labelText: 'Email',
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),

                                  // focusColor: Colors.white,
                                  // hoverColor: Colors.white,
                                  // fillColor: Colors.white
                                ),
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                    //context.read<LoginBloc>().add(EmailChanged(value ?? ""));
                                  BlocProvider.of<LoginBloc>(context)
                                      .add(FormChanged(value ?? "", _passwordController.text));
                                },
                                validator: (String? value) {
                                  return (value != null && value.contains('@'))
                                      ? 'Do not use the @ char.'
                                      : null;
                                },
                              );
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        BlocBuilder<LoginBloc, LoginState>(
                            buildWhen: (previous, current) =>
                                previous.password != current.password,
                            builder: (context, state) {
                              return TextFormField(
                                controller: _passwordController,
                                decoration: const InputDecoration(
                                  // icon: Icon(Icons.key),
                                  // hintText: 'Type your password here',
                                  labelText: 'Password',
                                  // hintStyle: TextStyle(color: Colors.white),
                                  // labelStyle: TextStyle(color: Colors.grey)
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                ),
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  BlocProvider.of<LoginBloc>(context)
                                      .add(FormChanged(_emailController.text, value ?? ""));
                                },
                                validator: (String? value) {
                                  return (value != null && value.contains('@'))
                                      ? 'Do not use the @ char.'
                                      : null;
                                },
                              );
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        BlocBuilder<LoginBloc, LoginState>(
                            builder: (context, state) {
                          if (state.email.isEmpty || state.password.isEmpty) {
                             return CustomButton(
                              buttonColor: Colors.blueAccent,
                                buttonText: "Login",
                                onButtonPressed: null
                                );
                          } else {
                            return CustomButton(
                               buttonColor: Colors.amber.shade800,
                                buttonText: "Login",
                                onButtonPressed: () {
                                  _validate();
                                });
                          }
                        })
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    ));
  }

  void _validate() {
    BlocProvider.of<LoginBloc>(context).add(
        LoginButtonPressed(_emailController.text, _passwordController.text));
  }
}
