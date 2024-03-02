import 'package:admin_web_panel/global/global_vars.dart';
import 'package:admin_web_panel/view/widget/my_appbar.dart';
import 'package:admin_web_panel/viewModel/banner_view_model.dart';
import 'package:admin_web_panel/viewModel/common_view_model.dart';
import 'package:flutter/material.dart';

import '../../global/global_ins.dart';

class BannerScreen extends StatefulWidget {
  const BannerScreen({super.key});


  @override
  State<BannerScreen> createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();


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
              key: formKey,
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
                                child: Center(
                                  child: imageFile !=null? Image.memory(imageFile): Container(),
                                ),
                              ),

                              const SizedBox(height: 10,),
                              // pick image
                              ElevatedButton(
                                  onPressed: ()async{



                                   await bannerViewModel.pickFile();
                                   setState(() {
                                     imageFile;
                                     fileName;
                                   });
                                  },
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
                            onPressed: ()async{
                              commonViewModel.showSnackBar("uploading banner...", context);
                             await bannerViewModel.saveBannerImageInfoToFirestore();
                           setState(() {
                             formKey.currentState!.reset();
                             imageFile = null;
                           });

                              commonViewModel.showSnackBar("uploaded successfully...", context);
                            },
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
