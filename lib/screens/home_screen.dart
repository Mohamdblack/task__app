import 'package:flutter/material.dart';
import 'package:tahriipaha__task/search.dart';

import '../widgets/cards_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // foregroundColor: Colors.black,
        elevation: 0,
        toolbarHeight: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                showSearch(context: context, delegate: Search());
              },
              icon: const Icon(
                Icons.search,
                size: 70,
                color: Color(0xff1F3354),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 30,
              backgroundImage:
                  AssetImage("images/michael-dam-mEZ3PoFGs_k-unsplash.jpg"),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "13 sep",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Color(0xff1F3354),
              ),
            ),
            const Text(
              "Hi, User",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff1F3354),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .22,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/cover.png"), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 200,
                  height: 65,
                  decoration: BoxDecoration(
                    color: const Color(
                      0xff33A9BC,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Color(0xff1F3354), shape: BoxShape.circle),
                        child: const Icon(
                          Icons.add_rounded,
                          size: 30,
                          color: Color(
                            0xff33A9BC,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Add Task",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Weakly Preview",
              style: TextStyle(
                fontSize: 35,
                color: Color(0xff1F3354),
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: const [
                  CardsWidget(
                    taskName: "All Tasks",
                    taskNumber: "22",
                    bgColor: Color(
                      0xff33A9BC,
                    ),
                  ),
                  CardsWidget(
                    taskName: "Done",
                    taskNumber: "14",
                    bgColor: Color(0xff1F3354),
                  ),
                  CardsWidget(
                    taskName: "Waiting",
                    taskNumber: "8",
                    bgColor: Color(0xff1F3354),
                  ),
                  CardsWidget(
                    taskNumber: "Week",
                    taskName: "Report",
                    bgColor: Color(
                      0xff33A9BC,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
