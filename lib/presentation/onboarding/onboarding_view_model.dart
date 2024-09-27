import 'package:clean_architecture/presentation/base/base_view_model.dart';
import 'package:clean_architecture/presentation/onboarding/onboarding_screen.dart';

class OnboardingViewModel extends BaseViewModel
    implements OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  // TODO: implement inputSliderViewObject
  Sink get inputSliderViewObject => throw UnimplementedError();

  @override
  void onPageChanged(int index) {
    // TODO: implement onPageChanged
  }

  @override
  // TODO: implement outputSliderViewObject
  Stream<SliderViewObject> get outputSliderViewObject =>
      throw UnimplementedError();
}

// inputs mean the orders that our view model will recieve from our view
abstract class OnBoardingViewModelInputs {
  void goNext(); // when user clicks on right arrow or swipe left.
  void goPrevious(); // when user clicks on left arrow or swipe right.
  void onPageChanged(int index);

  // this is the way to add data to the stream .. stream input
  Sink get inputSliderViewObject;
}

// outputs mean data or results that will be sent from our view model to our view
abstract class OnBoardingViewModelOutputs {
  Stream<SliderViewObject> get outputSliderViewObject;
}

class SliderViewObject {
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.numOfSlides, this.currentIndex);
}
