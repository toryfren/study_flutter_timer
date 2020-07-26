import 'dart:async';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_timer/bloc/bloc.dart';

import 'package:flutter_timer/ticker.dart';


class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;
  static const int _duration = 60;

  StreamSubscription<int> _tickerSubscription;

  TimerBloc({@required Ticker ticker})
      : assert(ticker != null),
        _ticker = ticker,
        super(TimerInitial(_duration));

  @override
  Stream<TimerState> mapEventToState(
      TimerEvent event
  ) async* {
    if (event is TimerStarted) {
      yield* _mapTimerStartedToState(event);
    }
  }

  Stream<TimerState> _mapTimerStartedToState(TimerStarted start) async*{
    yield
  }
}