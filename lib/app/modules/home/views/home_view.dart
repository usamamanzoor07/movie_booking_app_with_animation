import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: const Text('Page View Animation'),
            centerTitle: true,
          ),
          body: buildGridView(),
        ),
        Obx(() => Visibility(
              child: pageView(),
              visible: controller.clicked.value,
            )),
        // pageView(),
      ],
    );
  }

  Widget buildGridView() {
    return GridView.builder(
      itemCount: controller.imagesList.length,
      controller: ScrollController(),
      padding: const EdgeInsets.all(32.0),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            controller.rIndex.value = index;
            controller.clicked.value = true;
            // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => pageView(), ));
          },
          child: Container(
            // color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(3, 8),
                          blurRadius: 7,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    child: Image.asset(
                      (controller.imagesList[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  controller.nameList[index],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  controller.directorNameList[index],
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 110,
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                        ),
                        Text(
                          'Watch Now',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 30,
        childAspectRatio: 0.48,
        // mainAxisExtent: MediaQuery.of(context).size.height,
      ),
    );
  }

  Widget pageView() {
    int index = controller.rIndex.value;
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      body: Container(
        // color: Colors.green.withOpacity(0.3),
        margin: EdgeInsets.only(top: 70),
        child: PageView.builder(
          controller: PageController(initialPage: index, viewportFraction: 0.9),
          itemCount: controller.imagesList.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: SingleChildScrollView(
                child: AnimatedContainer(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  duration: Duration(seconds: 1),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                controller.clicked.value = false;
                              },
                              child: Container(
                                child: Icon(
                                  Icons.close_rounded,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                ),
                                height: 30,
                                width: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: Offset(3, 8),
                                  blurRadius: 7,
                                  spreadRadius: 1,
                                )
                              ],
                            ),
                            child: Image.asset(
                              (controller.imagesList[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            controller.nameList[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            controller.directorNameList[index],
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border.all(width: 5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    ' Watch Now',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text('Plot'),
                          Text('aksdjflkasdf'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                        ],),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
