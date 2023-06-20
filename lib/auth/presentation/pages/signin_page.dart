import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/auth/presentation/states/signin_state.dart';
import 'package:travel_app/home/presentation/pages/home_page.dart';

class SigninPage extends ConsumerStatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends ConsumerState<SigninPage> {
  TextEditingController nameCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/signin_bg.png",
              fit: BoxFit.fill,
            )),
        Padding(
          padding: const EdgeInsets.only(left: 37, right: 37),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 25),
                Center(
                  child: Text("SIGN IN",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.black.withOpacity(0.5))),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 353,
                  child: Stack(
                    children: [
                      Image.asset("assets/images/signin_image.png",),
                     Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("Voyage",
                              style: GoogleFonts.qwigley(
                                  fontWeight: FontWeight.w400, fontSize: 96)),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: nameCont,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400, fontSize: 15),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 13),
                      hintText: "Email or Phone No.",
                      hintStyle: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400, fontSize: 15),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: passwordCont,
                    obscureText: !isVisible,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400, fontSize: 15),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          icon: Icon(
                            isVisible ? Icons.visibility_off : Icons.visibility,
                            color: const Color(0xFF8B8B8B).withOpacity(0.44),
                          )),
                      contentPadding: const EdgeInsets.only(left: 13),
                      hintText: "Password",
                      hintStyle: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400, fontSize: 15),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Colors.black.withOpacity(0.4)))),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        ref.read(signinProvider.notifier).loginUser(nameCont.text, passwordCont.text).then((value) {
                          if(value != null) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                          }
                          else {
                            showDialog(context: context, builder: (context) => AlertDialog(
                              title: const Text("Wrong credentials"),
                              actions: [
                                ElevatedButton(onPressed: () {
                                  Navigator.pop(context);
                                }, child: const Text("Ok"))
                              ],
                            ));
                          }
                        });
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => LoadingPage(nameCont.text, passwordCont.text)));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sign in",
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.white)),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white.withOpacity(0.8),
                          )
                        ],
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.4))),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(left: 5)
                      ),
                      child: Text("Create now",
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
