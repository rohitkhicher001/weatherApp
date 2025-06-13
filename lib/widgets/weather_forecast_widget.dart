import 'package:flutter/material.dart';

class WeatherForecastWidget extends StatelessWidget {
  const WeatherForecastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Card(
        // color: Colors.red,
        child: Column(
          spacing: 10,
          children: [
            Text('9:00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Icon(Icons.cloud, size: 32),
            Text('301.7', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
