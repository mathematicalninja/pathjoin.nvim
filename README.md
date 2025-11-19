A very simple nvim module to allow me to swap between file systems without changing configs.


# Usage
```lua
local pathjoin = require("pathjoin").join

path = pathjoin(vim.fn.stdpath("data"), "Mason", "lua")
print(path)
```
# Fast load time.
<img width="322" height="35" alt="image" src="https://github.com/user-attachments/assets/cc5ec090-62df-4768-8ae6-5a7e870399ef" />


# Installation
I setup using Lazy, if you want to try other package managers and find bugs, let me know and I'll try to reconcile these.

```lua
{
"mathematicalninga/pathjoin.nvim",
}

