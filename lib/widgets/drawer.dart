import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class mydrawer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final imageUrl="https://www.google.com/search?q=images&tbm=isch&ved=2ahUKEwjTnazGgvP6AhUOMLcAHU8DDnEQ2-cCegQIABAA&oq=images&gs_lcp=CgNpbWcQAzILCAAQgAQQsQMQgwEyBAgAEEMyBwgAEIAEEAMyCAgAEIAEELEDMggIABCABBCxAzIICAAQgAQQsQMyCAgAEIAEELEDMgcIABCABBADMgsIABCABBCxAxCDATIICAAQsQMQgwE6BAgjECc6BwgAELEDEEM6BQgAEIAEOgoIABCxAxCDARBDOgcIIxDqAhAnUKEHWMkdYN8eaAFwAHgAgAHJAYgBmwiSAQUwLjYuMZgBAKABAaoBC2d3cy13aXotaW1nsAEKwAEB&sclient=img&ei=Q3RTY5PwHo7g3LUPz4a4iAc&bih=752&biw=767#imgrc=U4tLGpje4-JirM";
    return Drawer(
        
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                // decoration: BoxDecoration(color:),
                accountName: Text("Deepanshu",style: TextStyle(color: Colors.white)),
                accountEmail: Text("xyz@gmail.com",style: TextStyle(color: Colors.white)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
              color: Colors.white,

            ),
            title: Text("Home",textScaleFactor: 1.2, style:TextStyle(color: Colors.white,),),),
          ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text("Profile",textScaleFactor: 1.2, style:TextStyle(color: Colors.white,),),),
             ListTile(
              leading: Icon(CupertinoIcons.search,
              color: Colors.white,
            ),
            title: Text("Search",textScaleFactor: 1.2, style:TextStyle(color: Colors.white,),),),
             ListTile(
              leading: Icon(CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text("Email me",textScaleFactor: 1.2, style:TextStyle(color: Colors.white,),),),],
        ),
      ),
    );
  }
}