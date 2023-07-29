require 'barbar'.setup {
    animation = true,
    auto_hide = false,
    tabpages = true,
    clickable = false,

    icons = {
        buffer_index = false,
        buffer_number = false,

        gitsigns = {
            added = {enabled = true, icon = '+'},
            changed = {enabled = true, icon = '~'},
            deleted = {enabled = true, icon = '-'},
        },
        filetype = {
            custom_colors = true,
            enabled = true,
        },
        seperator = {left = '| ', right = ''},
        seperator_at_end = true,

        modified = {button = '●'},
        pinned = {button = '車', filename = true},
    },

    insert_at_end = false,

    maximum_padding = 1,

    maximum_length = 50,

    semantic_letters = true,

    no_name_title = 'nil',
}
