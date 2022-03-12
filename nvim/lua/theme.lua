vim.cmd[[colorscheme gruvbox]]

require('lualine').setup({
    optins = {
        theme = 'gruvbox'
    }
})

require('nvim-treesitter.configs').setup({
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    }
})

require('transparent').setup({
    enable = true
})

local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

dashboard.section.header.val = {
[[          _____                   _______                   _____            _____                    _____                    _____                    _____          ]], 
[[         /\    \                 /::\    \                 /\    \          /\    \                  /\    \                  /\    \                  /\    \         ]],
[[        /::\    \               /::::\    \               /::\____\        /::\    \                /::\    \                /::\    \                /::\    \        ]],
[[       /::::\    \             /::::::\    \             /:::/    /       /::::\    \              /::::\    \               \:::\    \              /::::\    \       ]],
[[      /::::::\    \           /::::::::\    \           /:::/    /       /::::::\    \            /::::::\    \               \:::\    \            /::::::\    \      ]],
[[     /:::/\:::\    \         /:::/~~\:::\    \         /:::/    /       /:::/\:::\    \          /:::/\:::\    \               \:::\    \          /:::/\:::\    \     ]],
[[    /:::/__\:::\    \       /:::/    \:::\    \       /:::/    /       /:::/__\:::\    \        /:::/__\:::\    \               \:::\    \        /:::/__\:::\    \    ]],
[[    \:::\   \:::\    \     /:::/    / \:::\    \     /:::/    /       /::::\   \:::\    \      /::::\   \:::\    \              /::::\    \       \:::\   \:::\    \   ]],
[[  ___\:::\   \:::\    \   /:::/____/   \:::\____\   /:::/    /       /::::::\   \:::\    \    /::::::\   \:::\    \    ____    /::::::\    \    ___\:::\   \:::\    \  ]],
[[ /\   \:::\   \:::\    \ |:::|    |     |:::|    | /:::/    /       /:::/\:::\   \:::\    \  /:::/\:::\   \:::\____\  /\   \  /:::/\:::\    \  /\   \:::\   \:::\    \ ]],
[[/::\   \:::\   \:::\____\|:::|____|     |:::|    |/:::/____/       /:::/  \:::\   \:::\____\/:::/  \:::\   \:::|    |/::\   \/:::/  \:::\____\/::\   \:::\   \:::\____\]],
[[\:::\   \:::\   \::/    / \:::\    \   /:::/    / \:::\    \       \::/    \:::\  /:::/    /\::/   |::::\  /:::|____|\:::\  /:::/    \::/    /\:::\   \:::\   \::/    /]],
[[ \:::\   \:::\   \/____/   \:::\    \ /:::/    /   \:::\    \       \/____/ \:::\/:::/    /  \/____|:::::\/:::/    /  \:::\/:::/    / \/____/  \:::\   \:::\   \/____/ ]],
[[  \:::\   \:::\    \        \:::\    /:::/    /     \:::\    \               \::::::/    /         |:::::::::/    /    \::::::/    /            \:::\   \:::\    \     ]],
[[   \:::\   \:::\____\        \:::\__/:::/    /       \:::\    \               \::::/    /          |::|\::::/    /      \::::/____/              \:::\   \:::\____\    ]],
[[    \:::\  /:::/    /         \::::::::/    /         \:::\    \              /:::/    /           |::| \::/____/        \:::\    \               \:::\  /:::/    /    ]],
[[     \:::\/:::/    /           \::::::/    /           \:::\    \            /:::/    /            |::|  ~|               \:::\    \               \:::\/:::/    /     ]],
[[      \::::::/    /             \::::/    /             \:::\    \          /:::/    /             |::|   |                \:::\    \               \::::::/    /      ]],
[[       \::::/    /               \::/    /               \:::\____\        /:::/    /              \::|   |                 \:::\____\               \::::/    /       ]],
[[        \::/    /                 \/____/                 \::/    /        \::/    /                \:|   |                  \::/    /                \::/    /        ]],
[[         \/____/                                           \/____/          \/____/                  \|___|                   \/____/                  \/____/         ]]
}

dashboard.section.buttons.val = {
  dashboard.button('e', ' New file', ':e<CR>'),
  dashboard.button('f', ' Find file', cmdFindFiles),
  dashboard.button('g', ' Find git file', cmdFindGitFiles),
  dashboard.button('s', ' Settings', ':e $MYVIMRC<CR>'),
  dashboard.button('u', ' Update plugins', ':PackerUpdate<CR>'),
  dashboard.button('q', ' Quit', ':qa<CR>'),
}

dashboard.section.footer.val = os.date('%Y/%m/%d %H:%M:%S')

alpha.setup(dashboard.config)