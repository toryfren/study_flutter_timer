part of 'timer_bloc.dart';

abstract class TimerEvent extends Equatable {
  const TimerEvent();


  @override
//  List<Object> get props => []; 동일표현.
  List<Object> get props {
    return [];
  }
}

class TimerStarted extends TimerEvent {
  final int duration;

  const TimerStarted({@required this.duration});

  @override
  String toString() => 'TimerStated { duration: $duration }';
}

class TimerPaused extends TimerEvent {}

class TimerResumed extends TimerEvent {}

class TimerReset extends TimerEvent {}

class TimerTicked extends TimerEvent {
  final int duration;

  const TimerTicked({@required this.duration});

  @override
  List<Object> get props => [duration];

  @override
  String toString() => 'TimerTicked { duration: $duration }';
}