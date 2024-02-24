import 'package:admin_web_panel/view/widget/my_appbar.dart';
import 'package:flutter/material.dart';

class BannerScreen extends StatefulWidget {
  const BannerScreen({super.key});


  @override
  State<BannerScreen> createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {

 final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:MyAppbar(
        titleMsg: "Upload Banner",
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey,
                child: Column(
                  children: [
                    const Divider(
                      color: Colors.purple,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        // display image - pick image btn
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            children: [
                              // display image
                              Container(
                                height: 148,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  border: Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: Center(),
                              ),

                              const SizedBox(height: 10,),
                              // pick image
                              ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.purple
                                  ),
                                  child: const Text('Pick Image',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),))

                            ],
                          ),
                        ),
                        const SizedBox(width: 40,),
                        // save image
                        ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple
                            ),
                            child: const Text('Save',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),)),


                      ],
                    ),

                    const Divider(
                      color: Colors.purple,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
