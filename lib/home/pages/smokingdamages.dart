import 'package:flutter/material.dart';
import '../../components/drawer.dart';



class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  // Title List Here
  var titleList = [
    "Lung Damage",
    "Heart Disease",
    "Risk of type 2 diabetes",
    "Weakened immune ",
    "Vision problems",
    "Poor oral hygiene",
    "Poor oral hygiene",
    "Risk of other cancers"
  ];

  // Description List Here
  var descList = [
    "Smoking cigarettes affects lung health because a person breathes in not only nicotine but also a variety of additional chemicals. Smoking cigarettes affects lung health because a person breathes in not only nicotine but also a variety of additional chemicals.",
    "Smoking cigarettes can damage the heart, blood vessels, and blood cells..",
    "Smoking can also make it more difficult for people with diabetes to manage their condition.",
    "Smoking cigarettes can weaken a person’s immune system, making them more susceptible to illness.",
    "Smoking cigarettes can cause eye problems, including a greater risk of cataracts and age-related macular degeneration.",
    "A big business starts small.",
    "Talent wins games, but teamwork and intelligence win championships."
  ];

  // Image Name List Here
  var imgList = [
    "images/l.jpg",
    "images/heart.jfif",
    "images/vision.jpg",
    "images/badimage.jfif",
    "images/img5.jpg",
    "images/img6.jpg",
    "images/img7.jpg",
    
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
                title: Text('Smoking Damages'),
                centerTitle: true,
                backgroundColor: const Color(0xFF232F34),
              ),
      drawer: MyDrawer(),
      // Main List View With Builder
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // This Will Call When User Click On ListView Item
              showDialogFunc(context, imgList[index], titleList[index], descList[index]);
            },
            // Card Which Holds Layout Of ListView Item
            child: Card(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(imgList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index],
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: 25,
                            color: const Color(0xFFF9AA33),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width,
                          child: 
                          Text(
                            descList[index],
                            overflow: TextOverflow.clip,
                            softWrap: false,
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// This is a block of Model Dialog 
showDialogFunc(context, img, title, desc) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            height: 320,
            width: MediaQuery.of(context).size.width * 0.7,
            child: ListView(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color:  const Color(0xFFF9AA33),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      desc,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
