//
//  JSCHttptool.swift
//  jisuchou
//
//  Created by zhangzhenwei on 2017/8/11.
//  Copyright © 2017年 qingsongchou. All rights reserved.
//

import UIKit
import Alamofire



class JSCHttptool {
    
    //请求头
    let requestHeader:HTTPHeaders = ["Platform":"qsc_ios/2.2.0/v6",
                                     "Accept":"application/json"];
    //设置manager属性 (重要)
    var manger:SessionManager? = nil
    //单例
    static let share = JSCHttptool()
    
    
    func handy_GetWithPath(path: String,parameters: Dictionary<String,Any>?,hasHUD:Bool ,success: @escaping ((_ result: String) -> ()),failure: @escaping ((_ error: Error) -> ())) {
        
        _ = getSessionconfig()
        if hasHUD {
            
        }
        
        manger?.request(path, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: requestHeader).validate().responseString(completionHandler: { (response) in
            switch response.result {
            case .success:
                
                success(response.result.value!)
                
            case .failure(let error):
                
                failure(error)
                
            }
        })
    }
    
    
    func handy_PostWithPath(path: String,parameters: Dictionary<String,Any>?,hasHUD:Bool ,success: @escaping ((_ result: String) -> ()),failure: @escaping ((_ error: Error) -> ())) {
        
        _ = getSessionconfig()
        if hasHUD {
            
        }
        
        manger?.request(path, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: requestHeader).validate().responseString(completionHandler: { (response) in
            switch response.result {
            case .success:
                
                success(response.result.value!)
                
            case .failure(let error):
                
                failure(error)
                
            }
        })
    }
    
    
    func handy_PutWithPath(path: String,parameters: Dictionary<String,Any>?,hasHUD:Bool ,success: @escaping ((_ result: String) -> ()),failure: @escaping ((_ error: Error) -> ())) {
        
        _ = getSessionconfig()
        if hasHUD {
            
        }
        
        manger?.request(path, method: .put, parameters: parameters, encoding: URLEncoding.default, headers: requestHeader).validate().responseString(completionHandler: { (response) in
            switch response.result {
            case .success:
                
                success(response.result.value!)
                
            case .failure(let error):
                
                failure(error)
                
            }
        })
    }

    
    
    func getSessionconfig() -> SessionManager {
        //配置 , 通常默认即可
        let config:URLSessionConfiguration = URLSessionConfiguration.default
        //设置超时时间为15S
        config.timeoutIntervalForRequest = 15
        //根据config创建manager
        manger = SessionManager(configuration: config)
        return manger!
    }
}
