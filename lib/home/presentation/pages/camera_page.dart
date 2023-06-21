import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/auth/data/repositories/data_repository.dart';
import 'package:travel_app/main.dart';

import '../../../auth/data/models/user_model.dart';

class CameraPage extends StatefulWidget {
  const CameraPage(
      {Key? key,
      required this.name,
      required this.surname,
      required this.image,
      required this.email,
      required this.gender,
      required this.username,
      required this.token})
      : super(key: key);

  final String name;
  final String surname;
  final String image;
  final String email;
  final String gender;
  final String username;
  final String token;

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  takePicture() async {
    await controller.setFlashMode(FlashMode.auto);
    final file = await controller.takePicture();
    final model = UserModel(widget.username, widget.email, widget.name,
        widget.surname, widget.gender, file.path, widget.token);
    await DataRepository().updateUser(model);
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: CameraPreview(controller),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: FloatingActionButton(
                onPressed: () async {
                  if(!controller.value.isInitialized) {
                    return null;
                  }
                  if(controller.value.isTakingPicture) {
                    return null;
                  }
                  try {
                    takePicture();
                  } on CameraException catch (e) {
                    return null;
                  }
                },
                child: const Icon(Icons.camera),
              ),
            ),
          )
        ],
      ),
    );
  }
}
