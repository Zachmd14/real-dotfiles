return {
	'nvimdev/dashboard-nvim',
	event = 'VimEnter',
	config = function()
		require('dashboard').setup {
			-- config
			theme = 'doom',
			config = {

				mru = { limit = 5 },

				header = {
					[[																																			 ]],
					[[																																			 ]],
					[[																																			 ]],
					[[																																			 ]],
					[[                                                                       ]],
					[[  ██████   █████                   █████   █████  ███                  ]],
					[[ ░░██████ ░░███                   ░░███   ░░███  ░░░                   ]],
					[[  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   ]],
					[[  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  ]],
					[[  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  ]],
					[[  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  ]],
					[[  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ ]],
					[[ ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  ]],
					[[                                                                       ]],
					[[                                                                       ]],
					[[				“If, at first, you do not succeed, call it version 1.0.”       ]],
					[[                                          ― Khayri R.R. Woulfe         ]],
					[[                                                                       ]],
					[[                                                                       ]],
				},

				center = {
					{
						icon = ' ',
						icon_hl = 'Title',
						desc = 'Find File           ',
						desc_hl = 'String',
						key = 'f',
						keymap = '',
						key_hl = 'Number',
						key_format = ' %s', -- remove default surrounding `[]`
						action = 'Telescope find_files'
					},
					{
						icon = ' ',
						desc = 'Find Dotfiles',
						key = 'c',
						keymap = '',
						key_format = ' %s', -- remove default surrounding `[]`
						action = 'Telescope find_files search_dirs=~/.config/nvim/'
					},
					{
						icon = ' ',
						desc = 'Find Recent Files',
						key = 'r',
						keymap = '',
						key_format = ' %s', -- remove default surrounding `[]`
						action = 'Telescope oldfiles'
					},
					{
						icon = ' ',
						desc = 'Update Plugins',
						key = 'u',
						keymap = '',
						key_format = ' %s', -- remove default surrounding `[]`
						action = 'Lazy update'
					},
					{
						icon = ' ',
						desc = 'Quit Neovim',
						key = 'q',
						keymap = '',
						key_format = ' %s', -- remove default surrounding `[]`
						action = ':q'
					},

				},
				footer = { "  Sharp tools make great work" } --your footer
			},

		}
	end
}
