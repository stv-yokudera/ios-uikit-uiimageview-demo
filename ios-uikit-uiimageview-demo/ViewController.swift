//
//  ViewController.swift
//  ios-uikit-uiimageview-demo
//
//  Created by Kentaro on 2017/02/16.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var subView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubView()
        
        /*
         UIViewContentModeのデフォルト値
         　↓
         scaleToFill：アスペクト比を変更してviewのサイズにフィットさせる
         */
    }
    
    private func setupSubView() {
        subView.layer.borderWidth = 1.0
        subView.layer.borderColor = UIColor.blue.cgColor
        subView.layer.cornerRadius = 10.0
    }
    
    // MARK: - option
    
    // 画像を設定する
    private func configureImage() {
        imageView.image = #imageLiteral(resourceName: "kobaton")
    }
    
    /*
     アスペクト比を維持してviewのサイズにフィットさせる（Storyboardで設定可能）
     画像がviewのサイズより小さくなることもある
     */
    private func configureScaleAspectFit() {
        imageView.contentMode = .scaleAspectFit
    }
    
    /*
     アスペクト比を維持してviewのサイズいっぱいに表示する（Storyboardで設定可能）
     viewから画像がはみ出ることもある
     */
    private func configureScaleAspectFill() {
        imageView.contentMode = .scaleAspectFill
    }
    
    /*
     configureScaleAspectFill()を実行 または 
     StoryboardでimageViewのContentModeをAspectFill にしてから
     下記メソッドを実行すること
     */
    
    /*
     画像がviewからはみ出さないようにするには、土台のview側を設定する
     */
    // 画像がviewからはみ出た部分を表示しないようにする①（Storyboardで設定可能）
    func configureClipsToBounds() {
        subView.clipsToBounds = true
    }
    
    // 画像がviewからはみ出た部分を表示しないようにする②
    private func configureMasksToBounds() {
        subView.layer.masksToBounds = true
    }
}

