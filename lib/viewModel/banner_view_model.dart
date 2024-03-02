import 'package:admin_web_panel/global/global_vars.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';


class BannerViewModel{

// image picker
  pickFile()async{
    FilePickerResult? resultFilePicker = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false
    );
    if(resultFilePicker != null){
      imageFile = resultFilePicker.files.first.bytes;
      fileName = resultFilePicker.files.first.name;

    }
  }

// upload image for firebase storage
  uploadBannerImageToStorage()async{

   imageDocId = DateTime.now().millisecondsSinceEpoch.toString()+fileName.toString();
    Reference bannerRef = FirebaseStorage.instance.ref().child('bannerImage').
    child(imageDocId);

    UploadTask uploadTask = bannerRef.putData(imageFile);
    TaskSnapshot taskSnapshot = await uploadTask.whenComplete((){});
    String downloadUrl = await taskSnapshot.ref.getDownloadURL();
    return downloadUrl;

  }

  // save banner image for firebase firestore
  saveBannerImageInfoToFirestore()async{

    String downloadUrl = await uploadBannerImageToStorage();

    await FirebaseFirestore.instance.collection("banner").doc(imageDocId)
    .set({
      "image": downloadUrl
    });

  }


}