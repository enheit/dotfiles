require('alpha').setup(require('alpha.themes.startify').config)

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
   return
end

local dashboard = require("alpha.themes.dashboard")


dashboard.section.header.val = {
   [[]],
   [[Neovim]]
-- [[Experience is the only teacher]],
-- [[                  _                                            ]],
-- [[                _(_)_                          wWWWw   _       ]],
-- [[    @@@@       (_)@(_)   vVVVv     _     @@@@  (___) _(_)_     ]],
-- [[   @@()@@ wWWWw  (_)\    (___)   _(_)_  @@()@@   Y  (_)@(_)    ]],
-- [[    @@@@  (___)     `|/    Y    (_)@(_)  @@@@   \|/   (_)\     ]],
-- [[     /      Y       \|    \|/    /(_)    \|      |/      |     ]],
-- [[  \ |     \ |/       | / \ | /  \|/       |/    \|      \|/    ]],
-- [[ jgs|//   \\|///  \\\|//\\\|/// \|///  \\\|//  \\|//  \\\|//   ]],
-- [[ ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ]]
}


dashboard.section.footer.val = {
  [[]],
  [[]],
  [[17]]
  -- [[  _      _       _    ]],
  -- [[>(.)__ <(.)__  =(.)__ ]],
  -- [[ (___/  (___/   (___/ ]]
}

dashboard.section.buttons.val = {
    dashboard.button("e", "New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("c", "Config", ":e ~/.config/nvim/init.lua <CR>"),
    dashboard.button("q", "Quit", ":qa<CR>"),
}


alpha.setup(dashboard.opts)

