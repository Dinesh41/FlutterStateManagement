// The reducer, which takes the previous count and increments it in response
// to an Increment action.
import 'package:countredux/redux/ReduxActions.dart';

import 'appstate.dart';

AppState reduxReducer(AppState state, dynamic action) {
  AppState newState = state;
  if (action == ReduxActions.Increment) {
    newState.count++;
  } else if (action == ReduxActions.Decrement) {
    newState.count--;
  }

  return newState;
}
