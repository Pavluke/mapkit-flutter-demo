import 'package:yandex_maps_navikit/directions.dart';
import 'package:yandex_maps_navikit/mapkit.dart';
import 'package:yandex_maps_navikit/navigation.dart';
import 'package:yandex_maps_navikit/runtime.dart';

final class NavigationListenerImpl implements NavigationListener {
  final void Function(List<RequestPoint> points)? onRoutesRequestedCallback;
  final void Function(DrivingRoute route)? onAlternativesRequestedCallback;
  final void Function(String uri)? onUriResolvingRequestedCallback;
  final void Function()? onRoutesBuiltCallback;
  final void Function(Error error)? onRoutesRequestErrorCallback;
  final void Function()? onResetRoutesCallback;

  const NavigationListenerImpl({
    this.onRoutesRequestedCallback,
    this.onAlternativesRequestedCallback,
    this.onUriResolvingRequestedCallback,
    this.onRoutesBuiltCallback,
    this.onRoutesRequestErrorCallback,
    this.onResetRoutesCallback,
  });

  @override
  void onRoutesRequested(List<RequestPoint> points) =>
      onRoutesRequestedCallback?.call(points);

  @override
  void onAlternativesRequested(DrivingRoute currentRoute) =>
      onAlternativesRequestedCallback?.call(currentRoute);

  @override
  void onUriResolvingRequested(String uri) =>
      onUriResolvingRequestedCallback?.call(uri);

  @override
  void onRoutesBuilt() => onRoutesBuiltCallback?.call();

  @override
  void onRoutesRequestError(Error error) =>
      onRoutesRequestErrorCallback?.call(error);

  @override
  void onResetRoutes() => onResetRoutesCallback?.call();
}
