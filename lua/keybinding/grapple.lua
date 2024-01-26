function bindingOptions()
  return {
    {
      "<leader>m",
      "<cmd>GrappleTag<cr>",
      desc = "GrappleTag"
    },
    {
      "<leader>mm",
      "<cmd>GrappleUntag<cr>",
      desc = "GrappleUntag"
    },
    {
      "<leader>pp",
      "<cmd>GrapplePopup tags<cr>",
      desc = "GrapplePopup"
    }
  }
end

return {
  bindingOptions = bindingOptions
}
