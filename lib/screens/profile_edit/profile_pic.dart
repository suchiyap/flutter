import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:temple_dev/constants.dart';
import 'package:badges/badges.dart' as badge;

class ProfilePic extends StatefulWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePic> createState() => _ProfilePicFormState();
}

class _ProfilePicFormState extends State<ProfilePic> {
  final ImagePicker _picker = ImagePicker();
  final List _imageFile = [{}];
  String? _retrieveDataError;
  dynamic _pickImageError;
  bool kIsWeb = true;

  @override
  void initState() {
    super.initState();
    setState(() {
      // _imageFile[0]['path'] = 'https://catx-media.securelayers.cloud/products/500_x_300_Ramosmania_rodriguesii_(Rubiaceae)_1681182083.jpg';
      _imageFile[0]['path'] = const AssetImage('assets/images/profile/avatar.jpeg');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: _previewImage(0));
  }

  Text? _getRetrieveErrorWidget() {
    if (_retrieveDataError != null) {
      final Text result = Text(_retrieveDataError!);
      _retrieveDataError = null;
      return result;
    }
    return null;
  }
  
  void _onImageButtonPressed(ImageSource source, imgNum, { BuildContext? context }) async {
    try {
      final pickedFile = await _picker.pickImage(
        source: source,
        imageQuality: 50,
      );
      if (pickedFile != null) {
        setState(() {
          _imageFile[0]['path'] = pickedFile.path;
          kIsWeb = false;
        });
      }
    } catch (e) {
      setState(() {
        _pickImageError = e;
      });
    }
  }
  
  Widget _previewImage(imgNum) {
    final Text? retrieveError = _getRetrieveErrorWidget();
    if (retrieveError != null) {
      return retrieveError;
    }
    if (_pickImageError != null) {
      return Text(
        'Pick image error: $_pickImageError',
        textAlign: TextAlign.center,
      );
    } else {
      return Center(
        // _imageFile[imgNum]['path'] != null
        // ? Column(
        //   children: [
        //     ClipRRect(
        //       borderRadius: BorderRadius.circular(55),
        //       child: kIsWeb
        //           ? Image.network(
        //               // _imageFile,
        //               _imageFile[imgNum]['path'],
        //               width: 50,
        //               height: 50,
        //               fit: BoxFit.fitHeight,
        //             )
        //           : Image.file(
        //               File(_imageFile[imgNum]['path']),
        //               width: 50,
        //               height: 50,
        //               fit: BoxFit.fitHeight,
        //             ),
        //     ),
        //   ]
        // )
        // : Column(children: [
        //     Text(
        //       'Upload Avatar',
        //       style: TextStyle(fontSize: 12, color: kTextColor),
        //     ),
        //     Align(
        //       alignment: Alignment.bottomRight,
        //       child: Icon(
        //         Icons.camera_alt,
        //         color: Colors.grey[800],
        //       ),
        //     )
        //   ]
        // ),
        child: GestureDetector(
          onTap: () => {
            _showPicker(context, imgNum),
          },
          child: badge.Badge(
            // badgeContent: const Text('20',
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontWeight: FontWeight.bold,
            //         fontSize: 10)),
            badgeContent: const Image(
              image: AssetImage('assets/images/profile/upload_avatar.jpeg'), 
              width: 25, 
              height: 25
            ),
            badgeStyle: const badge.BadgeStyle(
              badgeColor: Colors.transparent,
            ),
            showBadge: true,
            position:
                badge.BadgePosition.bottomEnd(end: -10, bottom: -5),
            child: Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  // image: NetworkImage('https://google.com'), // for dynamic from backend
                  image: kIsWeb ? _imageFile[imgNum]['path'] : FileImage(File(_imageFile[imgNum]['path'])),
                  fit: BoxFit.cover
                ),
                border: Border.all(
                  color: kPrimaryBackgroundColor,
                  width: 8,
                ),
                // borderRadius: BorderRadius.circular(12),
                shape: BoxShape.circle,
                color: kPrimaryBackgroundColor,
              )
            ),
          ),
        )
      );
    }
  }

  void _showPicker(context, imgNum) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () => {
                  _onImageButtonPressed(ImageSource.gallery, imgNum, context: context),
                  Navigator.of(context).pop(),
                  _previewImage(0),
                }
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () => {
                  _onImageButtonPressed(ImageSource.camera, imgNum, context: context),
                  Navigator.of(context).pop(),
                  _previewImage(0),
                },
              ),
            ],
          ),
        );
      }
    );
  }
}