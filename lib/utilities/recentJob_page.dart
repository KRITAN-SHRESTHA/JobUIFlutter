import 'package:flutter/material.dart';

class RecentJob extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  RecentJob({
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.hourlyRate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 87, 82, 82)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(logoImagePath),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobTitle,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  companyName,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                padding: EdgeInsets.all(5),
                color: Colors.green[200],
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('\$' + hourlyRate.toString() + 'Hr'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
