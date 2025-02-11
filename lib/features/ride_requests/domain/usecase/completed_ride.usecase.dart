import 'package:rickshaw_driver_app/features/ride_requests/domain/entity/requested_ride.dart';

import '../../data/repository/ride_request_repository.dart';

class CompleteRideUseCase {
  final DriverRideRequestRepository repository;

  CompleteRideUseCase(this.repository);

  Future<void> call({required String id, required String requestId,required String status,}) {
    return repository.saveCompletedOrCanceledRide(driverId: id, requestId: requestId,status: status);
  }

  Future<List<RideRequestEntity>> getCompletedRides({required String driverId}) {
    return repository.getCompletedRideRequestsForDriver(driverId);
  }
}
