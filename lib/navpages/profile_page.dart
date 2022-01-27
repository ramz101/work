import 'package:work/widgets/app_large_text.dart';
import 'package:work/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 80, left: 20),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("img/img1.jpg"),
                radius: 28,
              ),
              SizedBox(width: 10,),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                child:
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   AppText(text: "Evion Vance",size: 18,),
                   SizedBox(height: 5,),
                   AppText(text: "CTO", size: 15, color: Colors.black.withOpacity(0.3),)
                 ],
               ),
               ),
               SizedBox(width: 180,),
              Icon(
                Icons.settings_outlined,
                color: Colors.black,
              ),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Container(
          height: 220,
          width: 370,
          decoration: BoxDecoration(
            color: Colors.red[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(text: " ••••2334",color: Colors.black.withOpacity(0.7),),
                    Container(
                      child:Row(
                        children: [
                          AppText(text: "USD Wallet"),
                          SizedBox(width: 10,),
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    size: 16,
                                  ),
                                ),
                              ),
                      ],
                      ),
                      ),
                  ],
                ),
              ), 
              SizedBox(height: 25,),
              Container(margin: const EdgeInsets.only(left: 20),
                child: AppText(text: "Deutsche Bank Global", size: 25,)),
              SizedBox(height: 25,),
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: 174,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Center(
                  child: AppText(text: "\$26,950.00",size: 27,),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 15,),
        Container(
          width: 370,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.teal[50],
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only( left: 20),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Icon(
                  Icons.shopping_bag_rounded,
                  size: 30,
                ),
              ),
              SizedBox(width: 10,),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: "Shopping mall", size: 13,),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        AppText(text: "\$1,544", size: 18,),
                        SizedBox(width: 30,),
                        AppText(text: "Avaialable \$4,900.00", size: 13, color: Colors.black.withOpacity(0.5),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 45,),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppLargeText(text: "Transactions", size: 22,),
              Container(
                height: 45,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      AppText(text: "Filter", color: Colors.white,),
                      Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(text: "Today"),
            ],
          ),
        ),
        SizedBox(height: 5,),
        Expanded(
          child: ListView.builder(
            itemCount: 2,
            itemBuilder:(_, i){
            return Column(
              children: [      
        ListTile(
          leading: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.red[100],
              borderRadius: BorderRadius.circular(30)
            ),
            child: Icon(
              Icons.arrow_downward_outlined,
              color: Colors.black,
            ),
          ),
          title: Text("Transfer"),
          subtitle: Text("Incoming Transfer"),
          trailing: Text("+ \$3,110"),
          ),
        ListTile(
          leading:Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Icon(
              Icons.arrow_upward_sharp,
              color: Colors.black,
            ),
          ),
          title: Text("Health"),
          subtitle: Text("Pharmacy"),
          trailing: Text("- \$312,9",),
        ),
         Container(
          margin: const EdgeInsets.only(left: 20),
          child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              AppText(text: "June 13th"),
            ],
          ),
        ),  
        ],
        );
        }),
        )
      ]
    );
  }
}



