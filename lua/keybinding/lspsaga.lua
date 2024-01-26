function bindingOptions()
  return {
    {
      "<leader>lf",
      "<cmd>Lspsaga finder tyd+ref+imp+def<cr>",
      desc = "Lspsaga finder"
    },
    {
      "<leader>lp",
      "<cmd>Lspsaga peek_definition<cr>",
      desc = "spsaga peek definition"
    }
  }
end

return {
  bindingOptions = bindingOptions
}
