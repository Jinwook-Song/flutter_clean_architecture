import 'dart:async';
import 'dart:math';

import 'package:clean_architecture/domain/model/model.dart';
import 'package:clean_architecture/presentation/base/base_view_model.dart';
import 'package:clean_architecture/presentation/resources/assets_manager.dart';
import 'package:clean_architecture/presentation/resources/routes_manager.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';
import 'package:easy_localization/easy_localization.dart';

class OnboardingViewModel extends BaseViewModel
    implements OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  final StreamController<SliderViewObject> _streamController =
      StreamController();

  late final List<SliderObject> _list;
  int _currentIndex = 0;

  @override
  void start() {
    _list = _getSliderData();
    _postDataToView();
  }

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  int goPrevious() {
    _currentIndex = max(_currentIndex - 1, 0);
    _postDataToView();
    return _currentIndex;
  }

  @override
  int goNext() {
    _currentIndex = min(_currentIndex + 1, _list.length - 1);
    _postDataToView();
    return _currentIndex;
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _postDataToView();
  }

  @override
  Sink<SliderViewObject> get inputSliderViewObject => _streamController.sink;

  @override
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((sliderObject) => sliderObject);

  List<SliderObject> _getSliderData() => [
        SliderObject(
          title: AppStrings.onBoardingTitle1.tr(),
          subtitle: AppStrings.onBoardingTitle1.tr(),
          image: ImageAssets.onboardingLogo1,
        ),
        SliderObject(
          title: AppStrings.onBoardingTitle2.tr(),
          subtitle: AppStrings.onBoardingTitle2.tr(),
          image: ImageAssets.onboardingLogo2,
        ),
        SliderObject(
          title: AppStrings.onBoardingTitle3.tr(),
          subtitle: AppStrings.onBoardingTitle3.tr(),
          image: ImageAssets.onboardingLogo3,
        ),
        SliderObject(
          title: AppStrings.onBoardingTitle4.tr(),
          subtitle: AppStrings.onBoardingTitle4.tr(),
          image: ImageAssets.onboardingLogo4,
        ),
      ];

  _postDataToView() => {
        inputSliderViewObject.add(
          SliderViewObject(
            _list[_currentIndex],
            _list.length,
            _currentIndex,
          ),
        )
      };
}

// inputs mean the orders that our view model will recieve from our view
abstract class OnBoardingViewModelInputs {
  int goNext(); // when user clicks on right arrow or swipe left.
  int goPrevious(); // when user clicks on left arrow or swipe right.
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
