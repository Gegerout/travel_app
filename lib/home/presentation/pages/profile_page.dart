import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/core/states/main_state.dart';
import 'package:travel_app/home/presentation/states/profile_state.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage(
      {Key? key,
      required this.name,
      required this.surname,
      required this.image,
      required this.email,
      required this.gender,
      required this.username,
      required this.token})
      : super(key: key);

  final String name;
  final String surname;
  final String image;
  final String email;
  final String gender;
  final String username;
  final String token;

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameCont = TextEditingController(text: widget.name);
    TextEditingController surnameCont =
        TextEditingController(text: widget.surname);
    TextEditingController emailCont = TextEditingController(text: widget.email);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
          title: Text("My Account",
              style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 28, right: 28),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      Center(
                          child: Image.asset(
                        "assets/images/ellipse.png",
                        width: 175,
                        height: 175,
                        fit: BoxFit.fill,
                      )),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            widget.image,
                            width: 145,
                            height: 145,
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Text("Personal Details",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 16)),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 161,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        controller: nameCont,
                        onChanged: (value) {
                          //ref.read(checkoutProvider.notifier).checkName(value);
                        },
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w500, fontSize: 14),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 11),
                          hintText: "First Name",
                          hintStyle: GoogleFonts.nunito(
                              fontWeight: FontWeight.w500, fontSize: 14),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.63),
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black.withOpacity(0.63),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    Container(
                      width: 161,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        controller: surnameCont,
                        onChanged: (value) {
                          //ref.read(checkoutProvider.notifier).checkSurname(value);
                        },
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w500, fontSize: 14),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 11),
                          hintText: "Last Name",
                          hintStyle: GoogleFonts.nunito(
                              fontWeight: FontWeight.w500, fontSize: 14),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.63),
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    const Color(0xFF8B8B8B).withOpacity(0.44),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 94,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w500, fontSize: 14),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 11),
                          suffixIconConstraints: const BoxConstraints(
                            minHeight: 8,
                            minWidth: 8,
                          ),
                          suffixIcon: const Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF9F9F9F),
                          ),
                          hintText: "Year",
                          hintStyle: GoogleFonts.nunito(
                              fontWeight: FontWeight.w500, fontSize: 14),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.63),
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    const Color(0xFF8B8B8B).withOpacity(0.44),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 130,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w500, fontSize: 14),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 11),
                          suffixIconConstraints: const BoxConstraints(
                            minHeight: 8,
                            minWidth: 8,
                          ),
                          suffixIcon: const Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF9F9F9F),
                          ),
                          hintText: "Month",
                          hintStyle: GoogleFonts.nunito(
                              fontWeight: FontWeight.w500, fontSize: 14),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.63),
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    const Color(0xFF8B8B8B).withOpacity(0.44),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 84,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w500, fontSize: 14),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 11),
                          suffixIconConstraints: const BoxConstraints(
                            minHeight: 8,
                            minWidth: 8,
                          ),
                          suffixIcon: const Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF9F9F9F),
                          ),
                          hintText: "Day",
                          hintStyle: GoogleFonts.nunito(
                              fontWeight: FontWeight.w500, fontSize: 14),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.63),
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    const Color(0xFF8B8B8B).withOpacity(0.44),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                Text("Email ID",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: const Color(0xFF999999))),
                const SizedBox(height: 9),
                Container(
                  width: double.infinity,
                  height: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    controller: emailCont,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w500, fontSize: 14),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 12),
                      hintText: "Email Id",
                      hintStyle: GoogleFonts.nunito(
                          fontWeight: FontWeight.w500, fontSize: 14),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF8B8B8B).withOpacity(0.44),
                          ),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w500, fontSize: 14),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 12),
                      hintText: "Phone number",
                      hintStyle: GoogleFonts.nunito(
                          fontWeight: FontWeight.w500, fontSize: 14),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF8B8B8B).withOpacity(0.44),
                          ),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Text("Professional Details",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: const Color(0xFF999999))),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w500, fontSize: 14),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 12),
                      hintText: "Description",
                      hintStyle: GoogleFonts.nunito(
                          fontWeight: FontWeight.w500, fontSize: 14),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF8B8B8B).withOpacity(0.44),
                          ),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      ref.read(profileProvider.notifier).updateUser(
                          nameCont.text,
                          surnameCont.text,
                          widget.image,
                          widget.gender,
                          emailCont.text,
                          widget.username,
                          widget.token);
                      ref.refresh(mainProvider).value;
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text("Update",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
