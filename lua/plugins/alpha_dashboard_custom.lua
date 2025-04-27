return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  enabled = true,
  init = false,
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
            ██████╗ ███████╗██╗  ████████╗ █████╗ ██╗   ██╗██╗███╗   ███╗          Z
            ██╔══██╗██╔════╝██║  ╚══██╔══╝██╔══██╗██║   ██║██║████╗ ████║      Z    
            ██║  ██║█████╗  ██║     ██║   ███████║██║   ██║██║██╔████╔██║   z       
            ██║  ██║██╔══╝  ██║     ██║   ██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║ z         
            ██████╔╝███████╗███████╗██║   ██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║           
            ╚═════╝ ╚══════╝╚══════╝╚═╝   ╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ 
  ]]

    dashboard.section.header.val = vim.split(logo, "\n")

    -- local footerval = {
    --   "           __                                ",
    --   ".-.__      \\ .-.  ___  __                    ",
    --   "|_|  '--.-.-(   \\/\\;;\\_\\.-._______.-.        ",
    --   "(-)___     \\ \\ .-\\ \\;;\\(   \\       \\ \\       ",
    --   " Y    '---._\\_((Q)) \\;;\\\\ .-\\     __(_)      ",
    --   " I           __'-' / .--.((Q))---'    \\,     ",
    --   " I     ___.-:    \\|  |   \\'-'_          \\    ",
    --   " A  .-'      \\ .-.\\   \\   \\ \\ '--.__     '\\  ",
    --   " |  |____.----((Q))\\   \\__|--\\_      \\     ' ",
    --   "    ( )        '-'  \\_  :  \\-' '--.___\\      ",
    --   "     Y                \\  \\  \\       \\(_)     ",
    --   "     I                 \\  \\  \\         \\,    ",
    --   "     I                  \\  \\  \\          \\   ",
    --   "     A                   \\  \\  \\          '\\ ",
    --   "     |              snd   \\  \\__|           '",
    --   "                           \\_:.  \\           ",
    --   "                             \\ \\  \\          ",
    --   "                              \\ \\  \\         ",
    --   "                               \\_\\_|         ",
    -- }
    --
    -- dashboard.section.footer.val = footerval

    vim.api.nvim_set_hl(0, "RedHLGroup", { fg = "#ff0000" })
    dashboard.section.header.opts.hl = "RedHLGroup"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"
    dashboard.opts.layout[1].val = 8
    return dashboard
  end,
}
