import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF0a0a0a),
      appBar: AppBar(
        backgroundColor: Color(0xFF282828),
        title: Text("Settings", style: 
        TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold

        )),
        centerTitle: true,
      ),
      body: 
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 40,
            decoration:BoxDecoration(
               color: Color(0xFF161817),
               borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
               CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFF141716),
                      child: Icon(
                        Icons.person,
                        size:20,
                        color: Colors.white,
                      ),
                      ),
                      SizedBox(width: 8,),
                  Text("Avatar",style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                   const Spacer(),
                   Icon(Icons.chevron_right, color: Color(0xFF6c6e6e),),
              ],
            ),
          ),
          const Gap(25),
          Container(
             margin: EdgeInsets.only(left: 20, right: 20),
            // height: 40,
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration:BoxDecoration(
               color: Color(0xFF161817),
               borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                      CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFF141716),
            child: Icon(
              Icons.person,
              size: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 20),
          Text(
            "Lists",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: Color(0xFF6c6e6e),
          ),
                  ],
                ),
                 const Divider(
                  color:Color(0xFF7b7e7d),
                  height: 20,
                  thickness: 0.1,
                  indent: 29,
                  endIndent: 0,
                ),
                    Row(
                  children: [
                      CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFF141716),
            child: Icon(
              Icons.person,
              size: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 20),
          Text(
            "Broadcast messages",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: Color(0xFF6c6e6e),
          ),
                  ],
                ),
                 const Divider(
                  color:Color(0xFF7b7e7d),
                  height: 20,
                  thickness: 0.1,
                  indent: 29,
                  endIndent: 0,
                ),
                    Row(
                  children: [
                      CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFF141716),
            child: Icon(
              Icons.person,
              size: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 20),
          Text(
            "Starred",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: Color(0xFF6c6e6e),
          ),
                  ],
                ),
                 const Divider(
                  color:Color(0xFF7b7e7d),
                  height: 20,
                  thickness: 0.1,
                  indent: 29,
                  endIndent: 0,
                ),
                    Row(
                  children: [
                      CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFF141716),
            child: Icon(
              Icons.person,
              size: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 20),
          Text(
            "Linked devices",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: Color(0xFF6c6e6e),
          ),
                  ],
                ),
              ],
            ),
          ),
           const Gap(25),
           Container(
             margin: EdgeInsets.only(left: 20, right: 20),
            // height: 40,
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration:BoxDecoration(
               color: Color(0xFF161817),
               borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                      CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFF141716),
            child: Icon(
              Icons.person,
              size: 20,
              color: Colors.white,
            ),
          ),
         const  SizedBox(width: 20),
          Text(
            "Account",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: Color(0xFF6c6e6e),
          ),
                  ],
                ),
                const Divider(
                  color:Color(0xFF7b7e7d),
                  height: 20,
                  thickness: 0.1,
                  indent: 29,
                  endIndent: 0,
                ),
                    Row(
                  children: [
                      CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFF141716),
            child: Icon(
              Icons.person,
              size: 20,
              color: Colors.white,
            ),
          ),
         const SizedBox(width: 20),
          Text(
            "Privacy",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: Color(0xFF6c6e6e),
          ),
                  ],
                ),
                 const Divider(
                  color:Color(0xFF7b7e7d),
                  height: 20,
                  thickness: 0.1,
                  indent: 29,
                  endIndent: 0,
                ),
                    Row(
                  children: [
                      CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFF141716),
            child: Icon(
              Icons.person,
              size: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            "Chats",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: Color(0xFF6c6e6e),
          ),
                  ],
                ),
                 const Divider(
                  color:Color(0xFF7b7e7d),
                  height: 20,
                  thickness: 0.1,
                  indent: 29,
                  endIndent: 0,
                ),
                    Row(
                  children: [
                      CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFF141716),
            child: Icon(
              Icons.person,
              size: 20,
              color: Colors.white,
            ),
          ),
         const SizedBox(width: 20),
          Text(
            "Notifications",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: Color(0xFF6c6e6e),
          ),
                  ],
                ),
                 const Divider(
                  color:Color(0xFF7b7e7d),
                  height: 20,
                  thickness: 0.1,
                  indent: 29,
                  endIndent: 0,
                ),
                 Row(
                  children: [
                      CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFF141716),
            child: Icon(
              Icons.person,
              size: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            "Storage and data",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: Color(0xFF6c6e6e),
          ),
                  ],
                ),
              ],
            ),
          ),
            const Gap(25),
           Container(
             margin: EdgeInsets.only(left: 20, right: 20),
            // height: 40,
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration:BoxDecoration(
               color: Color(0xFF161817),
               borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                      CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFF141716),
            child: Icon(
              Icons.person,
              size: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 20),
          Text(
            "Help",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: Color(0xFF6c6e6e),
          ),
                  ],
                ),
                 const Divider(
                  color:Color(0xFF7b7e7d),
                  height: 20,
                  thickness: 0.1,
                  indent: 29,
                  endIndent: 0,
                ),
                    Row(
                  children: [
                      CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFF141716),
            child: Icon(
              Icons.person,
              size: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 20),
          Text(
            "Invite a friend",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: Color(0xFF6c6e6e),
          ),
                  ],
                ),
              ],
            ),
          ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Also from Meta", style: TextStyle(color: Color(0xFF6c6e6e), fontSize: 11),),
            ),
             const Gap(10),
             Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 40,
            decoration:BoxDecoration(
               color: Color(0xFF161817),
               borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
               CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFF141716),
                      child: Icon(
                        Icons.person,
                        size:20,
                        color: Colors.white,
                      ),
                      ),
                      SizedBox(width: 8,),
                  Text("Open Istagram",style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                   const Spacer(),
                   Icon(Icons.chevron_right, color: Color(0xFF6c6e6e),),
              ],
            ),
          ),
        ],
        
      ), 
          ],
        ),
        
      ),
      
    );
  }
}