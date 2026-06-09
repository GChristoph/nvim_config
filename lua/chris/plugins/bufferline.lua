return {
    'akinsho/bufferline.nvim',
    tag = "v4.9.1",
    config = function ()
        local status_ok, bufferline = pcall(require, "bufferline")
        if not status_ok then
            print("bufferline status not ok")
            return
        end

        bufferline.setup {
            options = {
                sort_by = "insert_after_current",
            },
        }
    end
}
