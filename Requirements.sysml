package AircraftRequirements {

    requirement def Requirement;
    requirement def PerformanceRequirement :> Requirement;
    requirement def SafetyRequirement :> Requirement;
    requirement def OperationalRequirement :> Requirement;

    requirement aircraftRange : PerformanceRequirement {
        doc /* The aircraft shall have a range of at least 2000 km. */
    }

    requirement aircraftPayload : PerformanceRequirement {
        doc /* The aircraft shall carry at least 500 kg payload. */
    }

    requirement maxCruiseSpeed : PerformanceRequirement {
        doc /* The aircraft shall cruise at a maximum speed of 350 knots. */
    }

    requirement emergencyLanding : SafetyRequirement {
        doc /* The aircraft shall provide safe emergency landing capability. */
    }

    requirement fuelReserve : SafetyRequirement {
        doc /* The aircraft shall retain minimum reserve fuel for diversion. */
    }

    requirement cabinCapacity : OperationalRequirement {
        doc /* The aircraft shall accommodate at least 12 passengers. */
    }
}