scriptId = 'com.bgoti.s'
scriptTitle = "S"
scriptDetailsUrl = ""

function onPoseEdge(pose, edge)	
    if (pose ~= "rest" and pose ~= "unknown") then
        myo.unlock(edge == "off" and "timed" or "hold")
    end
end
 
function onFist(keyEdge)
    myo.debug("S")
    myo.keyboard("s",keyEdge)
end
