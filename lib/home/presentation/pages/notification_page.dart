import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/plane_icon.png"),
                const SizedBox(width: 13,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Villa du Ocean", style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16)),
                    Text("Pondichery", style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 12, color: Colors.black.withOpacity(0.4))),
                  ],
                ),
                const Spacer(),
                Text("Rs. 60,000/-", style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16, color: const Color(0xFFFC8955))),
              ],
            ),
            Container(
              width: double.infinity,
              height: 137,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10)
              ),
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
                    const SizedBox(width: 14,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("1 room", style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(height: 8),
                        Text("Superior sea view", style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 12)),
                        const SizedBox(height: 8),
                        Text("Double Occupancy", style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 12)),
                        const Spacer(),
                        Text("All Inclusive", style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 14)),
                      ],
                    ),
                    const SizedBox(width: 34,),
                    Column(
                      children: [
                        Image.asset("assets/images/time_icon.png"),
                        const Spacer(),
                        Image.asset("assets/images/profile_icon.png"),
                      ],
                    ),
                    const SizedBox(width: 12,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("8 Days", style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 14)),
                        const SizedBox(height: 2),
                        Text("4 days 3 nights", style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 12)),
                        const Spacer(),
                        Text("2 Adults", style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 14)),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
