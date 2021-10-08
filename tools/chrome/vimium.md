## 1、chrome商店里有的，但是，我怎么安装，都不行

## 2、源码安装：http://vimium.github.io/

git clone https://github.com/philc/vimium.git

## 3. install npm
sudo pacman -S npm

## 4. install coffe v1
vimium不支持coffe v2，安装一个1xx的版本即可
sudo npm install --global coffeescript@1.12.7

## 5. build code
cake build

## install from code
Installing From Source
Vimium is written in Coffeescript, which compiles to Javascript. To install Vimium from source:

Install Coffeescript.
Run cake build from within your vimium directory. Any coffeescript files you change will now be automatically compiled to Javascript.
Navigate to chrome://extensions
Toggle into Developer Mode
Click on "Load Unpacked Extension..."
Select the Vimium directory.

## help url
 http://www.mamicode.com/info-detail-2249663.html
