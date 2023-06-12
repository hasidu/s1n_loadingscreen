function SendReactMessage(action, data)
    SendNUIMessage({
      action = action,
      data = data
    })
  end

local function toggleNuiFrame(shouldShow)
    SetNuiFocus(shouldShow, shouldShow)
    SendReactMessage("setVisible", shouldShow)
end

Citizen.CreateThread(function()
    toggleNuiFrame(true)
end)