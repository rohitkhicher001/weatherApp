import 'package:flutter/material.dart';
import 'package:weather_app/widgets/weather_forecast_widget.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    spacing: 30,
                    children: [
                      Text('300C', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                      Icon(Icons.cloud, size: 64),
                      Text('Rain', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Weather Forecast', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  WeatherForecastWidget(),
                  WeatherForecastWidget(),
                  WeatherForecastWidget(),
                  WeatherForecastWidget(),
                  WeatherForecastWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
