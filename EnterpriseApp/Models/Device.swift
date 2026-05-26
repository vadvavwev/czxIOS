//
// Device.swift
// EnterpriseApp
//
// 设备数据模型
//

import Foundation

struct Device: Identifiable, Codable {
    let id: String
    var name: String
    var model: String?
    var categoryId: String
    var categoryName: String?
}

struct DeviceCreate: Codable {
    let name: String
    let model: String?
    let categoryId: String
}

struct DeviceUpdate: Codable {
    let name: String?
    let model: String?
    let categoryId: String?
}

struct DevicesResponse: Codable {
    let devices: [Device]
}

struct DeviceListResponse: Codable {
    let code: Int
    let data: DevicesResponse?
    let message: String?
}
