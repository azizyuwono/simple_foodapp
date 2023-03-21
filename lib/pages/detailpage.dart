import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> sizeList = [
    'S',
    'M',
    'L',
  ];

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.arrow_back_ios),
                ),
                const Icon(Icons.more_vert)
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Steak House',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Our very own! Smashed \nbeef burgers',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              child: Image.asset('assets/bigburger.png'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Size:',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                for (var i = 0; i < sizeList.length; i++) ...[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = i;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      decoration: BoxDecoration(
                        color: _index == i ? Colors.green : Colors.black12,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      margin: const EdgeInsets.only(right: 15),
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      child: Text(
                        sizeList[i],
                        style: TextStyle(
                            fontSize: 24,
                            color: _index == i ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ]
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Quantity',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  '2',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Price',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'IDR 49.999',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black12,
                      ),
                      child: Icon(Icons.favorite_outline),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.green,
                      ),
                      child: const Icon(
                        Icons.shopping_basket_outlined,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
