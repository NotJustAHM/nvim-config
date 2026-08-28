return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",

      {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp",
        dependencies = {
          "rafamadriz/friendly-snippets",
        },
      },

      "saadparwaiz1/cmp_luasnip",
    },

    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },

        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),

          ["<CR>"] = cmp.mapping.confirm({
            select = false,
          }),

          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<C-e>"] = cmp.mapping.abort(),

          ["<C-n>"] = cmp.mapping.select_next_item(),

          ["<C-p>"] = cmp.mapping.select_prev_item(),
        }),

        sources = cmp.config.sources({
          {
            name = "nvim_lsp",
          },
          {
            name = "luasnip",
          },
          {
            name = "path",
          },
          {
            name = "buffer",
          },
        }),

        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },

        formatting = {
          fields = {
            "kind",
            "abbr",
            "menu",
          },

          format = function(_, item)
            local menu = {
              nvim_lsp = "[LSP]",
              luasnip = "[SNIP]",
              buffer = "[BUF]",
              path = "[PATH]",
            }

            item.menu = menu[item.source.name] or ""

            return item
          end,
        },
      })

      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          {
            name = "buffer",
          },
        },
      })

      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          {
            name = "path",
          },
        }, {
          {
            name = "cmdline",
          },
        }),
      })
    end,
  },
}
