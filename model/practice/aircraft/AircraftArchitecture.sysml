

package AircraftArchitecture {

    part def Aircraft {
        attribute mass : ISQ::MassValue;
        attribute wingspan : ISQ::LengthValue;
        attribute maxCruiseSpeed : ISQ::SpeedValue;
    }

    part def Wing {
        attribute span : ISQ::LengthValue;
        attribute area : ISQ::AreaValue;
        attribute aspectRatio ISQ::Real;
    }
    
    part def Engine {
        attribute thrust : ISQ::ForceValue;
        attribute fuelConsumption : ISQ::MassFlowRateValue;
        attribute maxPower : ISQ::PowerValue;
    }

    part def Avionics;
    part def LandingGear;
    part def Fuselage;
    part def FuelSystem;
    part def Propulsion;
    part def Inlet;
    part def ThermalProtection;


    part aircraft : Aircraft {
        part leftWing : Wing;
        part rightWing : Wing;
        part engineleft : Engine;
        part engineright : Engine;
        part avionics : Avionics;
        part fuselage : Fuselage;
        part fuelSystem : FuelSystem;
        part landingGear : LandingGear;
    }
}