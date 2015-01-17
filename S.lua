scriptId = 'com.bgoti.s'
scriptTitle = "S"
scriptDetailsUrl = ""

function onPoseEdge(pose, edge)
    myo.setLockingPolicy("none")
    
    local keyEdge = edge == "off" and "up" or "down"
    
    if (pose == "waveOut") then
        onWaveOut(keyEdge)      
    elseif (pose == "waveIn") then
        onWaveIn(keyEdge)
    elseif (pose == "fist") then
        onFist(keyEdge)
    elseif (pose == "fingersSpread") then
        onFingersSpread(keyEdge)            
    end
end

function onFist(keyEdge)
    myo.debug("S")    
    myo.keyboard("s",keyEdge)
end
