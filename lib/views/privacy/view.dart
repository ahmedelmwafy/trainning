import 'package:flutter/material.dart';
import 'package:tawla/widgets/appBar.dart';

class PrivacyView extends StatefulWidget {
  @override
  _PrivacyViewState createState() => _PrivacyViewState();
}

class _PrivacyViewState extends State<PrivacyView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover)),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: customAppBar(
                context: context, title: 'الشروط و الأحكام', opacity: true),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo2.png',
                        width: 80,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المســـاحة لقد تم توليد هذا النص من مولد النــــــص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصـــــوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق إذا كنت تحتاج إلى عدد أكبر من الفقـــــرات يتيح لك مولد النــــــــص العربى زيادة عدد الفقرات كمــــــا تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحـــيان أن يطلع على صورة حقيقية لتصميم الموقع'),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
