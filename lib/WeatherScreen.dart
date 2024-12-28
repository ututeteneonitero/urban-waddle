import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/additional_information.dart';
import 'package:weather_app/hourly_forcast_items.dart';

class Weatherscreen extends StatelessWidget {
  const Weatherscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // main Weather Icon
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            "300° F",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Icon(
                            Icons.cloud,
                            size: 64,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Rain",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Weather Forcast cards
            const Text(
              "Weather Forcast",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourForcastItems(
                    time: "00:00",
                    icon: Icons.cloud,
                    temprature: "300° F",
                  ),
                  HourForcastItems(
                    time: "02:00",
                    icon: Icons.sunny,
                    temprature: "300° F",
                  ),
                  HourForcastItems(
                    time: "09:00",
                    icon: Icons.cloud,
                    temprature: "300° F",
                  ),
                  HourForcastItems(
                    time: "12:00",
                    icon: Icons.sunny,
                    temprature: "300° F",
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            // Additionnal info
            const Text(
              "Additional Information",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInformation(
                  icon: Icons.water_drop,
                  label: "Humidity",
                  value: "91",
                ),
                AdditionalInformation(
                  icon: Icons.air,
                  label: "Wind Speed",
                  value: "7.62",
                ),
                AdditionalInformation(
                  icon: Icons.beach_access_sharp,
                  label: "Preassure",
                  value: "1006",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
