import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              scrolledUnderElevation: 0,
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              forceElevated: false,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      
                      size: 35,
                    )),
                const SizedBox(
                  width: 10,
                )
              ],
              expandedHeight: 80,
              title: const Text(
                'Chats',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    ),
              ),
              pinned: true,
            ),
          ];
        },
        body: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.005,
            ),
            Center(
              child: SizedBox(
                height: screenHeight * 0.045,
                width: screenWidth - 18,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: 'search...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
            ),
            // SizedBox(
            //   height: screenHeight * 0.005,
            // ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                    ),
                    title: Text('Name'),
                    subtitle: Text('message'),
                    trailing: Text('Date'),
                  );
                },
                itemCount: 15,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
            ),
          ],
        ));
  }
}
