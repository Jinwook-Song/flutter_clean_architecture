// ignore_for_file: constant_identifier_names

import 'package:clean_architecture/app/constant.dart';
import 'package:clean_architecture/presentation/resources/assets_manager.dart';
import 'package:clean_architecture/presentation/resources/color_manager.dart';
import 'package:clean_architecture/presentation/resources/font_manager.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';
import 'package:clean_architecture/presentation/resources/styles_manager.dart';
import 'package:clean_architecture/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:easy_localization/easy_localization.dart';

enum StateRendererType {
  // POPUP STATES
  POPUP_LOADING_STATE,
  POPUP_ERROR_STATE,
  POPUP_SUCCESS,
  // FULL SCREEN STATES
  FULL_SCREEN_LOADING_STATE,
  FULL_SCREEN_ERROR_STATE,
  CONTENT_SCREEN_STATE, // THE UI OF THE SCREEN
  EMPTY_SCREEN_STATE // EMPTY VIEW WHEN WE RECEIVE NO DATA FROM API SIDE FOR LIST SCREEN
}

class StateRenderer extends StatelessWidget {
  final StateRendererType stateRendererType;
  final String title;
  final String message;
  final VoidCallback? retryAction;

  StateRenderer({
    super.key,
    required this.stateRendererType,
    this.title = Constant.empty,
    String? message,
    this.retryAction,
  }) : message = message ?? AppStrings.loading.tr();

  @override
  Widget build(BuildContext context) {
    return _getStateWidget(context);
  }

  Widget _getStateWidget(BuildContext context) {
    switch (stateRendererType) {
      case StateRendererType.POPUP_LOADING_STATE:
        return _getPopupDialog(context,
            children: [_getAnimatedImage(AnimationAssets.loading)]);
      case StateRendererType.POPUP_ERROR_STATE:
        return _getPopupDialog(context, children: [
          _getAnimatedImage(AnimationAssets.error),
          _getMessage(message),
          _getRetryButton(context, AppStrings.ok.tr())
        ]);
      case StateRendererType.POPUP_SUCCESS:
        return _getPopupDialog(context, children: [
          _getAnimatedImage(AnimationAssets.success),
          _getMessage(title),
          _getMessage(message),
          _getRetryButton(context, AppStrings.ok.tr())
        ]);
      case StateRendererType.FULL_SCREEN_LOADING_STATE:
        return _getItemsInColumn(children: [
          _getAnimatedImage(AnimationAssets.loading),
          _getMessage(message),
        ]);
      case StateRendererType.FULL_SCREEN_ERROR_STATE:
        return _getItemsInColumn(children: [
          _getAnimatedImage(AnimationAssets.error),
          _getMessage(message),
          _getRetryButton(context, AppStrings.retryAgain.tr())
        ]);
      case StateRendererType.CONTENT_SCREEN_STATE:
        return const SizedBox.shrink();
      case StateRendererType.EMPTY_SCREEN_STATE:
        return _getItemsInColumn(children: [
          _getAnimatedImage(AnimationAssets.empty),
          _getMessage(message),
        ]);
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _getPopupDialog(
    BuildContext context, {
    required List<Widget> children,
  }) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s14),
      ),
      elevation: AppSize.s1_5,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(
            AppSize.s14,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: AppSize.s12,
              offset: Offset(
                AppSize.s0,
                AppSize.s12,
              ),
            )
          ],
        ),
        child: _getDialogContent(context, children: children),
      ),
    );
  }

  Widget _getDialogContent(
    BuildContext context, {
    required List<Widget> children,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }

  Widget _getAnimatedImage(String animationName) {
    return SizedBox.fromSize(
      size: const Size(AppSize.s100, AppSize.s100),
      child: Lottie.asset(animationName),
    );
  }

  Widget _getMessage(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p18),
        child: Text(
          message,
          style: getMediumStyle(
            color: ColorManager.black,
            fontSize: FontSize.s16,
          ),
        ),
      ),
    );
  }

  Widget _getRetryButton(BuildContext context, String buttonTitle) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p18),
        child: SizedBox(
          width: AppSize.s180,
          child: ElevatedButton(
            onPressed: () {
              if (stateRendererType ==
                  StateRendererType.FULL_SCREEN_ERROR_STATE) {
                // to call API function again
                retryAction?.call();
              } else {
                // dismiss popup state dialog
                Navigator.of(context).pop();
              }
            },
            child: Text(buttonTitle),
          ),
        ),
      ),
    );
  }

  Widget _getItemsInColumn({required List<Widget> children}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      ),
    );
  }
}
