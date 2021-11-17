
class TimeInfo {
  final DateTime _firstTime;
  final DateTime _lastTime;

  TimeInfo(this._firstTime, this._lastTime);

  DateTime get lastTime => _lastTime;

  DateTime get firstTime => _firstTime;
}