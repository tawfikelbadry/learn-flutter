import 'package:flutter/material.dart';

class StatisticsGrid extends StatelessWidget {
   const StatisticsGrid({super.key});
   static const List<Map<String, String>> stats = [
    {'label': 'Users', 'value': '1,250'},
    {'label': 'Revenue', 'value': '\$32K'},
    {'label': 'Growth', 'value': '12%'},
    {'label': 'Sessions', 'value': '4,500'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: stats.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemBuilder: (context, index) {
          return StatisticBanner(
            label: stats[index]['label']!,
            value: stats[index]['value']!,
          );
        },
      ),
    );
  }
}

class StatisticBanner extends StatelessWidget {
  final String label;
  final String value;

  StatisticBanner({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 8.0),
          Text(
            value,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
