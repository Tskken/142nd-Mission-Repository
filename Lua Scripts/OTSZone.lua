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
    OTSMenu.coalition = coalition.side.BLUE

    function OTSMenu:createSAMMenu(root)
         -- Create Sub Menu for SAM targets
         local sam = missionCommands.addSubMenuForCoalition(self.coalition, "SAM", root)

         -- Create SAM spawn options in SAM menu
         -- Spawn units
         missionCommands.addCommandForCoalition(self.coalition, "Spawn SA15", sam, function() 
             self:spawnOTSTargetGroup(self.units.sam.sa15)
         end)
         missionCommands.addCommandForCoalition(self.coalition, "Spawn SA11", sam, function() 
             self:spawnOTSTargetGroup(self.units.sam.sa11)
         end)
         missionCommands.addCommandForCoalition(self.coalition, "Spawn SA2", sam, function() 
             self:spawnOTSTargetGroup(self.units.sam.sa2)
         end)
         -- Despawn units
         missionCommands.addCommandForCoalition(self.coalition, "Despawn SA15", sam, function() 
             self:despawnOTSTargetGroup(self.units.sam.sa15)
         end)
         missionCommands.addCommandForCoalition(self.coalition, "Despawn SA11", sam, function() 
             self:despawnOTSTargetGroup(self.units.sam.sa11)
         end)
         missionCommands.addCommandForCoalition(self.coalition, "Despawn SA2", sam, function() 
             self:despawnOTSTargetGroup(self.units.sam.sa2)
         end)
    end

    function OTSMenu:createArmorMenu(root)
        -- Create Sub Menu for Armor targets
        local armor = missionCommands.addSubMenuForCoalition(self.coalition, "Armor", root)

        -- Create Armor spawn options in Armor menu
        -- Spawn units
        missionCommands.addCommandForCoalition(self.coalition, "Spawn Heavy Armor", armor, function() 
            self:spawnOTSTargetGroup(self.units.armor.heavy)
        end)
        missionCommands.addCommandForCoalition(self.coalition, "Spawn Medium Armor", armor, function() 
            self:spawnOTSTargetGroup(self.units.armor.medium)
        end)
        missionCommands.addCommandForCoalition(self.coalition, "Spawn Light Armor", armor, function() 
            self:spawnOTSTargetGroup(self.units.armor.light)
        end)
        -- Despawn units
        missionCommands.addCommandForCoalition(self.coalition, "Despawn Heavy Armor", armor, function() 
            self:despawnOTSTargetGroup(self.units.armor.heavy)
        end)
        missionCommands.addCommandForCoalition(self.coalition, "Despawn Medium Armor", armor, function() 
            self:despawnOTSTargetGroup(self.units.armor.medium)
        end)
        missionCommands.addCommandForCoalition(self.coalition, "Despawn Light Armor", armor, function() 
            self:despawnOTSTargetGroup(self.units.armor.light)
        end)
    end

    function OTSMenu:createInfMenu(root)
        -- Create Sub Menu for infantry targets
        local inf = missionCommands.addSubMenuForCoalition(self.coalition, "Infantry", root)

        -- Create Infentry spawn options for Infentry menu
        -- Spawn units
        missionCommands.addCommandForCoalition(self.coalition, "Spawn Infantry", inf, function() 
            self:spawnOTSTargetGroup(self.units.infantry.inf)
        end)
        missionCommands.addCommandForCoalition(self.coalition, "Spawn Infantry w/ Mandpad", inf, function() 
            self:spawnOTSTargetGroup(self.units.infantry.manpad)
        end)
        -- Despawn units
        missionCommands.addCommandForCoalition(self.coalition, "Despawn Infantry", inf, function() 
            self:despawnOTSTargetGroup(self.units.infantry.inf)
        end)
        missionCommands.addCommandForCoalition(self.coalition, "Despawn Infantry w/ Mandpad", inf, function() 
            self:despawnOTSTargetGroup(self.units.infantry.manpad)
        end)
    end

    function OTSMenu:createAAAMenu(root)
        -- Create Sub Menu for AAA targets
        local aaa = missionCommands.addSubMenuForCoalition(self.coalition, "AAA", root)

        -- Create AAA spawn options for AAA menu
        -- Spawn units
        missionCommands.addCommandForCoalition(self.coalition, "Spawn Radar AAA", aaa, function() 
            self:spawnOTSTargetGroup(self.units.aaa.radar)
        end)
        missionCommands.addCommandForCoalition(self.coalition, "Spawn Military AAA", aaa, function() 
            self:spawnOTSTargetGroup(self.units.aaa.mil)
        end)
        missionCommands.addCommandForCoalition(self.coalition, "Spawn Insurgent AAA", aaa, function() 
            self:spawnOTSTargetGroup(self.units.aaa.insur)
        end)
        -- Despawn units
        missionCommands.addCommandForCoalition(self.coalition, "Despawn Radar AAA", aaa, function() 
            self:despawnOTSTargetGroup(self.units.aaa.radar)
        end)
        missionCommands.addCommandForCoalition(self.coalition, "Despawn Military AAA", aaa, function() 
            self:despawnOTSTargetGroup(self.units.aaa.mil)
        end)
        missionCommands.addCommandForCoalition(self.coalition, "Despawn Insurgent AAA", aaa, function() 
            self:despawnOTSTargetGroup(self.units.aaa.insur)
        end)
    end

    function OTSMenu:createAAMenu(root)
        -- Create Sub Menu for Air-Air targets
        local air = missionCommands.addSubMenuForCoalition(self.coalition, "Air-Air", root)

        -- Create Air-Air spawn options for Air-Air menu
        -- Spawn units
        missionCommands.addCommandForCoalition(self.coalition, "Spawn MiG 29 (BVR)", air, function() 
            self:spawnOTSTargetGroup(self.units.aa.bvr)
        end)
        missionCommands.addCommandForCoalition(self.coalition, "Spawn MiG 29 (BFM)", air, function() 
            self:spawnOTSTargetGroup(self.units.aaa.bfm)
        end)
        -- Despawn units
        missionCommands.addCommandForCoalition(self.coalition, "Despawn MiG 29 (BVR)", air, function() 
            self:despawnOTSTargetGroup(self.units.aa.bvr)
        end)
        missionCommands.addCommandForCoalition(self.coalition, "Despawn MiG 29 (BFM)", air, function() 
            self:despawnOTSTargetGroup(self.units.aaa.bfm)
        end)
    end

    function OTSMenu:spawnOTSTargetGroup(group)
        mist.respawnInZone(group, self.zone, true, 500, {initTasks = true})
    end

    function OTSMenu:despawnOTSTargetGroup(group)
        local g = Group.getByName(group)
        if g:isExist() then
            g:destroy()
        end
    end

    -- Create OTS F10 Menu
    function OTSMenu:init()
        -- Create root F10 Menu for OTS
        local root = missionCommands.addSubMenuForCoalition(self.coalition, "OTS Menu")

        -- Create each groups F10 menues
        OTSMenu:createSAMMenu(root)
        OTSMenu:createArmorMenu(root)
        OTSMenu:createInfMenu(root)
        OTSMenu:createAAAMenu(root)
        OTSMenu:createAAMenu(root)
    end
end

OTSMenu:init()