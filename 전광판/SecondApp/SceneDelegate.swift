//
//  SceneDelegate.swift
//  SecondApp
//
//  Created by 송결 on 2022/03/16.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        //2. 네비게이션설정, 탭바설정
        let categoryVC = CategoryViewController()
        //3. 위시뷰컨만들고
        let wishVC = WishViewController()
        wishVC.tabBarItem = UITabBarItem(title: "Cart", image: UIImage(named: "wishlist"), tag: 0)
        let navigationController = UINavigationController(rootViewController: categoryVC)
        navigationController.tabBarItem = UITabBarItem(title: "Category", image: UIImage(named: "domino's"), tag: 0)
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [navigationController, wishVC] //2번, 3번 순차적으로
       
        
        //1. 기본설정
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = tabBarController //viewController(기본)에서 탭바로 바꿈
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
 
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }




}
