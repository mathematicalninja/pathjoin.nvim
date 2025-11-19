A very simple nvim module to allow me to swap between file systems without changing configs.


# Usage
```lua
local pathjoin = require("pathjoin").join

path = pathjoin(vim.fn.stdpath("data"), "Mason", "lua")
print(path)
```
# Fast load time.
<img width="355" height="91" alt="image" src="https://github.com/user-attachments/assets/9a75f604-3e0d-4cbc-8109-9998e06dbff9" />


# Installation
I setup using Lazy, if you want to try other package managers and find bugs, let me know and I'll try to reconcile these.

```lua
{
"mathematicalninga/pathjoin.nvim",
}

