//
//  target.swift
//  RxMoya_practice
//
//  Created by 다훈김 on 2021/09/09.
//

import Foundation
import Moya

extension Service: TargetType {
    var baseURL: URL {
        var baseURL: URL {
            return URL(string: "https://api.odcloud.kr")!
        }
    }
    
    var path: String {
        switch self {
        case .getCenterList(page: _, perPage: _):
            return "/api/15077586/v1/centers?"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getCenterList(page: _, perPage: _):
            return .get
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .getCenterList(page: let page, perPage: let perPage):
            return .requestParameters(parameters: ["page": page, "perPage": perPage], encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        return ["Authorization": "Infuser N28F7A1MFhXnb5cIYDYz3XH4Rea8ZV3kT9aVpy8dTTXb3huQ9WYBvOzqa11VnXaPrW3OMqqhaOv3AhrFl06HMA==", "Content-type" : "application/json;charset=UTF-8"]
    }
    
    
}
