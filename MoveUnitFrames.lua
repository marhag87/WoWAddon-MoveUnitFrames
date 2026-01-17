local MoveUnitFrames = CreateFrame("FRAME", "MoveUnitFramesFrame");
MoveUnitFrames:RegisterEvent("PLAYER_ENTERING_WORLD");
MoveUnitFrames:RegisterEvent("PLAYER_LOGOUT");

local PlayerX = -160
local PlayerY = -200
local TargetX = 160
local TargetY = -200
local FocusX = 400
local FocusY = -200

function MoveUnitFrames:OnEvent(event, arg1)
    if event == "PLAYER_ENTERING_WORLD" then
        PlayerFrame:ClearAllPoints();
        PlayerFrame:SetPoint("CENTER", UIParent, "CENTER", PlayerX, PlayerY);
        PlayerFrame:SetUserPlaced(true);

        TargetFrame:ClearAllPoints();
        TargetFrame:SetPoint("CENTER", UIParent, "CENTER", TargetX, TargetY);
        TargetFrame:SetUserPlaced(true);

        FocusFrame:ClearAllPoints();
        FocusFrame:SetPoint("CENTER", UIParent, "CENTER", FocusX, FocusY);
        FocusFrame:SetUserPlaced(true);
    elseif event == "PLAYER_LOGOUT" then
        PlayerFrame:SetUserPlaced(false);
        TargetFrame:SetUserPlaced(false);
        FocusFrame:SetUserPlaced(false);
    end
end

MoveUnitFrames:SetScript("OnEvent", MoveUnitFrames.OnEvent);
