TheRange = {}

do
    TheRange.zones = {
        command = "range-command",
        north = "range-north",
        east = "range-east",
        south = "range-south",
        west = "range-west",
    }

    function TheRange:init()
        local root = missionCommands.addSubMenuForCoalition(coalition.side.BLUE, "The Range")

        missionCommands.addCommandForCoalition(coalition.side.BLUE, "Respawn North", root, function()
            mist.respawnGroup(self.zones.north, true)
        end)

        missionCommands.addCommandForCoalition(coalition.side.BLUE, "Respawn East", root, function()
            mist.respawnGroup(self.zones.east, true)
        end)

        missionCommands.addCommandForCoalition(coalition.side.BLUE, "Respawn South", root, function()
            mist.respawnGroup(self.zones.south, true)
        end)

        missionCommands.addCommandForCoalition(coalition.side.BLUE, "Respawn West", root, function()
            mist.respawnGroup(self.zones.west, true)
        end)
    end
end

TheRange:init()