import 'package:clean_architecture/domain/model/model.dart';
import 'package:clean_architecture/presentation/onboarding/onboarding_view_model.dart';
import 'package:clean_architecture/presentation/resources/assets_manager.dart';
import 'package:clean_architecture/presentation/resources/color_manager.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';
import 'package:clean_architecture/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  final OnboardingViewModel _viewModel = OnboardingViewModel()..start();

  @override
  void dispose() {
    _pageController.dispose();
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SliderViewObject>(
      stream: _viewModel.outputSliderViewObject,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const SizedBox.shrink();
        return _getContentWidget(snapshot.data!);
      },
    );
  }

  Widget _getContentWidget(SliderViewObject sliderViewObject) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: AppSize.s0,
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: sliderViewObject.numOfSlides,
        onPageChanged: _viewModel.onPageChanged,
        itemBuilder: (context, index) => OnboardingPage(
          sliderObject: sliderViewObject.sliderObject,
        ),
      ),
      bottomNavigationBar: Container(
        color: ColorManager.primary,
        height: AppSize.s120,
        child: Column(
          children: [
            Container(
              color: ColorManager.white,
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.skip,
                    style: Theme.of(context).textTheme.titleSmall,
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ),
            _getBottomSheetWidget(sliderViewObject)
          ],
        ),
      ),
    );
  }

  Widget _getBottomSheetWidget(SliderViewObject sliderViewObject) {
    return Container(
      color: ColorManager.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // left arrow
          Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
                onTap: () => _pageController.animateToPage(
                      _viewModel.goPrevious(),
                      duration: const Duration(
                        milliseconds: DurationConstant.d300,
                      ),
                      curve: Curves.easeInOut,
                    ),
                child: SizedBox(
                  height: AppSize.s20,
                  width: AppSize.s20,
                  child: SvgPicture.asset(ImageAssets.leftArrowIc),
                )),
          ),

          // circles indicator
          Row(
            children: [
              for (int i = 0; i < sliderViewObject.numOfSlides; i++)
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  child: _getProperCircle(i, sliderViewObject.currentIndex),
                )
            ],
          ),

          // right arrow
          Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
                onTap: () => _pageController.animateToPage(
                      _viewModel.goNext(),
                      duration: const Duration(
                        milliseconds: DurationConstant.d300,
                      ),
                      curve: Curves.easeInOut,
                    ),
                child: SizedBox(
                  height: AppSize.s20,
                  width: AppSize.s20,
                  child: SvgPicture.asset(ImageAssets.rightarrowIc),
                )),
          )
        ],
      ),
    );
  }

  Widget _getProperCircle(int index, int currentIndex) {
    if (index == currentIndex) {
      return SvgPicture.asset(ImageAssets.solidCircleIc);
    } else {
      return SvgPicture.asset(ImageAssets.hollowCircleIc);
    }
  }
}

class OnboardingPage extends StatelessWidget {
  final SliderObject sliderObject;
  const OnboardingPage({super.key, required this.sliderObject});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Gap(AppSize.s40),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            sliderObject.subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const Gap(AppSize.s40),
        SvgPicture.asset(sliderObject.image)
      ],
    );
  }
}
