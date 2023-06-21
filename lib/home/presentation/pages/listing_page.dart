import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class ListingPage extends StatefulWidget {
  const ListingPage({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  State<ListingPage> createState() => _ListingPageState();
}

class _ListingPageState extends State<ListingPage> {
  bool isFile = false;

  @override
  void initState() {
    super.initState();
    if(widget.image.contains("/cache/")) {
      isFile = true;
    }
    else {
      isFile = false;
    }
  }

  List images = [
    "assets/images/dest_1.png",
    "assets/images/dest_2.png",
    "assets/images/dest_4.png",
    "assets/images/dest_3.png",
    "assets/images/dest_5.png",
    "assets/images/dest_6.png",
    "assets/images/dest_7.png",
  ];

  List texts = [
    ["Goa", "4.7", false],
    ["Mahe", "5.0", false],
    ["Krabi", "4.6", false],
    ["Phuket", "4.5", false],
    ["Kerela", "4.7", false],
    ["Dubai", "4.8", false],
    ["Costwolds", "4.9", false]
  ];

  @override
  Widget build(BuildContext context) {
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
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15, top: 15),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: isFile ? Image.file(File(widget.image), fit: BoxFit.fill,) : Image.network(widget.image)),
                ),
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
              const SizedBox(height: 17),
              Padding(
                padding: const EdgeInsets.only(left: 27, right: 27),
                child: SizedBox(
                  height: 400,
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
                                  width: index == 3 ? 175 : null,
                                  height: index == 3 ? 120 : null,
                                  fit: index == 3 ? BoxFit.fill : null,
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
                                              onPressed: () {
                                                setState(() {
                                                  texts[index][2] = !texts[index][2];
                                                });
                                              },
                                              icon: Icon(
                                                Icons.favorite,
                                                color: texts[index][2] ? const Color(0xFFFF5757) : Colors.white,
                                                size: 18,
                                              ))),
                                    ),
                                  ),
                                  SizedBox(height: index == 1 || index == 3 ? 35 : 145),
                                  SizedBox(height: index == 0 ? 14 : 0,),
                                  SizedBox(height: index == 1 ? 14 : 0,),
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
                                    onPressed: () {
                                      setState(() {
                                        texts[4][2] = !texts[4][2];
                                      });
                                    },
                                    icon: Icon(
                                      Icons.favorite,
                                      color: texts[4][2] ? const Color(0xFFFF5757): Colors.white,
                                      size: 18,
                                    ))),
                          ),
                        ),
                        const SizedBox(height:  45),
                        Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(texts[4][0],
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
                                child: Text(texts[4][1], style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 10, color: Colors.white)),
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
                                              onPressed: () {
                                                setState(() {
                                                  texts[5][2] = !texts[5][2];
                                                });
                                              },
                                              icon: Icon(
                                                Icons.favorite,
                                                color: texts[5][2] ? const Color(0xFFFF5757): Colors.white,
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
                                  child: Text(texts[5][0],
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
                                    child: Text(texts[5][1], style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 10, color: Colors.white)),
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
                                              onPressed: () {
                                                setState(() {
                                                  texts[6][2] = !texts[6][2];
                                                });
                                              },
                                              icon: Icon(
                                                Icons.favorite,
                                                color: texts[6][2] ? const Color(0xFFFF5757): Colors.white,
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
                                  child: Text(texts[6][0],
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
                                    child: Text(texts[6][1], style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 10, color: Colors.white)),
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
              ),
              const SizedBox(height: 25),
            ],
          ),
        ));
  }
}
