import 'package:admin_web_panel/view/main_screens/banner_screen.dart';
import 'package:admin_web_panel/view/widget/my_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        titleMsg: "Admin Web Panel",
        showBackButton: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            // upload banners and category button ui

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // upload banner btn
                ElevatedButton.icon(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> BannerScreen()));
                    },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 117, vertical: 30),
                    backgroundColor: Colors.deepOrange
                  ),
                    icon: const Icon(Icons.screen_share_outlined,
                    color: Colors.white,),
                    label: Text("Upload Banner".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      letterSpacing: 3
                    ),
                    ),
                 ),
                const SizedBox(width: 30,),
                // upload category btn
                ElevatedButton.icon(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 30),
                      backgroundColor: Colors.purple
                  ),
                  icon: const Icon(Icons.category_outlined,
                    color: Colors.white,),
                  label: Text("Upload Category".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        letterSpacing: 3
                    ),
                  ),
                ),
              ],
            ),

            // users activities and block account button ui
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // users active account btn
                ElevatedButton.icon(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 30),
                      backgroundColor: Colors.green
                  ),
                  icon: const Icon(Icons.check_circle_outline,
                    color: Colors.white,),
                  label: Text("All Verified Users Account".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        letterSpacing: 3
                    ),
                  ),
                ),
                const SizedBox(width: 30,),
                // users block btn
                ElevatedButton.icon(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 30),
                      backgroundColor: Colors.deepOrange
                  ),
                  icon: const Icon(Icons.block_flipped,
                    color: Colors.white,),
                  label: Text("All Blocks Users Accounts".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        letterSpacing: 3
                    ),
                  ),
                ),
              ],
            ),

            // sellers activities and block account button ui
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // sellers active account btn
                ElevatedButton.icon(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
                      backgroundColor: Colors.purple
                  ),
                  icon: const Icon(Icons.check_circle_outline,
                    color: Colors.white,),
                  label: Text("All Verified Sellers Account".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        letterSpacing: 3
                    ),
                  ),
                ),
                const SizedBox(width: 30,),
                // sellers block accounts btn
                ElevatedButton.icon(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
                      backgroundColor: Colors.green
                  ),
                  icon: const Icon(Icons.block_flipped,
                    color: Colors.white,),
                  label: Text("All Blocks Sellers Accounts".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        letterSpacing: 3
                    ),
                  ),
                ),
              ],
            ),

            // riders activities and block account button ui
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // riders active account btn
                ElevatedButton.icon(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                      backgroundColor: Colors.deepOrange
                  ),
                  icon: const Icon(Icons.check_circle_outline,
                    color: Colors.white,),
                  label: Text("All Verified riders Account".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        letterSpacing: 3
                    ),
                  ),
                ),
                const SizedBox(width: 30,),
                // riders block accounts btn
                ElevatedButton.icon(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                      backgroundColor: Colors.purple
                  ),
                  icon: const Icon(Icons.block_flipped,
                    color: Colors.white,),
                  label: Text("All Blocks riders Accounts".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        letterSpacing: 3
                    ),
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
