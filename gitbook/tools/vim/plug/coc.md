# coc
## vim 插件按钮
```
https://vimawesome.com/plugin/coc-nvim
```

## 支持c++
### 安装
1. 安装ccls
```
sudo pacman -S ccls
https://blog.csdn.net/yupei881027/article/details/104876551/
https://www.jianshu.com/p/55cf1fa7a467
git clone --depth=1 --recursive https://github.com/MaskRay/ccls
cmake -H. -BRelease -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_PREFIX_PATH=/path/to/clang+llvm
cd ccls
sudo cmake --build Release --target install
```
### ccls 帮助文档
- [ccls帮助文档](https://github.com/MaskRay/ccls/wiki/Build)

2. install extensions
```
:CocInstall coc-json coc-tsserver
```

3. 配置c/c++ language server

```
:CocConfig
https://github.com/neoclide/coc.nvim/wiki/Language-servers#ccobjective-c
{
    "languageserver": {
        "ccls": {
            "command": "ccls",
                "filetypes": ["c", "cc", "cpp", "c++", "objc", "objcpp"],
                "rootPatterns": [".ccls", "compile_commands.json", ".git/", ".hg/"],
                "initializationOptions": {
                    "cache": {
                        "directory": "/tmp/ccls"
                    }
                }
        }
    }
}
```

## 支持lua
```
CocInstall coc-lua
#安装lua-lsp
#https://github.com/Alloyed/lua-lsp
luarocks install --server=http://luarocks.org/dev lua-lsp
"languageserver": {
    "lua": {
        "command": "lua-lsp",
        "filetypes": ["lua"]
    }
}

```

## 帮助
- [安装说明](https://blog.csdn.net/bojin4564/article/details/105832148/?utm_medium=distribute.pc_relevant.none-task-blog-baidujs_title-0&spm=1001.2101.3001.4242)
