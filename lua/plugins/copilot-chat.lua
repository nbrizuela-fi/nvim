return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    cmd = {
      "CopilotChat",
      "CopilotChatOpen",
      "CopilotChatToggle",
      "CopilotChatClose",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "zbirenbaum/copilot.lua",
    },
    opts = {
      model = "auto",
      language = "Spanish",
      headers = {
        assistant = "Copo",
      },
      window = {
        layout = "vertical",
        height = 0.4,
        border = "rounded",
      },
      auto_insert_mode = true,
      show_help = true,
      mappings = {
        complete = {
          insert = "<Tab>",
        },
        close = {
          normal = "q",
          insert = "<C-c>",
        },
        reset = {
          normal = "<C-l>",
          insert = "<C-l>",
        },
        submit_prompt = {
          normal = "<CR>",
          insert = "<C-s>",
        },
        accept_diff = {
          normal = "<C-y>",
          insert = "<C-y>",
        },
        jump_to_diff = {
          normal = "gj",
        },
        quickfix_answers = {
          normal = "gqa",
        },
        quickfix_diffs = {
          normal = "gqd",
        },
        yank_diff = {
          normal = "gy",
          register = '"',
        },
        show_diff = {
          normal = "gd",
        },
        show_info = {
          normal = "gi",
        },
        show_help = {
          normal = "gh",
        },
      },
    },
    keys = {
      {
        "<leader>aa",
        "<cmd>CopilotChatToggle<cr>",
        desc = "CopilotChat Toggle",
      },
      {
        "<leader>ax",
        "<cmd>CopilotChatClose<cr>",
        desc = "CopilotChat Close",
      },
      {
        "<leader>ap",
        "<cmd>CopilotChatPrompts<cr>",
        desc = "CopilotChat Prompts",
      },
      {
        "<leader>am",
        "<cmd>CopilotChatModels<cr>",
        desc = "CopilotChat Models",
      },
      {
        "<leader>ae",
        "<cmd>CopilotChatExplain<cr>",
        desc = "CopilotChat Explain",
        mode = { "n", "v" },
      },
      {
        "<leader>ar",
        "<cmd>CopilotChatReview<cr>",
        desc = "CopilotChat Review",
        mode = { "n", "v" },
      },
      {
        "<leader>af",
        "<cmd>CopilotChatFixCode<cr>",
        desc = "CopilotChat Fix Code",
        mode = { "n", "v" },
      },
      {
        "<leader>at",
        "<cmd>CopilotChatTests<cr>",
        desc = "CopilotChat Tests",
        mode = { "n", "v" },
      },
      {
        "<leader>ac",
        "<cmd>CopilotChatRefactor<cr>",
        desc = "CopilotChat Refactor",
        mode = { "n", "v" },
      },
      {
        "<leader>ag",
        "<cmd>CopilotChatFixError<cr>",
        desc = "CopilotChat Fix Error",
        mode = { "n", "v" },
      },
    },
  },
}
