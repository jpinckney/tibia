local function ServerSave()
	if configManager.getBoolean(configKeys.CLEAN_MAP_AT_SERVER_SAVE) then
		cleanMap()
	end
	if configManager.getBoolean(configKeys.CLOSE_AT_SERVER_SAVE) then
		Game.setGameState(GAME_STATE_CLOSED)
	end
	if configManager.getBoolean(configKeys.SHUTDOWN_AT_SERVER_SAVE) then
		Game.setGameState(GAME_STATE_SHUTDOWN)
	end

	-- Updating daily reward next server save.
	updateGlobalStorage(DailyReward.storages.lastServerSave, os.time())
	saveServer()
end

local function secondServerSaveWarning()
	Game.broadcastMessage('Server is saving game in one minute. Please go to a safe place.', MESSAGE_STATUS_WARNING)
	addEvent(serverSave, 60000)
end

local function firstServerSaveWarning()
	Game.broadcastMessage('Server is saving game in 3 minutes. Please go to a safe place.', MESSAGE_STATUS_WARNING)
	addEvent(secondServerSaveWarning, 120000)
end

function onTime(interval)
	Game.broadcastMessage('Server is saving game in 5 minutes. Please go to a safe place.', MESSAGE_STATUS_WARNING)
	Game.setGameState(GAME_STATE_STARTUP)
	addEvent(firstServerSaveWarning, 120000)
	return not configManager.getBoolean(configKeys.SHUTDOWN_AT_SERVER_SAVE)
end
