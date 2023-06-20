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
      "assets/images/dest_4.png",
      "assets/images/dest_3.png",
      "assets/images/dest_5.png",
      "assets/images/dest_6.png",
      "assets/images/dest_7.png",
    ];

    final texts = [
      ["Goa", "4.7"],
      ["Mahe", "5.0"],
      ["Krabi", "4.6"],
      ["Phuket", "4.5"],
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
              Padding(
                padding: const EdgeInsets.only(left: 27, right: 27),
                child: SizedBox(
                  height: 380,
                  child: MasonryGridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemCount: 4,
                      mainAxisSpacing: 13,
                      crossAxisSpacing: 15,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  images[index],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 14, top: 8),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: IconButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.favorite,
                                                color: Color(0xFFFF5757),
                                                size: 18,
                                              ))),
                                    ),
                                  ),
                                  SizedBox(height: index == 1 || index == 3 ? 40 : 135),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 17),
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                        child: Text(texts[index][0],
                                            style: GoogleFonts.nunito(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Colors.white))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 17),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.star, color: Colors.white, size: 14,),
                                        const SizedBox(width: 5,),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 2),
                                          child: Text(texts[index][1], style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 10, color: Colors.white)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27, right: 32),
                child: Stack(
                  children: [
                    Image.asset(images[4], width: double.infinity, fit: BoxFit.fill,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 14, top: 8),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                    BorderRadius.circular(30)),
                                child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 18,
                                    ))),
                          ),
                        ),
                        const SizedBox(height:  45),
                        Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text("Kerela",
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.white))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.star, color: Colors.white, size: 14,),
                              const SizedBox(width: 5,),
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text("4.7", style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 10, color: Colors.white)),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 180,
                    child: Stack(
                      children: [
                        Image.asset(images[5], width: 180, fit: BoxFit.fill,),
                        Column(
                          children: [
                            SizedBox(
                              width: 180,
                              child: Row(
                                children: [
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 14, top: 8),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                              BorderRadius.circular(30)),
                                          child: IconButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.favorite,
                                                color: Colors.white,
                                                size: 18,
                                              ))),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height:  45),
                            Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text("Dubai",
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.white))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(Icons.star, color: Colors.white, size: 14,),
                                  const SizedBox(width: 5,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: Text("4.8", style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 10, color: Colors.white)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 15,),
                  SizedBox(
                    width: 160,
                    child: Stack(
                      children: [
                        Image.asset(images[6], width: 160, fit: BoxFit.fill,),
                        Column(
                          children: [
                            SizedBox(
                              width: 160,
                              child: Row(
                                children: [
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 14, top: 8),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                              BorderRadius.circular(30)),
                                          child: IconButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.favorite,
                                                color: Colors.white,
                                                size: 18,
                                              ))),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height:  45),
                            Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text("Costwolds",
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.white))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(Icons.star, color: Colors.white, size: 14,),
                                  const SizedBox(width: 5,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: Text("4.9", style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 10, color: Colors.white)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
