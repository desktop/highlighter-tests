import 'src/myFile.dart';

abstract class Vehicle {
    factory Vehicle(String type) {
        if (type == 'skateboard') return Skateboard();
        throw 'Can\'t create $type.';
    }
    num get odometer;
}

class Skateboard implements Vehicle {
    num _odometer = 0;
    num get odometer => _odometer;

    Skateboard();

    void addMiles(num increment) {
        _odometer += increment;
    }

    @override
    String toString() => 'Skateboard with mileage $odometer';
}

class Car implements Vehicle {
    final int modelYear;
    final String make;
    final String model;
    num _odometer = 0;
    num get odometer => _odometer;

    Car(this.modelYear, this.make, this.model);

    void addMiles(num increment) {
        _odometer += increment;
    }

    @override
    String toString() => 'Car: $modelYear $make $model with mileage $odometer';
}

void main() {
    var car = Car(2016, 'Honda', 'Civic');
    print(car);
}