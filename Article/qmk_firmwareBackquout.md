# qmk_firmwareでバッククオート（`）を入力する方法

## 問題点
[qmk_firmware](https://beta.docs.qmk.fm/using-qmk/simple-keycodes/keycodes) だと「KC_GRV」がバッククオートのキーコードとなっています。
しかし、実際に書き込むと何故かESCと認識されバッククオートが入力できません。

## 解決策
us配列だと「option + ~」（jis配列だと「shift + @」）でバッククオートが入力できるため、

```
#define KC_BQ LALT(KC_TILD)
```  
と宣言してあげればバッククオートが入力できるようになります。
