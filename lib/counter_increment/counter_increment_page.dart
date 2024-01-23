import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_prep/Widgets/app_bar.dart';
import 'package:getx_prep/counter_increment/counter_controller.dart';

class CounterIncrementScr1 extends StatelessWidget {
  const CounterIncrementScr1({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController=Get.put(CounterController());
    print("Build ${counterController.counter.value}");
    return Scaffold(
      appBar: AppBar(title: const Text("SCR1"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(() => Text(counterController.counter.value.toString(),style: Theme.of(context).textTheme.headlineLarge,)),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.delete),
            onPressed: (){
            counterController.counterReset();
          }),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: (){
            counterController.counterDec();
          }),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: (){
            counterController.counterInc();
          }),
        ]),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.last_page),
        onPressed: (){
          Get.to(()=> const CounterIncrementScr2());
      })
    );
  }
}

class CounterIncrementScr2 extends StatelessWidget {
  const CounterIncrementScr2({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController=Get.put(CounterController());
    print("Build ${counterController.counter.value}");
    return Scaffold(
      appBar: AppBar(title: const Text("SCR2"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(() => Text(counterController.counter.value.toString(),style: Theme.of(context).textTheme.headlineLarge,)),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.delete),
            onPressed: (){
            counterController.counterReset();
          }),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: (){
            counterController.counterDec();
          }),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: (){
            counterController.counterInc();
          }),
        ]),
        ]
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.last_page),
      //   onPressed: (){
          
      // })
    );
  }
}