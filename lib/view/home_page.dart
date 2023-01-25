import 'package:flutter/material.dart';
import 'package:jobui/utilities/job_page.dart';
import 'package:jobui/utilities/recentJob_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsAvailabe = [
    ['ASUS', 'Flutter Developer', 'assets/uber.png', 100],
    ['APPLE', 'Software Engineer', 'assets/apple.png', 100],
    ['Google', 'Flutter UI Developer', 'assets/google.png', 96],
  ];
  final List recentJobs = [
    ['Nike', 'Flutter Developer', 'assets/nike.png', 90],
    ['APPLE', 'Software Engineer', 'assets/apple.png', 80],
    ['Google', 'Flutter UI Developer', 'assets/google.png', 96],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 189, 184, 184),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          // app bar
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Container(
              padding: EdgeInsets.all(8),
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                'assets/menu.png',
                color: Colors.grey[800],
              ),
            ),
          ),
          SizedBox(height: 50),

          //discover a new path

          Padding(
            padding: EdgeInsets.only(left: 22),
            child: Text(
              'Discover a New Path',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  color: Colors.grey[75]),
            ),
          ),
          SizedBox(height: 30),

          //search bar

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 35,
                            child: Image.asset(
                              'assets/search.png',
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search a Job..'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 9.5,
                ),
                Container(
                  height: 50,
                  child: Image.asset('assets/preferences.png'),
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12)),
                )
              ],
            ),
          ),
          SizedBox(height: 50),
          //for you-> job cards
          Padding(
            padding: EdgeInsets.only(left: 22),
            child: Text(
              'For You',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  color: Colors.grey[75]),
            ),
          ),
          SizedBox(height: 25),
          Container(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jobsAvailabe.length,
                itemBuilder: (context, index) {
                  return JobCard(
                    companyName: jobsAvailabe[index][0],
                    jobTitle: jobsAvailabe[index][1],
                    logoImagePath: jobsAvailabe[index][2],
                    hourlyRate: jobsAvailabe[index][3],
                  );
                }),
          ),

          //recently add -> job titles
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 22),
            child: Text(
              'Recently Added Jobs',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  color: Colors.grey[75]),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView.builder(
              itemCount: recentJobs.length,
              itemBuilder: (context, index) {
                return RecentJob(
                  companyName: recentJobs[index][0],
                  jobTitle: recentJobs[index][1],
                  logoImagePath: recentJobs[index][2],
                  hourlyRate: jobsAvailabe[index][3],
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
