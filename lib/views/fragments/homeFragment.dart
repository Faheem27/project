// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:northern_hevean/models/hotelsModel.dart';
import 'package:northern_hevean/models/destinationModel.dart';
import 'package:northern_hevean/models/transportModel.dart';

class HomesFragment extends StatefulWidget {
  const HomesFragment({Key key}) : super(key: key);

  @override
  _HomesFragmentState createState() => _HomesFragmentState();
}

class _HomesFragmentState extends State<HomesFragment> {
  //Dynamic List of Packages--------------------------------------------------------------------
  List<DestinationModel> packageList = [];
  Future<void> getPakagesList() async {
    packageList.add(DestinationModel(1, 'assets/image1.jpg', 'Upper Chitral',
        'Upper Chitral is a district of the Pakistani province of Khyber Pakhtunkhwa situated on the Chitral River.'));
    packageList.add(DestinationModel(2, 'assets/image2.jpg', 'Qaqlasht',
        'Jashan-e-Qaqlasht is the old-age festival of the people of northern Chitral with a history of more than 2,000 years. Rais rulers used to organize it in the remote past to be continued by the Kator dynasty, which not only assiduously patronized this particular cultural event, but also promoted other festivals e.g. Jashan-e-Shandur and Jashan-e-Chitral.'));
    packageList.add(DestinationModel(3, 'assets/image3.jpg', 'Shahi Masjid',
        'The Shahi Mosque is the main mosque in the town of Chitral, Khyber Pakhtunkhwa, Pakistan. It is located on the bank of the Chitral river adjacent to the Chitral Fort. It was the principal mosque of Chitral at the time of the existence of the State of Chitral.[4][5] The mosque was built on the orders of His Highness Shuja ul-Mulk in 1924'));
    packageList.add(DestinationModel(4, 'assets/image4.jpg', 'Broghil',
        'The Khyber Pakhtunkhwa Tourism Department and the administration of Upper Chitral District have announced the two-day Broghil Festival will kick off from September 5. It will be held at the beautiful Broghil National Park in Upper Chitral District and feature a wide range of traditional activities and sports.'));
  }

  //list of hotels start here------------------------------------------------------
  List<HotelModel> hotelsList = [];
  Future<void> getHotelsList() async {
    hotelsList.add(HotelModel(1, 'assets/hotel1.jpg', 'Al Mughal Hotel',
        'Al Mughal Hotel is offering accommodation in Chitral. Featuring a 24-hour front desk, this property also provides guests with a restaurant. The hotel features family rooms.'));
    hotelsList.add(HotelModel(
        2,
        'assets/hotel2.jpg',
        'Roomy Hindukush Sarai, Chitral',
        'Roomy Hindukush Sarai, Chitral in Chitral features 3-star accommodation with a terrace. Featuring a restaurant, the 3-star hotel has air-conditioned rooms with a private bathroom. The accommodation provides a 24-hour front desk and room service for guests.'));
    hotelsList.add(HotelModel(
        3,
        'assets/hotel3.jpg',
        'Chitral Inn Resort (Kalash Valley) ',
        'Located in Chitral, Chitral Inn Resort (Kalash Valley) offers a garden. Featuring a 24-hour front desk, this property also provides guests with a restaurant. The hotel features family rooms.'));
    hotelsList.add(HotelModel(4, 'assets/hotel4.jpg', 'Tirch Mir View Chitral',
        'Tirch Mir View Chitral is situated in Chitral and features a garden. Boasting room service, this property also welcomes guests with a restaurant and a terrace. Guests can enjoy river views.'));
  }

  // list of transports start here----------------------------------------------------
  List<TransportationModel> transportList = [];
  Future<void> getTransportList() async {
    transportList.add(TransportationModel(1, 'RAV 4', 'assets/rav.jpg',
        'RAV 4 is a compact crossover SUV produced by the Japanese automobile manufacturer Toyota. Considered as the first compact crossover SUV,[1] it made its debut in Japan and Europe in 1994,[2] and in North America in 1995, being launched in January 1996.'));
    transportList.add(TransportationModel(2, 'jeep', 'assets/jeep.jpg',
        'Jeep is an American automobile marque, now owned by multi-national corporation Stellantis.[2][3] Jeep has been part of Chrysler since 1987, when Chrysler acquired the Jeep brand, along with remaining assets, from its previous owner American Motors Corporation (AMC).'));
    transportList.add(TransportationModel(
        3,
        'Flying Coach',
        'assets/flyingCoach.jpg',
        'Ali Flying Coach Service is serving their client nationwide since 2007. Our main vision is to provide comfort, safety, time management and best customer support to our client. Ali Flying Coach Service is based in Minchinabad, Pakistan.'));
  }

