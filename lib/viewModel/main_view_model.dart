import 'package:admin_web_panel/global/global_vars.dart';
import 'package:file_picker/file_picker.dart';


class MainViewModel{

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

}