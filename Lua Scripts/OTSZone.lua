OTSMenu = {}
do
    OTSMenu.zone = "ots-zone"
    OTSMenu.units = {
        sam = {
            sa15 = "ots-sa15-group",
            sa11 = "ots-sa11-group",
            sa2 = "ots-sa2-group",
        },
        armor = {
            heavy = "ots-heavy-armor-group",
            medium = "ots-medium-armor-group",
            light = "ots-light-armor-group",
        },
        infantry = {
            inf = "ots-inf-group",
            manpad = "ots-manpad-group",
        },
        aaa = {
            radar = "ots-radar-aaa-group",
            mil = "ots-military-aaa-group",
            insur = "ots-insurgent-aaa-group",
        },
        aa = {
            bvr = "ots-mig29-bvr-group",
            bfm = "ots-mig29-bfm-group",
        },
    }

    -- Create OTS F10 Menu for given group
    function OTSMenu:buildOTSMenu(group)
        -- Create root F10 Menu for OTS
        local root = missionCommands.addSubMenuForGroup(group, "OTS Menu")

        -- Create Sub Menu for SAM targets
        local sam = missionCommands.addSubMenuForGroup(group, "SAM", root)

        -- Create SAM spawn options in SAM menu
        missionCommands.addCommandForGroup(group, "Spawn SA15", sam, function() 
            self.spawnOTSTargetGroup(self.units.sam.sa15)
        end)
        missionCommands.addCommandForGroup(group, "Spawn SA11", sam, function() 
            self.spawnOTSTargetGroup(self.units.sam.sa11)
        end)
        missionCommands.addCommandForGroup(group, "Spawn SA2", sam, function() 
            self.spawnOTSTargetGroup(self.units.sam.sa2)
        end)

        -- Create Sub Menu for Armor targets
        local armor = missionCommands.addSubMenuForGroup(group, "Armor", root)

        -- Create Armor spawn options in Armor menu
        missionCommands.addCommandForGroup(group, "Spawn Heavy Armor", armor, function() 
            self.spawnOTSTargetGroup(self.units.armor.heavy)
        end)
        missionCommands.addCommandForGroup(group, "Spawn Medium Armor", armor, function() 
            self.spawnOTSTargetGroup(self.units.armor.medium)
        end)
        missionCommands.addCommandForGroup(group, "Spawn Light Armor", armor, function() 
            self.spawnOTSTargetGroup(self.units.armor.light)
        end)

        -- Create Sub Menu for infantry targets
        local inf = missionCommands.addSubMenuForGroup(group, "Infantry", root)

        -- Create Infentry spawn options for Infentry menu
        missionCommands.addCommandForGroup(group, "Spawn Infantry", inf, function() 
            self.spawnOTSTargetGroup(self.units.infantry.inf)
        end)
        missionCommands.addCommandForGroup(group, "Spawn Infantry w/ Mandpad", inf, function() 
            self.spawnOTSTargetGroup(self.units.infantry.manpad)
        end)

        -- Create Sub Menu for AAA targets
        local aaa = missionCommands.addSubMenuForGroup(group, "AAA", root)

        -- Create AAA spawn options for AAA menu
        missionCommands.addCommandForGroup(group, "Spawn Radar AAA", aaa, function() 
            self.spawnOTSTargetGroup(self.units.aaa.radar)
        end)
        missionCommands.addCommandForGroup(group, "Spawn Military AAA", aaa, function() 
            self.spawnOTSTargetGroup(self.units.aaa.mil)
        end)
        missionCommands.addCommandForGroup(group, "Spawn Insurgent AAA", aaa, function() 
            self.spawnOTSTargetGroup(self.units.aaa.insur)
        end)

        -- Create Sub Menu for Air-Air targets
        local air = missionCommands.addSubMenuForGroup(group, "Air-Air", root)

        -- Create Air-Air spawn options for Air-Air menu
        missionCommands.addCommandForGroup(group, "Spawn MiG 29 (BVR)", air, function() 
            self.spawnOTSTargetGroup(self.units.aa.bvr)
        end)
        missionCommands.addCommandForGroup(group, "Spawn MiG 29 (BFM)", air, function() 
            self.spawnOTSTargetGroup(self.units.aaa.bfm)
        end)
    end

    function OTSMenu:spawnOTSTargetGroup(group)
        mist.respawnInZone(group, self.zone, true, 500, {initTasks = true})
    end
end