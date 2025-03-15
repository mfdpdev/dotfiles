return {
  "nvchad/minty",
  lazy = true,
  config = function()
    local cmd = vim.api.nvim_create_user_command

    cmd("Huefy", function()
      require("minty.huefy").open( { border = true })
    end, { desc = "Open minty huefy" })

    cmd("Shades", function()
      require("minty.shades").open()
    end, { desc = "Open minty huefy" })
  end,
}
