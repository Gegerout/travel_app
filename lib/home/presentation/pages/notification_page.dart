import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/home/presentation/states/notif_state.dart';

class NotificationPage extends ConsumerWidget {
  const NotificationPage({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          title: Text("Checkout",
              style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 26),
              child: SizedBox(
                width: 58,
                height: 58,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(image)),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 23, right: 17),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/plane_icon.png"),
                    const SizedBox(
                      width: 13,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Villa du Ocean",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w700, fontSize: 16)),
                        Text("Pondichery",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.4))),
                      ],
                    ),
                    const Spacer(),
                    Text("Rs. 60,000/-",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: const Color(0xFFFC8955))),
                  ],
                ),
                const SizedBox(height: 14),
                Container(
                  width: double.infinity,
                  height: 137,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, top: 15, bottom: 16),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image.asset("assets/images/bed_icon.png"),
                            const Spacer(),
                            Image.asset("assets/images/meal_icon.png"),
                          ],
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("1 room",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700, fontSize: 14)),
                            const SizedBox(height: 8),
                            Text("Superior sea view",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700, fontSize: 12)),
                            const SizedBox(height: 8),
                            Text("Double Occupancy",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700, fontSize: 12)),
                            const Spacer(),
                            Text("All Inclusive",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700, fontSize: 14)),
                          ],
                        ),
                        const SizedBox(
                          width: 34,
                        ),
                        Column(
                          children: [
                            Image.asset("assets/images/time_icon.png"),
                            const Spacer(),
                            Image.asset("assets/images/profile_icon.png"),
                          ],
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("8 Days",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700, fontSize: 14)),
                            const SizedBox(height: 2),
                            Text("4 days 3 nights",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700, fontSize: 12)),
                            const Spacer(),
                            Text("2 Adults",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700, fontSize: 14)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 26),
                Row(
                  children: [
                    Image.asset("assets/images/profile_big.png"),
                    const SizedBox(
                      width: 17,
                    ),
                    Text("Traveller Information",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700, fontSize: 14)),
                  ],
                ),
                const SizedBox(height: 19),
                Row(
                  children: [
                    Text("Adult 1",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.63))),
                    Text("*",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: const Color(0xFFFF5757))),
                  ],
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 75,
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
                          hintText: "Title",
                          hintStyle: GoogleFonts.nunito(
                              fontWeight: FontWeight.w500, fontSize: 14),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.63),
                            ),),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xFF8B8B8B).withOpacity(0.44),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          ref.read(checkoutProvider.notifier).checkName(value);
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
                              color: ref.watch(checkoutProvider).isName ? Colors.black.withOpacity(0.63) : Colors.red,
                            ),),
                          enabledBorder: ref.watch(checkoutProvider).isName ? null : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ref.watch(checkoutProvider).isName ? Colors.black.withOpacity(0.63) : Colors.red,
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          ref.read(checkoutProvider.notifier).checkSurname(value);
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
                              color: ref.watch(checkoutProvider).isSurname ? Colors.black.withOpacity(0.63) : Colors.red,
                            ),),
                          enabledBorder: ref.watch(checkoutProvider).isSurname ? null : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xFF8B8B8B).withOpacity(0.44),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 19),
                Text("Date of birth",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.63))),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 96,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          ref.read(checkoutProvider.notifier).checkYear(value);
                        },
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
                              color: ref.watch(checkoutProvider).isYear ? Colors.black.withOpacity(0.63) : Colors.red,
                            ),),
                          enabledBorder: ref.watch(checkoutProvider).isYear ? null : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xFF8B8B8B).withOpacity(0.44),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: 96,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          ref.read(checkoutProvider.notifier).checkMonth(value);
                        },
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
                              color: ref.watch(checkoutProvider).isMonth ? Colors.black.withOpacity(0.63) : Colors.red,
                            ),),
                          enabledBorder: ref.watch(checkoutProvider).isMonth ? null : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xFF8B8B8B).withOpacity(0.44),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: 96,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          ref.read(checkoutProvider.notifier).checkDay(value);
                        },
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
                              color: ref.watch(checkoutProvider).isDay ? Colors.black.withOpacity(0.63) : Colors.red,
                            ),),
                          enabledBorder: ref.watch(checkoutProvider).isDay ? null : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xFF8B8B8B).withOpacity(0.44),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 19),
                Text("Adult 2",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.63))),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 75,
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
                          hintText: "Title",
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
                    Container(
                      width: 130,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          ref.read(checkoutProvider2.notifier).checkName(value);
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
                              color: ref.watch(checkoutProvider2).isName ? Colors.black.withOpacity(0.63) : Colors.red,
                            ),),
                          enabledBorder: ref.watch(checkoutProvider2).isName ? null : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xFF8B8B8B).withOpacity(0.44),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          ref.read(checkoutProvider2.notifier).checkSurname(value);
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
                              color: ref.watch(checkoutProvider2).isSurname ? Colors.black.withOpacity(0.63) : Colors.red,
                            ),),
                          enabledBorder: ref.watch(checkoutProvider2).isSurname ? null : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xFF8B8B8B).withOpacity(0.44),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 19),
                Text("Date of birth",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.63))),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 96,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          ref.read(checkoutProvider2.notifier).checkYear(value);
                        },
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
                              color: ref.watch(checkoutProvider2).isYear ? Colors.black.withOpacity(0.63) : Colors.red,
                            ),),
                          enabledBorder: ref.watch(checkoutProvider2).isYear ? null : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xFF8B8B8B).withOpacity(0.44),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: 96,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          ref.read(checkoutProvider2.notifier).checkMonth(value);
                        },
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
                              color: ref.watch(checkoutProvider2).isMonth ? Colors.black.withOpacity(0.63) : Colors.red,
                            ),),
                          enabledBorder: ref.watch(checkoutProvider2).isMonth ? null : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xFF8B8B8B).withOpacity(0.44),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: 96,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          ref.read(checkoutProvider2.notifier).checkDay(value);
                        },
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
                              color: ref.watch(checkoutProvider2).isDay ? Colors.black.withOpacity(0.63) : Colors.red,
                            ),),
                          enabledBorder: ref.watch(checkoutProvider2).isDay ? null : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xFF8B8B8B).withOpacity(0.44),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 23),
                Row(
                  children: [
                    Image.asset("assets/images/card_icon.png"),
                    const SizedBox(
                      width: 17,
                    ),
                    Text("Booking/Payment",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700, fontSize: 14)),
                  ],
                ),
                const SizedBox(height: 13),
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
                      suffixIcon: Image.asset("assets/images/logos_visa.png", width: 28, height: 9,),
                      contentPadding: const EdgeInsets.only(left: 12),
                      hintText: "Credit Card",
                      hintStyle: GoogleFonts.nunito(
                          fontWeight: FontWeight.w500, fontSize: 14),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.63),
                          ),),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.63),
                          ),),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.63),
                          ),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
