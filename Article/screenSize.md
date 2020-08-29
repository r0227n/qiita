# iPhone&iPad 画面サイズ早見表

*Xcode version 11.5*で動作するiPhoneとiPadの画面サイズの早見表です。  
デザインを考えるときに使っていただけると幸いです。

## 画面サイズ取得方法
~~~php:ViewController.swift
import UIKit
class ViewController: UIViewController {
    let width = UIScreen.main.bounds.size.width   //画面の横幅を取得
    let height = UIScreen.main.bounds.size.height //画面の縦幅を取得
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(width)
        print(height)
    }
}
~~~

## iPhoneシリーズ
|        |  SE | 11ProMax | 11Pro |  11 | 8Plus |   8 |
| ------ | ---:| --------:| -----:| ---:| -----:| ---:|
| width  | 375 |      414 |   375 | 414 |   414 | 375 |
| height | 667 |      896 |   812 | 896 |   736 | 667 |

## iPadシリーズ
|        | Pro 12.9-in. | Pro 11-in. | Pro 9.7-in. |  Air | 7th 無印 |
| ------ | ------------:| ----------:| -----------:| ----:| --------:|
| width  |         1024 |        834 |         768 |  834 |      810 |
| height |         1136 |       1194 |        1024 | 1112 |     1080 |



## 参考文献
https://www.yukiiworks.com/archives/118
