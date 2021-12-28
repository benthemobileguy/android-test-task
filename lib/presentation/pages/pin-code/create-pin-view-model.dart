import 'dart:async';
import 'package:android_test_task/presentation/base/baseviewmodel.dart';

class CreatePinViewModel extends BaseViewModel
    with CreatePinViewModelInputs, CreatePinViewModelOutputs {
  // stream controllers
  final StreamController _streamController =
  StreamController<SlideViewObject>();

  int _currentIndex = 0;

  // inputs
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    // send this  data to our view
   // _postDataToView();

  }



  @override
  Sink get inputSliderViewObject => _streamController.sink;

  // outputs
  @override
  Stream<SlideViewObject> get outputSliderViewObject =>
      _streamController.stream.map((slideViewObject) => slideViewObject);

  // private functions

}

// inputs mean the orders that our view model will recieve from our view
abstract class CreatePinViewModelInputs {

  Sink
  get inputSliderViewObject; // this is the way to add data to the stream .. stream input
}

// outputs mean data or results that will be sent from our view model to our view
abstract class CreatePinViewModelOutputs {
  Stream<SlideViewObject> get outputSliderViewObject;
}

class SlideViewObject {
  int numOfSlides;
  int currentIndex;

}