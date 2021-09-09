//
//  Service.swift
//  RxMoya_practice
//
//  Created by 다훈김 on 2021/09/09.
//

import Foundation
import Moya
import ObjectMapper


// 제공하는 기능 열거형으로 만든다
enum Service {
    
    case getCenterList(page: Int, perPage: Int)
}


