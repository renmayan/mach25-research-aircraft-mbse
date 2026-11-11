package AircraftBehavior {

    use case def MissionProfile;
    use case def Takeoff;
    use case def Cruise;
    use case def Landing;
    use case def EmergencyDescent;

    activity def AircraftMission {
        action takeoff : Takeoff;
        action cruise : Cruise;
        action landing : Landing;
    }

    state def FlightState;
    state takeoffMode : FlightState;
    state climbMode : FlightState;
    state cruiseMode : FlightState;
    state descentMode : FlightState;
    state landingMode : FlightState;

    action def StartEngines;
    action def IncreaseThrottle;
    action def MonitorFlightPath;
    action def DeployLandingGear;
    action def ExecuteEmergencyDescent;

    activity def NormalFlightSequence {
        step startEngines : StartEngines;
        step increaseThrottle : IncreaseThrottle;
        step monitorFlightPath : MonitorFlightPath;
        step deployLandingGear : DeployLandingGear;
    }
}