--[[
    Countdown State
    Author: Colton Ogden
    cogden@cs50.harvard.edu

    Counts down visually on the screen (3,2,1) so that the player knows the
    game is about to begin. Transitions to the PlayState as soon as the
    countdown is complete.
]]

PauseState = Class{__includes = BaseState}



function PauseState:init()
  
end

--[[
    Keeps track of how much time has passed and decreases count if the
    timer has exceeded our countdown time. If we have gone down to 0,
    we should transition to our PlayState.
]]
function PauseState:update(dt)
    

        if love.keyboard.wasPressed('p') then
        gStateMachine:change('play')
    end
       
end

function PauseState:render()
    love.graphics.setFont(hugeFont)
    love.graphics.printf('Paused', 0, 120, VIRTUAL_WIDTH, 'center')
end