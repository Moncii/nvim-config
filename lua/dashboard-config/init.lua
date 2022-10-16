math.randomseed(os.time())
local home = os.getenv("HOME") -- Get user HOME path

local db = require("dashboard")

local headers = {}

headers[1] = {
    [[ __ _  ____  __   _  _  __  _  _ ]],
    [[(  ( \(  __)/  \ / )( \(  )( \/ )]],
    [[/    / ) _)(  O )\ \/ / )( / \/ \]],
    [[\_)__)(____)\__/  \__/ (__)\_)(_/]],
}

headers[2] = {
    [[ _   _                 _           ]],
    [[| \ | |               (_)          ]],
    [[|  \| | ___  _____   ___ _ __ ___  ]],
    [[| . ` |/ _ \/ _ \ \ / / | '_ ` _ \ ]],
    [[| |\  |  __/ (_) \ V /| | | | | | |]],
    [[\_| \_/\___|\___/ \_/ |_|_| |_| |_|]],
}

headers[3] = {
    [[    )                             ]],
    [[ ( /(                             ]],
    [[ )\())   (        )   (      )    ]],
    [[((_)\   ))\  (   /((  )\    (     ]],
    [[ _((_) /((_) )\ (_))\((_)   )\  ' ]],
    [[| \| |(_))  ((_)_)((_)(_) _((_))  ]],
    [[| .` |/ -_)/ _ \\ V / | || '  \() ]],
    [[|_|\_|\___|\___/ \_/  |_||_|_|_|  ]],
}

headers[4] = {
    [[     __                _           ]],
    [[  /\ \ \___  _____   _(_)_ __ ___  ]],
    [[ /  \/ / _ \/ _ \ \ / / | '_ ` _ \ ]],
    [[/ /\  /  __/ (_) \ V /| | | | | | |]],
    [[\_\ \/ \___|\___/ \_/ |_|_| |_| |_|]],
}

headers[5] = {
    [[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
    [[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
    [[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
    [[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
    [[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
    [[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
}

headers[6] = {
    [[ __   __     ______     ______     __   __   __     __    __    ]],
    [[/\ "-.\ \   /\  ___\   /\  __ \   /\ \ / /  /\ \   /\ "-./  \   ]],
    [[\ \ \-.  \  \ \  __\   \ \ \/\ \  \ \ \'/   \ \ \  \ \ \-./\ \  ]],
    [[ \ \_\\"\_\  \ \_____\  \ \_____\  \ \__|    \ \_\  \ \_\ \ \_\ ]],
    [[  \/_/ \/_/   \/_____/   \/_____/   \/_/      \/_/   \/_/  \/_/ ]],
}

headers[7] = {
    [[ ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓]],
    [[ ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒]],
    [[▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░]],
    [[▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ]],
    [[▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒]],
    [[░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░]],
    [[░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░]],
    [[   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ]],
    [[         ░    ░  ░    ░ ░        ░   ░         ░   ]],
    [[                                ░                  ]],
}

headers[8] = {
    [[      ::::    ::: :::::::::: ::::::::  :::     ::: :::::::::::   :::   ::: ]],
    [[     :+:+:   :+: :+:       :+:    :+: :+:     :+:     :+:      :+:+: :+:+: ]],
    [[    :+:+:+  +:+ +:+       +:+    +:+ +:+     +:+     +:+     +:+ +:+:+ +:+ ]],
    [[   +#+ +:+ +#+ +#++:++#  +#+    +:+ +#+     +:+     +#+     +#+  +:+  +#+  ]],
    [[  +#+  +#+#+# +#+       +#+    +#+  +#+   +#+      +#+     +#+       +#+   ]],
    [[ #+#   #+#+# #+#       #+#    #+#   #+#+#+#       #+#     #+#       #+#    ]],
    [[###    #### ########## ########      ###     ########### ###       ###     ]],
}

headers[9] = {
    [[_____   __                 _____            ]],
    [[___  | / /_____________   ____(_)______ ___ ]],
    [[__   |/ /_  _ \  __ \_ | / /_  /__  __ `__ \]],
    [[_  /|  / /  __/ /_/ /_ |/ /_  / _  / / / / /]],
    [[/_/ |_/  \___/\____/_____/ /_/  /_/ /_/ /_/ ]],
}

local choice = math.random(1, #headers)

-- Get last chosen header --
local last = io.open(home.."/.config/nvim/lua/dashboard-config/lastHeader.txt", "r")

local data = ""
if(last) then
    data = last:read()
    last:close()
end

local lastChoice = tonumber(data:sub(1, 1))

-- Choose a new header until it is not the same as before
repeat
    choice = math.random(1, #headers)
until(choice ~= lastChoice)

-- Save currently chosen header
local new = io.open(home.."/.config/nvim/lua/dashboard-config/lastHeader.txt", "w")

if(new) then
    new:write(choice)
    new:close()
end

local header = headers[choice]
table.insert(header, "")
table.insert(header, "")

db.custom_header = header

db.custom_center = {
    {
        icon_hl={fg="#89b4fa"},
        icon = "  ",
        desc = "Find File           ",
        shortcut = "SPC f f",
        action = "Telescope find_files",
    },
    {
        icon_hl={fg="#89b4fa"},
        icon = "  ",
        desc = "Find Word           ",
        shortcut = "SPC f g",
        action = "Telescope live_grep",
    },
    {
        icon_hl={fg="#89b4fa"},
        icon = "  ",
        desc = "File Browser        ",
        shortcut = "SPC f b",
        action = "Telescope file_browser",
    },
    {
        icon_hl={fg="#89b4fa"},
        icon = "  ",
        desc = "Configuration       ",
        shortcut = "       ",
        action = "cd ~/.config/nvim | Telescope find_files",
    },
    {
        icon_hl={fg="#89b4fa"},
        icon = "  ",
        desc = "Sync Packages       ",
        shortcut = "       ",
        action = "PlugInstall",
    },
    {
        icon_hl={fg="#89b4fa"},
        icon = "ﴚ  ",
        desc = "Exit                ",
        shortcut = "SPC q  ",
        action = "q!",
    },
}


-- Get quotes from file
local quotes = io.open(home.."/.config/nvim/lua/dashboard-config/quotes.txt")
local lines = {}

-- Seperate file into individual quotes
if(quotes ~= nil) then
    for line in quotes:lines() do
        table.insert(lines, line)
    end
end

if(quotes) then quotes:close() end

-- Choose a random quote
local line = lines[math.random(1, #lines)]

-- Split the quote into two lines
local spaces = {}
for i=1, #line do
    if(line:sub(i, i) == " ") then
        table.insert(spaces, i)
    end
end

local middle = math.floor(#spaces/2)
local middlePos = spaces[middle]

-- Split the credit onto another line
local s, _ = line:find("~")

local quote = {
    line:sub(1, middlePos-1),
    line:sub(middlePos, s-1),
    line:sub(s+1, #line),
}

db.custom_footer = {"", "", quote[1], quote[2], "", "- "..quote[3]}
