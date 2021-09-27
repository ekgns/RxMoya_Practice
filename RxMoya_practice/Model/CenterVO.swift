//
//  CenterVO.swift
//  RxMoya_practice
//
//  Created by 다훈김 on 2021/09/09.
//

import Foundation
import Moya
import ObjectMapper



struct Center:Mappable {
    var address: String?
    var centerName: String?
    var centerType: String?
    var createdAt: String?
    var facilityName: String?
    var id: Int?
    var lat: String?
    var lng: String?
    var org: String?
    var phoneNumber: String?
    var sido: String?
    var sigungu:String?
    var updatedAt: String?
    var zipCode: String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        address <- map["address"]
        centerName <- map["centerName"]
        centerType <- map["centerType"]
        createdAt <- map["createAt"]
        facilityName <- map["facilityName"]
        id <- map["id"]
        lat <- map["lat"]
        lng <- map ["lng"]
        org <- map["org"]
        phoneNumber <- map["phoneNumber"]
        sido <- map["sido"]
        sigungu <- map["sigungu"]
        updatedAt <- map["updateAt"]
        zipCode <- map["zipCode"]
    }

}

struct CenterListVOMap:Mappable {
    var currentCount: Int?
    var data: [Center]?
    var matchCount: Int?
    var page: Int?
    var perPage: Int?
    var totalCount: Int?

    init?(map: Map) {}

    mutating func mapping(map: Map) {
        currentCount <- map["currentCount"]
        data <- map["data"]
        matchCount <- map["matchCount"]
        page <- map["page"]
        perPage <- map["perPage"]
        totalCount <- map["totalCount"]
    }
}
