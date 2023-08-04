import 'package:flutter/material.dart';
import 'package:flutter_application_4/core/base/state/base_state.dart';
import 'package:flutter_application_4/views/common/login/viewmodel/login_viewmodel.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends BaseState<LoginView, LoginViewModel> {
  _LoginViewState() : super(controller: LoginViewModel());

  @override
  void onControllerReady() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * .30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logoNuvslife.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: controller.emailController,
                      keyboardType: TextInputType.emailAddress,
                      focusNode: controller.emailFocusNode,
                      decoration: InputDecoration(
                        enabledBorder: newMethod(),
                        disabledBorder: newMethod(),
                        focusedBorder: newMethod(),
                        hintText: 'Eposta ya da Telefon',
                        suffixIcon: const Icon(
                          Icons.person_outlined,
                          color: Colors.black54,
                        ),
                      ),
                      onFieldSubmitted: (valu) {
                        FocusScope.of(context)
                            .requestFocus(controller.passwordFocusNode);
                      },
                      cursorColor: Colors.black54,
                    ),
                    customSizedBox(),
                    Obx(() => TextFormField(
                          obscureText: !controller.isPasswordVisible,
                          focusNode: controller.passwordFocusNode,
                          controller: controller.passwordController,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            enabledBorder: newMethod(),
                            disabledBorder: newMethod(),
                            focusedBorder: newMethod(),
                            hintText: 'Şifre',
                            suffixIcon:
                                controller.passwordController.text.isNotEmpty
                                    ? InkWell(
                                        onTap: () {
                                          controller.changePasswordVisiblity();
                                        },
                                        child: Icon(
                                          controller.isPasswordVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Colors.black54,
                                        ),
                                      )
                                    : const Icon(
                                        Icons.lock_outline,
                                        color: Colors.black54,
                                      ),
                          ),
                        )),
                    customSizedBox(),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFF407BFF)),
                            elevation: MaterialStateProperty.all<double>(0),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            )),
                        child: const SizedBox(
                          height: 42,
                          width: 500,
                          child: Center(
                            child: Text(
                              "Giriş Yap",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    customSizedBox2(),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Şifremi Unuttum",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    customSizedBox3(),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Hesabınız yok mu?",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    customSizedBox2(),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          elevation: MaterialStateProperty.all<double>(0),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          side: MaterialStateProperty.all(
                            const BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ),
                          ),
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        child: const SizedBox(
                          height: 42,
                          width: 500,
                          child: Center(
                            child: Text(
                              "Kayıt Ol",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder newMethod() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(29),
      borderSide: const BorderSide(color: Colors.black, width: 1.0),
    );
  }
}

Widget customSizedBox() => const SizedBox(
      height: 20,
    );

Widget customSizedBox2() => const SizedBox(
      height: 5,
    );

Widget customSizedBox3() => const SizedBox(
      height: 40,
    );
