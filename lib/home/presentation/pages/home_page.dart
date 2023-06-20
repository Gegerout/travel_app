import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/home/presentation/pages/listing_page.dart';
import 'package:travel_app/home/presentation/pages/notification_page.dart';
import 'package:travel_app/home/presentation/pages/profile_page.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key, required this.name, required this.image}) : super(key: key);

  final String name;
  final String image;

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomeWidget(name: widget.name, image: widget.image),
      ListingPage(image: widget.image,),
      NotificationPage(),
      ProfilePage()
    ];

    return Scaffold(
      body: pages.elementAt(currentPage),
      bottomNavigationBar: Container(
        height: 69,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  currentPage = 0;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(currentPage == 0 ? "assets/images/home_active.png" : "assets/images/home.png"),
                  const SizedBox(height: 2),
                  Text("Home", style: GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 10, color: Colors.white)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentPage = 1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(currentPage == 1 ? "assets/images/listing_active.png" : "assets/images/listing.png"),
                  const SizedBox(height: 2),
                  Text("Listing", style: GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 10, color: Colors.white)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentPage = 2;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(currentPage == 2 ? "assets/images/notif_active.png" : "assets/images/notif.png"),
                  const SizedBox(height: 2),
                  Text("Notification", style: GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 10, color: Colors.white)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentPage = 3;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(currentPage == 3 ? "assets/images/profile_active.png" : "assets/images/profile.png"),
                  const SizedBox(height: 2),
                  Text("Profile", style: GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 10, color: Colors.white)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key, required this.name, required this.image})
      : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    final values = ["Hills", "Beaches", "Mountains", "Parks"];

    final images = [
      "assets/images/list_1.png",
      "assets/images/list_2.png",
      "assets/images/list_3.png",
      "assets/images/list_4.png"
    ];

    final texts = [
      "Amazing\nMaldives",
      "Unknown\nSri lanka",
      "Andaman &\nNicobar Tour",
      "Tokyo",
      "Rs. 45,000/-",
      "Rs. 60,000/-"
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello $name!!",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black)),
              Text("Where do you want to go?",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: const Color(0xFF656565).withOpacity(0.63))),
            ],
          ),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 28),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(right: 28),
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
                      hintText: "Search",
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
              const SizedBox(height: 25),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 9),
                      child: Container(
                        width: 97,
                        height: 35,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(values[index],
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.63))),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(right: 26),
                child: Row(
                  children: [
                    Text("Recommended",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.63))),
                    const Spacer(),
                    Text("More",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xFF9F9F9F))),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              SizedBox(
                height: 225,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                        width: 168,
                        height: 223,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(images[index])),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, bottom: 8),
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(texts[index],
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.white))),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(right: 26),
                child: Row(
                  children: [
                    Text("Trending Deals",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.63))),
                    const Spacer(),
                    Text("More",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xFF9F9F9F))),
                  ],
                ),
              ),
              SizedBox(
                height: 125,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                          width: 292,
                          height: 122,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF1F1F1).withOpacity(0.5),
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, bottom: 8, top: 14),
                            child: Row(
                              children: [
                                Image.asset(images[index + 2]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(texts[index + 2],
                                          style: GoogleFonts.nunito(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                              color: const Color(0xFF5E5E5E))),
                                      const Spacer(),
                                      Text(texts[index+4], style: GoogleFonts.nunito(fontWeight: FontWeight.w800, fontSize: 13, color: const Color(0xFF5E5E5E))),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
