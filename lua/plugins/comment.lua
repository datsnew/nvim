-- "gc" to comment visual regions/lines
return {
	'numToStr/Comment.nvim',
     config = function()
        require('Comment').setup()
        local ft = require('Comment.ft')
           ft.bicep = {'//%s', '/*%s*/'}
    end
}