  //static image slider list-------------------------------------------------
  List<String> imgList = [];
  Future<void> getSliderImages() async {
    imgList.add('assets/image1.jpg');
    imgList.add('assets/image2.jpg');
    imgList.add('assets/image3.jpg');
    imgList.add('assets/image4.jpg');
  }

  @override
  void initState() {
    getSliderImages();
    getPakagesList();
    getHotelsList();
    getTransportList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Northern Heaven',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 20.0),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            color: Colors.green,
            icon: const Icon(Icons.menu),
            onPressed: () {
              buildMenu(context);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            buildSlider(),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Destinations',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            buildDestination(),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Hotels',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            buildHotels(),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Transportation',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            buildTransport()
          ],
        ),
      ),
    );
  }

// Slider Code start here--------------------------------------------------------------------------------------
  Widget buildSlider() {
    return Container(
      margin: const EdgeInsets.all(15),
      child: CarouselSlider.builder(
        itemCount: imgList.length,
        options: CarouselOptions(
          enlargeCenterPage: true,
          height: 200,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          reverse: false,
          aspectRatio: 5.0,
        ),
        itemBuilder: (context, index, id) {
          //for onTap to redirect to another screen
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.white,
                  )),
              //ClipRRect for image border radius
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imgList[index],
                  width: 500,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
  //Slider code end here-------------------------------------------------------------------------------------

  //Destination Code here------------------------------------------------------------------------------------

  Widget buildDestination() {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: packageList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/destinationDescriptionPage',
                    arguments: DestinationModel(
                        packageList[index].id,
                        packageList[index].image,
                        packageList[index].title,
                        packageList[index].desc));
              },
              child: Stack(
                children: [
                  Container(
                    width: 165,
                    margin: const EdgeInsets.only(left: 4.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(packageList[index].image),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white,
                        )),
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 8.0,
                    child: SizedBox(
                      width: 150,
                      child: Text(packageList[index].title,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20.0)),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
  //Destination code end here----------------------------------------------------------------------------------------------------------

  //Hotel Code start here--------------------------------------------------------------------------------------------------------------
  Widget buildHotels() {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: hotelsList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/hotelDescriptionPage',
                    arguments: HotelModel(
                        hotelsList[index].id,
                        hotelsList[index].image,
                        hotelsList[index].title,
                        hotelsList[index].desc));
              },
              child: Stack(
                children: [
                  Container(
                    width: 165,
                    margin: const EdgeInsets.only(left: 4.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(hotelsList[index].image),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white,
                        )),
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 8.0,
                    child: SizedBox(
                      width: 150,
                      child: Text(hotelsList[index].title,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20.0)),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
  //Hotel code end here----------------------------------------------------------------------------------------------------------------

  //Transport Code start here-----------------------------------------------------------------------------------------------------------
  Widget buildTransport() {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: transportList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Stack(
                children: [
                  Container(
                    width: 165,
                    margin: const EdgeInsets.only(left: 4.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(transportList[index].image),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white,
                        )),
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 8.0,
                    child: SizedBox(
                      width: 150,
                      child: Text(transportList[index].title,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20.0)),
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/transportDescriptionPage',
                    arguments: TransportationModel(
                        transportList[index].id,
                        transportList[index].title,
                        transportList[index].image,
                        transportList[index].desc));
              },
            );
          }),
    );
  }
  //Transport code end here--------------------------------------------------------------------------------------------------------------

  //Menu code start here----------------------------------------------------------------------------------------------------------------
  void buildMenu(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        isDismissible: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
        builder: (context) => DraggableScrollableSheet(
            initialChildSize: 0.9,
            minChildSize: 0.2,
            maxChildSize: 1.00,
            expand: false,
            builder: (_, scrollController) =>
                ListView(controller: scrollController, children: [
                  const Icon(
                    Icons.remove,
                    size: 30,
                    color: Colors.green,
                  ),
                  ListTile(
                    leading: const Icon(Icons.login_outlined),
                    title: const Text('Login'),
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/loginPage');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person_add_alt_1_outlined),
                    title: const Text('Sign Up'),
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/signUpPage');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.lock_outline),
                    title: const Text('Change Password'),
                    onTap: () {
                      Navigator.popAndPushNamed(
                          context, '/changePasswordScreen');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.file_copy_outlined),
                    title: const Text('Travel Requirements'),
                    onTap: () {
                      Navigator.popAndPushNamed(
                          context, '/travelAndRequirementsScreen');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.home_work_rounded),
                    title: const Text('Hotels'),
                    onTap: () {
                      Navigator.popAndPushNamed(
                          context, '/hotelDescriptionScreen');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.list_alt),
                    title: const Text('Terms & Conditions'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout_outlined),
                    title: const Text('Logout'),
                    onTap: () {},
                  ),
                ])));
  }
  //Menu Code end here-----------------------------------------------------------------------------------------------------------------
}
