//
//  ViewController.swift
//  horizontalCollectionViewCell
//
//  Created by RyoNishimura on 2020/08/08.
//  Copyright © 2020 RyoNishimura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var horizontalCollectionView: UICollectionView!
    
    var viewWidth: CGFloat!
    var viewHeight: CGFloat!
    var cellWitdh: CGFloat!
    var cellHeight: CGFloat!
    var cellOffset: CGFloat!
    var navHeight: CGFloat!
    
    var photoArray = ["baseball","soccer"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewWidth = view.frame.width
        viewHeight = view.frame.height
        //ナビゲーションバーの高さ
        navHeight = self.navigationController?.navigationBar.frame.size.height
        
        //xib読み込み
        let nib = UINib(nibName: "CollectionViewCell", bundle: .main)
        horizontalCollectionView.register(nib, forCellWithReuseIdentifier: "cell")
        
        //空の背景画像を設定
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        //ナビゲーションバーの影画像を空に設定
        self.navigationController!.navigationBar.shadowImage = UIImage()
        //アイテムの色を指定
        self.navigationController?.navigationBar.tintColor = .white
        //タイトル色の指定
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
}

//ViewControllerのプロトコル定義
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //collectionViewの要素の数を返す
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoArray.count
    }
    
    //collectionViewのセルを返す（セルの内容を決める）
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.backgroundImageView.image = UIImage(named: photoArray[indexPath.row])
        return cell
    }
    
    //セル間の間隔を指定
    private func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimunLineSpacingForSectionAt section: Int) -> CGFloat {
        return 24
    }
    
    //セルのサイズ(CGSize)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        cellWitdh = viewWidth-75
        cellHeight = viewHeight-300
        cellOffset = viewWidth-cellWitdh
        return CGSize(width: cellWitdh, height: cellHeight)
    }
    
    //余白の調整（UIImageを拡大、縮小している）
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        //top:ナビゲーションバーの高さ分上に移動
        return UIEdgeInsets(top: -navHeight,left: cellOffset/2,bottom: 0,right: cellOffset/2)
    }
    
}
