import 'package:flutter/material.dart';
import 'package:work/widgets/app_large_text.dart';
import 'package:work/widgets/app_text.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({ Key? key }) : super(key: key);

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.maxFinite,
            height: 360,
            decoration: BoxDecoration(
              color: Colors.deepPurple[100]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 20),
                  child: CircleAvatar(
                  backgroundImage: AssetImage("img/img1.jpg"),
                  radius: 30,
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                    AppText(text: "June Spending", size: 18,),
                    ],
                  )),
                SizedBox(height: 10,), 
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                    Row(
                      children: [
                        AppLargeText(text: "\$45,910", size: 37,),
                        AppLargeText(text: ".41", color: Colors.black.withOpacity(0.4),size: 25,)
                      ],
                    )
                    ],
                  )
                  ),
                SizedBox(height: 40,),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  height: 53,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 0.5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search_outlined,
                            ),
                            SizedBox(width: 10,),
                            AppText(text: "Search for history, cards ...", size: 14, color: Colors.black.withOpacity(0.5),)
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 20, right: 270),
                  child: AppLargeText(text: "Transactions", size:20,)),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Column(
              children: [
                ListTile(subtitle: Text("Outcoming Transfer",style: TextStyle(fontWeight: FontWeight.bold),), title: Text("Webflow"), trailing: Text("-\$45", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),), leading: Image.asset("img/webflow.jpg",width: 40, height: 40,),),
                ListItems(subtitle: "Annual Withdrawal Of Funds", title: "Sketch", trailing: "-\$79", image: "img/sketch.png"),
                ListItems(subtitle: "Annual Withdrawal Of Funds", title: "Youtube", trailing: "-\$15", image: "img/youtube.png"),
                ListItems(subtitle: "Outcoming Transfer", title: "Unsplash", trailing: "-\$9", image: "img/unsplash.png"),
              ],
            ),
          )
        ],
      ),
    );
  }
}


class ListItems extends StatelessWidget {
  const ListItems({ Key? key, required this.subtitle, required this.title, required this.trailing, required this.image,}) : super(key: key);

  final String title;
  final String subtitle;
  final String trailing;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Image.asset(image,width: 25, height:25),
        title: Text(title,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        subtitle: Text(subtitle),
        trailing: Text(trailing,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      );
  }
}
