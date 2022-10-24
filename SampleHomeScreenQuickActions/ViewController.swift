//
//  ViewController.swift
//  SampleHomeScreenQuickActions
//
//  Created by 高浜一道 on 2022/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createQuickActions()
    }

    private func createQuickActions() {
        // UIApplicationShortcutItem として保存する
        var shortcutItems: [UIApplicationShortcutItem] = []
        let bundleId = Bundle.main.bundleIdentifier ?? ""

        let title = "タイトル"
        let subTitle = "サブタイトル"
        let icon = UIApplicationShortcutIcon(systemImageName: "clock") // システムアイコン
        //let icon = UIApplicationShortcutIcon(templateImageName: "quickactionsIconConfig") // Assetsに定義した任意画像
        var userInfo: [String : String] = [:]
        userInfo["キー1"] = "値1"
        userInfo["キー2"] = "値2"

        let shortcut = UIMutableApplicationShortcutItem(type: bundleId,
                                                         localizedTitle: title,
                                                         localizedSubtitle: subTitle,
                                                         icon: icon,
                                                         userInfo: userInfo as [String : NSSecureCoding])
        shortcutItems.append(shortcut)

        UIApplication.shared.shortcutItems = shortcutItems
    }
}

