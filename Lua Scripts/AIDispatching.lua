DetectionSetGroup = SET_GROUP:New()
DetectionSetGroup:FilterPrefixes({"EW"})
DetectionSetGroup:_FilterStart()

Detection = DETECTION_AREAS:New(DetectionSetGroup, 30000)

A2ADispatcher = AI_A2A_DISPATCHER:New(Detection)

A2ADispatcher:SetEngageRadius(50000)

A2ADispatcher:SetGciRadius(150000)

RedBorderZone = ZONE_POLYGON:New("Red Border", GROUP:FindByName("RedBorder"))
A2ADispatcher:SetBorderZone(RedBorderZone)

A2ADispatcher:SetSquadron("Anapa", AIRBASE.Caucasus.Anapa_Vityazevo, {"SQ RED MiG-29", "SQ RED SU-27"}) 
A2ADispatcher:SetSquadron("Krasnodar", AIRBASE.Caucasus.Krasnodar_Pashkovsky, {"SQ RED MiG-29", "SQ RED SU-27"})
A2ADispatcher:SetSquadron("Maykop", AIRBASE.Caucasus.Maykop_Khanskaya, {"SQ RED MiG-31"}) --GCI
A2ADispatcher:SetSquadron("Gudauta", AIRBASE.Caucasus.Gudauta, {"SQ RED MiG-29", "SQ RED SU-27"})
A2ADispatcher:SetSquadron("Mozdok", AIRBASE.Caucasus.Mozdok, {"SQ RED MiG-29", "SQ RED SU-27"}) --GCI
A2ADispatcher:SetSquadron("Tbilisi", AIRBASE.Caucasus.Tbilisi_Lochini, {"SQ RED MiG-29", "SQ RED SU-27"})
A2ADispatcher:SetSquadron("Beslan", AIRBASE.Caucasus.Beslan, {"SQ RED MiG-29", "SQ RED SU-27"})
A2ADispatcher:SetSquadron("Novorossiysk", AIRBASE.Caucasus.Novorossiysk, {"SQ RED MiG-31"}) --GCI
A2ADispatcher:SetSquadron("Mineralnye", AIRBASE.Caucasus.Mineralnye_Vody, {"SQ RED MiG-29", "SQ RED SU-27"})

A2ADispatcher:SetSquadron("MozdokGci", AIRBASE.Caucasus.Mozdok,{"SQ RED MiG-31"})
A2ADispatcher:SetSquadron("MaykopGci", AIRBASE.Caucasus.Maykop_Khanskaya,{"SQ RED MiG-31"})
A2ADispatcher:SetSquadron("MineralnyeGci", AIRBASE.Caucasus.Mineralnye_Vody,{"SQ RED MiG-31"})
A2ADispatcher:SetSquadron("NovorossiyskGci", AIRBASE.Caucasus.Novorossiysk,{"SQ RED MiG-31"})

A2ADispatcher:SetSquadronTakeoffFromParkingCold("Anapa")
A2ADispatcher:SetSquadronTakeoffFromParkingCold("Krasnodar")
A2ADispatcher:SetSquadronTakeoffFromParkingCold("Maykop")
A2ADispatcher:SetSquadronTakeoffFromParkingCold("Gudauta")
A2ADispatcher:SetSquadronTakeoffFromParkingCold("Mozdok")
A2ADispatcher:SetSquadronTakeoffFromParkingCold("Tbilisi")
A2ADispatcher:SetSquadronTakeoffFromParkingCold("Beslan")
A2ADispatcher:SetSquadronTakeoffFromParkingCold("Novorossiysk")
A2ADispatcher:SetSquadronTakeoffFromParkingCold("Mineralnye")

A2ADispatcher:SetSquadronTakeoffFromParkingHot("MozdokGci")
A2ADispatcher:SetSquadronTakeoffFromParkingHot("MaykopGci")
A2ADispatcher:SetSquadronTakeoffFromParkingHot("MineralnyeGci")
A2ADispatcher:SetSquadronTakeoffFromParkingHot("NovorossiyskGci")

A2ADispatcher:SetSquadronLandingAtEngineShutdown("Anapa")
A2ADispatcher:SetSquadronLandingAtEngineShutdown("Krasnodar")
A2ADispatcher:SetSquadronLandingAtEngineShutdown("Maykop")
A2ADispatcher:SetSquadronLandingAtEngineShutdown("Gudauta")
A2ADispatcher:SetSquadronLandingAtEngineShutdown("Mozdok")
A2ADispatcher:SetSquadronLandingAtEngineShutdown("Tbilisi")
A2ADispatcher:SetSquadronLandingAtEngineShutdown("Beslan")
A2ADispatcher:SetSquadronLandingAtEngineShutdown("Novorossiysk")
A2ADispatcher:SetSquadronLandingAtEngineShutdown("Mineralnye")

A2ADispatcher:SetSquadronLandingAtRunway("MozdokGci")
A2ADispatcher:SetSquadronLandingAtRunway("MaykopGci")
A2ADispatcher:SetSquadronLandingAtRunway("MineralnyeGci")
A2ADispatcher:SetSquadronLandingAtRunway("NovorossiyskGci")

A2ADispatcher:SetSquadronGrouping("Anapa", 2)
A2ADispatcher:SetSquadronGrouping("Krasnodar", 2)
A2ADispatcher:SetSquadronGrouping("Maykop", 2)
A2ADispatcher:SetSquadronGrouping("Gudauta", 2)
A2ADispatcher:SetSquadronGrouping("Mozdok", 2)
A2ADispatcher:SetSquadronGrouping("Tbilisi", 2)
A2ADispatcher:SetSquadronGrouping("Beslan", 2)
A2ADispatcher:SetSquadronGrouping("Novorossiysk", 2)
A2ADispatcher:SetSquadronGrouping("Mineralnye", 2)

CapZoneWest = ZONE:New("CapZoneWest")
A2ADispatcher:SetSquadronCap("Anapa", CapZoneWest, 8000, 10000, 600, 800, 800, 1200, "BARO")

CapZoneWest2 = ZONE:New("CapZoneWest2")
A2ADispatcher:SetSquadronCap("Krasnodar", CapZoneWest2, 8000, 10000, 600, 800, 800, 1200, "BARO")
A2ADispatcher:SetSquadronCap("Gudauta", CapZoneWest2, 8000, 10000, 600, 800, 800, 1200, "BARO")

CapZoneMiddle = ZONE:New("CapZoneMiddle")
A2ADispatcher:SetSquadronCap("Mozdok", CapZoneMiddle, 8000, 10000, 600, 800, 800, 1200, "BARO")
A2ADispatcher:SetSquadronCap("Mineralnye", CapZoneMiddle, 8000, 10000, 600, 800, 800, 1200, "BARO")

CapZoneMiddle2 = ZONE:New("CapZoneMiddle2")
A2ADispatcher:SetSquadronCap("Beslan", CapZoneMiddle2, 8000, 10000, 600, 800, 800, 1200, "BARO")

CapZoneEast = ZONE:New("CapZoneEast")
A2ADispatcher:SetSquadronCap("Tbilisi", CapZoneEast, 8000, 10000, 600, 800, 800, 1200, "BARO")

A2ADispatcher:SetSquadronGci("MozdokGci", 1000, 1400)
A2ADispatcher:SetSquadronGci("MaykopGci", 1000, 1400)
A2ADispatcher:SetSquadronGci("MineralnyeGci", 1000, 1400)
A2ADispatcher:SetSquadronGci("NovorossiyskGci", 1000, 1400)

A2ADispatcher:SetDisengageRadius(80000)