import 'package:flutter/material.dart';
import 'package:happyeat/owner_page/bill/bill_getting_ready.dart';
import 'package:happyeat/owner_page/bill/bill_waiting.dart';
import 'package:happyeat/widgets/big_texts.dart';
import 'package:happyeat/owner_page/list_of_food.dart';

class OwnerStatusPage extends StatefulWidget {
  const OwnerStatusPage({Key? key}) : super(key: key);

  @override
  State<OwnerStatusPage> createState() => _OwnerStatusPageState();
}

class _OwnerStatusPageState extends State<OwnerStatusPage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: (){

            },
            child: Icon(
              Icons.list,
            ),
          ),
          backgroundColor: Colors.black,
          toolbarHeight: 40,
          bottom: TabBar(

            tabs: [
              Tab(child: Text("수락 대기", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),),
              Tab(child: Text("준비 중", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),),
              Tab(child: Text("완료", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),),
            ],
            unselectedLabelColor: Colors.grey[600],
          ),
        ),

        body: TabBarView(
          children: [

            //수락대기
            ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index){
                  return GestureDetector(
                    onTap: (){
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => BillWaiting());
                    },
                    child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.redAccent,
                                spreadRadius: 2,
                                blurRadius: 5,
                              )
                            ],
                            color: Colors.white
                          ),
                          margin: EdgeInsets.all(10),
                          child: Container(
                            margin: EdgeInsets.only(left: 20, right: 15, top: 15, bottom: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    BigText(text: waitingList[index]['name']),
                                    SizedBox(width: 20,),
                                    BigText(text: waitingList[index]['menu'], size: 20,),
                                    SizedBox(width: 20,),
                                    BigText(text: "인원 수 : " + waitingList[index]['people'], size: 15,)


                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    BigText(text: "도착 예정 시간 : " + waitingList[index]['time'], size: 15, )
                                  ],
                                )
                              ],
                            ),
                          )
                        ),
                  );

                }),

            //완료
            ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index){
                  return GestureDetector(
                    onTap: (){
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => BillGettingReady());
                    },
                    child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue,
                                spreadRadius: 2,
                                blurRadius: 5,
                              )
                            ],
                            color: Colors.white,
                        ),
                        margin: EdgeInsets.all(10),
                        child: Container(
                          margin: EdgeInsets.only(left: 20, right: 15, top: 15, bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BigText(text: gettingReadyList[index]['name']),
                                  SizedBox(width: 20,),
                                  BigText(text: gettingReadyList[index]['menu'], size: 20,),
                                  SizedBox(width: 20,),
                                  BigText(text: "인원 수 : " + gettingReadyList[index]['people'], size: 15,)


                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BigText(text: "도착 예정 시간 : " + gettingReadyList[index]['time'], size: 15, )
                                ],
                              )
                            ],
                          ),
                        )
                    ),
                  );
                }),

            //준비 중
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index){
                  return Container(
                      height: 100,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 5,
                            )
                          ],
                          color: Colors.grey
                      ),
                      margin: EdgeInsets.all(10),
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 15, top: 15, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BigText(text: finishedList[index]['name']),
                                SizedBox(width: 20,),
                                BigText(text: finishedList[index]['menu'], size: 15,),
                                SizedBox(width: 20,),
                                BigText(text: "인원 수 : " + finishedList[index]['people'], size: 15,)


                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text: "도착 예정 시간 : " + finishedList[index]['time'], size: 15, )
                              ],
                            )
                          ],
                        ),
                      )
                  );
                }),
          ],
        ),
      ),
    );
  }
}
