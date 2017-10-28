//
//  NetManager.swift
//  FishX
//
//  Created by fang tairan on 2017/10/28.
//  Copyright © 2017年 Tayron. All rights reserved.
//
import UIKit
import AFNetworking
import MBProgressHUD

struct NetManager {
    
    static let netError = "网络异常，请检查网络"
    
    static func GET(URLString:String,
                    paramaters:[String:NSObject]?,
                    showHUD:Bool = true,
                    success:((NSObject?)->Void)?,failure:((NSError)->Void)?)
    {
        let manager = AFHTTPSessionManager()
        manager.requestSerializer.timeoutInterval = 10
        
        let mainWindow = UIApplication.shared.delegate!.window!
        
        if showHUD {
            MBProgressHUD.showAdded(to: mainWindow!, animated: true)
        }
        
        manager.get(URLString, parameters: paramaters, progress: nil, success:
        {(task, reponseObject) -> Void in
            if showHUD
            {
                MBProgressHUD.hideAllHUDs(for: mainWindow!, animated: true)
            }
            success?(reponseObject as? NSObject)
        })
        {(task, error) ->Void in
            if showHUD
            {
                MBProgressHUD.hideAllHUDs(for: mainWindow!, animated: true)
            }
            
            failure?(error as NSError)
        }
    }
    
    static func POST(URLString:String,
                    paramaters:[String:NSObject]?,
                    showHUD:Bool = true,
                    success:((NSObject?)->Void)?,failure:((NSError)->Void)?)
    {
        let manager = AFHTTPSessionManager()
        manager.requestSerializer.timeoutInterval = 10
        
        let mainWindow = UIApplication.shared.delegate!.window!
        
        if showHUD {
            MBProgressHUD.showAdded(to: mainWindow!, animated: true)
        }
        
        manager.post(URLString, parameters: paramaters, progress: nil, success:
            {(task, reponseObject) -> Void in
                if showHUD
                {
                    MBProgressHUD.hideAllHUDs(for: mainWindow!, animated: true)
                }
                success?(reponseObject as? NSObject)
        })
        {(task, error) ->Void in
            if showHUD
            {
                MBProgressHUD.hideAllHUDs(for: mainWindow!, animated: true)
            }
            
            failure?(error as NSError)
        }
    }
}
