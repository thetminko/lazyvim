return {
  {
    "LazyVim/LazyVim",
    init = function()
      -- iTerm2's Semantic History handler (dotfiles/iterm/open-in-nvim.sh) sends
      -- Cmd-clicked file:line references here, so a click lands in this instance
      -- rather than spawning a throwaway one. First nvim to start wins the socket.
      local sock = (vim.env.TMPDIR or "/tmp") .. "/nvim-primary.sock"
      if vim.fn.filereadable(sock) == 0 and not vim.g.remote_socket_started then
        pcall(function()
          vim.fn.serverstart(sock)
          vim.g.remote_socket_started = true
        end)
      end
    end,
  },
}
