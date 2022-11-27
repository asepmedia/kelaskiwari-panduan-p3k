import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:panduan_p3k/constants/color_constant.dart';
import 'package:panduan_p3k/models/panduan_model.dart';

class DetailPanduan extends StatelessWidget {
  const DetailPanduan({Key? key, required this.panduan}) : super(key: key);

  final PanduanModel panduan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(panduan.title),
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: primaryColor,
        elevation: 0.5,
      ),
      body: Container(
        child: Stack(
          children: [
            Expanded(
                child: ListView(
              shrinkWrap: true,
              children: [Html(data: panduan.content)],
            ))
          ],
        ),
      ),
    );
  }
}
