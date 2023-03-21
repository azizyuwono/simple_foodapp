import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icon.dart';
import 'package:myapp/models/foodcard.model.dart';
import 'package:myapp/pages/detailpage.dart';
import '../widgets/foodCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> navbarList = [
    'Fast Food',
    'Desert',
    'Drink',
    'Snacks',
  ];

  bool visible = true;
  bool click = true;
  int _index = 0;
  int _seletedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.menu,
                  size: 30,
                ),
                Icon(
                  Icons.shopping_basket_outlined,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const SizedBox(
                width: double.infinity,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(31, 141, 141, 141),
                      filled: true,
                      hintText: 'Search your favorite food',
                      hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var i = 0; i < navbarList.length; i++) ...[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        click = !click;
                        _index = i;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          navbarList[i],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: _index == i ? Colors.green : Colors.grey),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: _index == i ? Colors.green : null),
                          width: 5,
                          height: 5,
                        )
                      ],
                    ),
                  ),
                ],
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Popular Food',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DetailPage())),
              child: FoodCard(
                foodcard: FoodCardModel(
                    title: 'Pizza',
                    desc: 'Delicious food 2020',
                    price: 49999,
                    imageURL: 'pizza'),
              ),
            ),
            FoodCard(
              foodcard: FoodCardModel(
                  title: 'HamBurger',
                  desc: 'Delicious food 2020',
                  price: 59999,
                  imageURL: 'burger'),
            ),
            FoodCard(
              foodcard: FoodCardModel(
                  title: 'Double Hot Dog',
                  desc: 'Delicious food 2020',
                  price: 34999,
                  imageURL: 'hotdog'),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: const SizedBox(
          width: double.infinity,
          child: GNav(
            tabMargin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            tabBackgroundColor: Colors.green,
            color: Colors.grey,
            activeColor: Colors.white,
            backgroundColor: Colors.black12,
            tabs: [
              GButton(
                gap: 5,
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                gap: 5,
                icon: Icons.notifications,
                text: 'Inbox',
              ),
              GButton(
                gap: 5,
                icon: Icons.favorite,
                text: 'Home',
              ),
              GButton(
                gap: 5,
                icon: Icons.person,
                text: 'Home',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
