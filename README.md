### My vim configure file
##### Quick start
1. Git clone this-repository
2. Move this repository to Home :
   `mv .vim/.vimrc ~/
   cd ~
   mkdir .vim`
3. Install vundle: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
4. Install vim-plug: `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
5. Launch `vim` and run `:PluginInstall`. NOTE: If you want to use YouCompleteMe, you need to upgrade your vim to 8.1+ and uncomment the the corresponding line in .vimrc file. It need almost 3 hours. 
6. run `PlugInstall` to install plugin using vim-plug.

##### Features
實時搜索
支持通過模板來不全代碼塊

##### Operations
Q - exit
S - save
Ctrl-a - 全選
;rc - 編輯vimrc文件
Y - 複製到系統緩存
P - 粘貼系統緩存
J,K,W,B - 快速移動光標
###### 窗口分割
su, sd, sr, sl - 分割窗口
sh, sv - 切換窗口分割方式
srh,srv - 旋轉窗口分割方式
###### 標籤頁
tu - 創建新窗口
tn，tp - 標籤頁跳轉
tmn，tmp - 移動標籤頁:w

###### 目錄瀏覽器
;fl

