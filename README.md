A very simple nvim module to allow me to swap between file systems without changing configs.


# Usage
```lua
local pathjoin = require("pathjoin")

path = pathjoin(vim.fn.stdpath("data"), "Mason", "lua")
print(path)
```

# Installation
I setup using Lazy, if you want to try other package managers and find bugs, let me know and I'll try to reconcile these.

```lua
{
"mathematicalninga/pathjoin.nvim",
}

