import 'package:flutter/material.dart';
import 'package:flutter_cleaning_service_ui/constan_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedType = 'Bersih';
  String selectedFrequency = 'weekly';

  void onChangedType(String type) {
    setState(() {
      selectedType = type;
    });
  }

  void onChangedFrequency(String frequency) {
    setState(() {
      selectedFrequency = frequency;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue400,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Price List',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Pilih Paket',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => onChangedType('basic'),
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          color: blue50,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          image: const DecorationImage(
                            image: AssetImage('assets/image/img1.png'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        'Paket Basic Clean',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: blue50, shape: BoxShape.circle),
                        child: selectedType == 'basic'
                            ? Icon(
                                Icons.check_circle_outline,
                                color: pink400,
                                size: 30,
                              )
                            : Container(),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => onChangedType('deep'),
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          color: blue50,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          image: const DecorationImage(
                            image: AssetImage('assets/image/img2.png'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        'Paket Deep Clean',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: blue50,
                          shape: BoxShape.circle,
                        ),
                        child: selectedType == 'deep'
                            ? Icon(
                                Icons.check_circle_outline,
                                color: pink400,
                                size: 30,
                              )
                            : Container(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Pilih Layanan',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => onChangedFrequency('weekly'),
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == 'weekly'
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )
                        : BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                    child: Center(
                      child: Text(
                        'Mingguan',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: selectedFrequency == 'weekly'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => onChangedFrequency('biweekly'),
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == 'biweekly'
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )
                        : BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                    child: Center(
                      child: Text(
                        '2-Mingguan',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: selectedFrequency == 'biweekly'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => onChangedFrequency('monthly'),
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == 'monthly'
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )
                        : BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                    child: Center(
                      child: Text(
                        'Bulanan',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: selectedFrequency == 'monthly'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Pilih Tambahan',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                extraWidget('teras', 'Teras', true),
                extraWidget("belanja", "Memasak", false),
                extraWidget("tirai", "Tirai Kecil", true),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                extraWidget("teras", "Teras", false),
                extraWidget("belanja", "Belanja", true),
                extraWidget("tirai", "Tirai Besar", true),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column extraWidget(String img, String name, bool isSelected) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: blue400,
              ),
              child: Container(
                margin: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/icons/$img.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              child: isSelected == true
                  ? Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: pink400,
                        ),
                      ),
                    )
                  : Container(),
            )
          ],
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
