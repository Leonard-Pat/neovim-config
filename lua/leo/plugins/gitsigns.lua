return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		on_attach = function()
			local gitsign = package.loaded.gitsigns

			vim.keymap.set("n", "<leader>hp", gitsign.preview_hunk_inline, { desc = "Preview hunk" })
			vim.keymap.set("n", "<leader>td", gitsign.toggle_deleted, { desc = "Toggle deleted" })
			vim.keymap.set("n", "]h", gitsign.next_hunk, { desc = "Next Hunk" })
			vim.keymap.set("n", "[h", gitsign.prev_hunk, { desc = "Prev Hunk" })

			vim.keymap.set("v", "<leader>hr", function()
				gitsign.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "Reset hunk" })

			vim.keymap.set("n", "<leader>hR", gitsign.reset_buffer, { desc = "Reset buffer" })

			vim.keymap.set("n", "<leader>hd", gitsign.diffthis, { desc = "Diff this" })

			-- Text object
			vim.keymap.set({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", { desc = "Gitsigns select hunk" })
		end,
	},
}
