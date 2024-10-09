import 'package:clean_architecture/app/constant.dart';
import 'package:clean_architecture/presentation/common/state_renderer/state_renderer.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';

abstract class FlowState {
  StateRendererType getStateRendererType();
  String getMessage();
}

// Loading State (POPUP, FULL SCREEN)
class LoadingState extends FlowState {
  final StateRendererType stateRendererType;
  final String message;

  LoadingState({
    required this.stateRendererType,
    this.message = AppStrings.loading,
  });

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRendererType() => stateRendererType;
}

// Error State (POPUP, FULL SCREEN)
class ErrorState extends FlowState {
  final StateRendererType stateRendererType;
  final String message;

  ErrorState({
    required this.stateRendererType,
    required this.message,
  });

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRendererType() => stateRendererType;
}

// Content State
class ContentState extends FlowState {
  @override
  String getMessage() => Constant.empty;

  @override
  StateRendererType getStateRendererType() =>
      StateRendererType.CONTENT_SCREEN_STATE;
}

// Empty State
class EmptyState extends FlowState {
  final String message;

  EmptyState({required this.message});

  @override
  String getMessage() => Constant.empty;

  @override
  StateRendererType getStateRendererType() =>
      StateRendererType.EMPTY_SCREEN_STATE;
}

extension FlowStateX on FlowState {
  Widget getScreenWidget(BuildContext context, Widget contentScreenWidget,
      VoidCallback retryAction) {
    switch (runtimeType) {
      case LoadingState _:
        {
          if (getStateRendererType() == StateRendererType.POPUP_LOADING_STATE) {
            // showing popup dialog
            showPopUp(context, getStateRendererType(), getMessage());
            // return content ui of screen
            return contentScreenWidget;
          } else {
            return StateRenderer(
              stateRendererType: getStateRendererType(),
              message: getMessage(),
              retryAction: retryAction,
            );
          }
        }
      case ErrorState _:
        {
          if (getStateRendererType() == StateRendererType.POPUP_ERROR_STATE) {
            // showing popup dialog
            showPopUp(context, getStateRendererType(), getMessage());
            // return content ui of screen
            return contentScreenWidget;
          } else {
            return StateRenderer(
              stateRendererType: getStateRendererType(),
              message: getMessage(),
              retryAction: retryAction,
            );
          }
        }
      case ContentState _:
        {
          return contentScreenWidget;
        }
      case EmptyState _:
        {
          return StateRenderer(
            stateRendererType: getStateRendererType(),
            message: getMessage(),
            retryAction: retryAction,
          );
        }
      default:
        {
          return contentScreenWidget;
        }
    }
  }

  showPopUp(
    BuildContext context,
    StateRendererType stateRendererType,
    String message, {
    String title = Constant.empty,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) => showDialog(
        context: context,
        builder: (BuildContext context) => StateRenderer(
              stateRendererType: stateRendererType,
              message: message,
              title: title,
              retryAction: () {},
            )));
  }
}
