import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  JobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.hourlyRate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.all(15),
          width: 250,
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset(logoImagePath),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    
                    child: Row(
                    
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Part Time',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.grey[500],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Full Time',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.grey[500],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  jobTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                     padding: EdgeInsets.all(5),
                color: Color.fromARGB(255, 136, 133, 133),
                  child: Text(
                    '\$' + hourlyRate.toString() + 'Hr',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
