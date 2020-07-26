import 'package:equatable/equatable.dart';

abstract class TimerState extends Equatable {
  final int duration;

  const TimerState(this.duration);

  @override
  List<Object> get props => [duration];
}

class TimerInitial extends TimerState {
  const TimerInitial(int duration) : super(duration);

  @override
  String toString() {
    return 'TimerInitial { duration: $duration }';
  }
}

// TODO :: TimerRunPause, TimerRunInprogress , TimerRunComplete
