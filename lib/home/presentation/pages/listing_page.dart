import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class ListingPage extends StatelessWidget {
  const ListingPage({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    final images = [
      "assets/images/dest_1.png",
      "assets/images/dest_2.png",
      "assets/images/dest_3.png",
      "assets/images/dest_4.png",
      "assets/images/dest_5.png",
      "assets/images/dest_6.png",
      "assets/images/dest_7.png",
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Popular Destinations",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.black)),
          ),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28),
                child: Container(
                  width: double.infinity,
                  height: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w500, fontSize: 14),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xFF9F9F9F),
                      ),
                      contentPadding: const EdgeInsets.only(left: 12),
                      hintText: "Destination",
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
              ),
      SizedBox(
          height: 412,
          child: MasonryGridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          child: Image.asset(images[index]),
                        );
                      }),
      ),
              Image.asset(images[4]),
              Row(
                children: [Image.asset(images[5]), Image.asset(images[6])],
              )
            ],
          ),
        ));
  }
}
