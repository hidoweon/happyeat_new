import 'package:flutter/material.dart';
import 'package:happyeat/pages/setting_page/setting_page.dart';
import 'package:iamport_flutter/iamport_payment.dart';
import 'package:iamport_flutter/model/payment_data.dart';

class KaKaoPayment extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return IamportPayment(
      appBar: AppBar(
        title: Text("import pay"),
      ),
      initialChild: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              Text('잠시만 기다려주세요...', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),

      userCode: 'imp18171676',

      data: PaymentData(
          pg: 'kakaopay',                                          // PG사
          payMethod: 'card',                                           // 결제수단
          name: '아임포트 결제데이터 분석',                                  // 주문명
          merchantUid: 'mid_${DateTime.now().millisecondsSinceEpoch}', // 주문번호
          amount: 1000,                                               // 결제금액
          buyerName: '홍길동',                                           // 구매자 이름
          buyerTel: '01012345678',                                     // 구매자 연락처
          buyerEmail: 'example@naver.com',                             // 구매자 이메일
          buyerAddr: '서울시 마포구 동교동 152-13',                         // 구매자 주소
          buyerPostcode: '06018',                                      // 구매자 우편번호
          appScheme: 'example',                                        // 앱 URL scheme
          cardQuota : [2,3]                                            //결제창 UI 내 할부개월수 제한
      ),

      callback: (Map<String, String> result){
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => SettingPage()),
                (Route<dynamic> route) => false);
      },

    );
  }

}

