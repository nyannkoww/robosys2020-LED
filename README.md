# ロボットシステム学 − 課題1
18C1135 鷲尾弘希
## 概要
入力する値を１にするとLEDが点灯・消灯を20回繰り返して消灯します。
## 動画
- URL − https://youtu.be/4sxvKL8_v-w
## 使用するもの
- Raspberry Pi 4 Model B
  - ubuntu 18.04 LTS
- LED
- 抵抗：220[Ω]
## 使い方
1. リポジトリをクローンしてローカルリポジトリの作成
   ```
   $ git clone https://github.com/nyannkoww/robosys2020-LED.git
   $ cd myled/robosys2020-LED
   ```
2. コンパイル、インストール
   ```
   $ make
   $ sudo insmod myled.ko
   $ sudo ichmod /dev/myled0
   $ sudo mknod /dev/myled c 507 0
   $ sudo chmod 666 /dev/myled0
   ```
3. スイッチオン
   ```
   $ echo 1 > /dev/myled0
   ```
4. スイッチオフ  
   ```
   $ echo 0 > /dev/myled0
   ```
5. 後始末
   ```
   $ sudo rm /dev/myled0
   $ sudo rmmod myled
   ```
