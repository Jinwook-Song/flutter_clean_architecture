// ignore_for_file: constant_identifier_names

import 'package:clean_architecture/app/constant.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';

import 'package:clean_architecture/data/network/failure.dart';

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
  final Failure failure;
  final String title;
  final String message;
  final VoidCallback? retryAction;

  const StateRenderer({
    super.key,
    required this.stateRendererType,
    this.failure = const DefaultFailure(),
    this.title = Constant.empty,
    this.message = AppStrings.loading,
    this.retryAction,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
