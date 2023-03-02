local socket = require("socket")
function autosaving(sec)
		while true do
				local isinsertmode = vim
				if isinsertmode then
						vim.cmd.write()
				end

				socket.sleep(sec)
		end
end

    local timer = vim.loop.new_timer()
    timer:start(1000, 0, function()
      vim.api.nvim_command('echomsg "test"')
    end)



    local timer = vim.loop.new_timer()
    timer:start(1000, 0, vim.schedule_wrap(function()
      vim.api.nvim_command('echomsg "test"')
    end))


vim.wait({time} [, {callback}, {interval}, {fast_only}])          *vim.wait()*
    Wait for {time} in milliseconds until {callback} returns `true`.

    Executes {callback} immediately and at approximately {interval}
    milliseconds (default 200). Nvim still processes other events during
    this time.

    Parameters:  
      • {time}      Number of milliseconds to wait
      • {callback}  Optional callback. Waits until {callback} returns true
      • {interval}  (Approximate) number of milliseconds to wait between polls
      • {fast_only} If true, only |api-fast| events will be processed.
                        If called from while in an |api-fast| event, will
                        automatically be set to `true`.

    Returns:  
        If {callback} returns `true` during the {time}:
            `true, nil`

        If {callback} never returns `true` during the {time}:
            `false, -1`

        If {callback} is interrupted during the {time}:
            `false, -2`

        If {callback} errors, the error is raised.

        Examples: >lua

    ---
    -- Wait for 100 ms, allowing other events to process
    vim.wait(100, function() end)

    ---
    -- Wait for 100 ms or until global variable set.
    vim.wait(100, function() return vim.g.waiting_for_var end)

    ---
    -- Wait for 1 second or until global variable set, checking every ~500 ms
    vim.wait(1000, function() return vim.g.waiting_for_var end, 500)

    ---
    -- Schedule a function to set a value in 100ms
    vim.defer_fn(function() vim.g.timer_result = true end, 100)

    -- Would wait ten seconds if results blocked. Actually only waits  100 ms
    if vim.wait(10000, function() return vim.g.timer_result end) then
      print('Only waiting a little bit of time!')
    end
<


