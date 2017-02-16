# UIImageView

## 概要
UIImageViewは画像を表示するクラスです。

## 関連クラス
UIView
UIImage
　
## 実装手順
1. StoryboardにUIViewとそのsubViewとしてUIImageViewを配置します。
2. UIViewControllerとStoryboardのUIView・UIImageViewを関連付けます。
3. png画像をAssets.xcassetsに追加します。
4. UIViewControllerでUIImageViewに画像をセットします。

## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|draw(in:) | 指定した範囲内に画像全体を描画する <br> 必要に応じてサイズを変更しフィットさせる | image.draw(in: CGRect(x: 0, y: 0, width: 80, height: 80)) |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
|category | Version|
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2.1 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/uikit/uiimageview
