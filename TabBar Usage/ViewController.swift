//
//  ViewController.swift
//  TabBar Usage
//
//  Created by İrfan Behic Tırpancı on 27.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        tabbar itemların tanımlamasını yapıyoruz.
        if let tabItems = tabBarController?.tabBar.items {
            
            let mainPageItem = tabItems[0]
            let settingsItem = tabItems[1]
//            Itemın sağ üst köşesine bildirim(etiket gibi) ekliyoruz
            mainPageItem.badgeValue = "1"
            settingsItem.badgeValue = "New"
        }
//        background değiştirme
        
        let appearence = UITabBarAppearance()
        appearence.backgroundColor = UIColor.systemIndigo
        
//       Çeşitli ekranlarda doğru bir şekilde gözükmesi için gerekli olan kodlar.
        changeColor(itemAppearence: appearence.stackedLayoutAppearance)
        changeColor(itemAppearence: appearence.compactInlineLayoutAppearance)
        changeColor(itemAppearence: appearence.inlineLayoutAppearance)
        
        
        
        
//        Çeşitli ekranlarda doğru bir şekilde gözükmesi için gerekli olan kodlar.
        tabBarController?.tabBar.standardAppearance = appearence
        tabBarController?.tabBar.scrollEdgeAppearance = appearence
    }
    
    func changeColor(itemAppearence:UITabBarItemAppearance) {
        
//        Seçili durum
        itemAppearence.selected.iconColor = UIColor.systemYellow
        itemAppearence.selected.titleTextAttributes = [.foregroundColor: UIColor.systemYellow]
        itemAppearence.selected.badgeBackgroundColor = UIColor.systemMint
    
        
//        Seçili olmayan durum
        
        itemAppearence.normal.iconColor = UIColor.white
        itemAppearence.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        itemAppearence.normal.badgeBackgroundColor = UIColor.lightGray
        
    }

}

