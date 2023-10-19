import 'package:flutter/material.dart';
import 'package:plant_ui/models/models.dart';
import 'package:plant_ui/widgets/widgets.dart';

import '../../utilities/utilities.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          leadingWidth: 200,
          leading: const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              "Good Day! 👋",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.altPrimary),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/products/plant1.webp"),
              ),
            ),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const SearchField(),
                const SizedBox(height: 10),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    const SizedBox(
                      height: 155,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: const Color(0xffd1eac0),
                      //   color:  Color.fromARGB(255, 197, 187, 216),
                      child: const SizedBox(
                        height: 120,
                        child: Row(
                          children: [
                            SizedBox(width: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "30% OFF",
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w900,
                                      color: AppColors.black),
                                ),
                                SizedBox(width: 50),
                                //    SizedBox(height: 1),
                                Text(
                                  "06 - 21 October",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Spacer(),
                            Spacer()
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      bottom: 0,
                      child: SizedBox(
                          height: 170,
                          width: 170,
                          child:
                              Image.asset("assets/onboarding/onboarding3.png")),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "All Plants",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.altPrimary),
                ),
                const SizedBox(height: 10),
                GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: dummyPlants.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: width(context) < 380 ? 1 / 2 : 3 / 5,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 20,
                        crossAxisCount: width(context) > 480 ? 4 : 2),
                    itemBuilder: (context, i) {
                      final plant = dummyPlants[i];
                      return PlantCard(plant: plant, onPressed: () {});
                    }),
                // Row(
                //   children: [
                //     PlantCard(
                //       plant: dummyPlants[0],
                //       onPressed: () {},
                //     ),
                //     const Spacer(),
                //     PlantCard(
                //       plant: dummyPlants[02],
                //       onPressed: () {},
                //     ),
                //   ],
                // )
              ],
            ),
          ),
        )));
  }
}
