//
// Category.swift
// EnterpriseApp
//
// 设备分类数据模型
//

import Foundation

struct Category: Identifiable, Codable {
    let id: String
    var name: String
    var deviceCount: Int
}

struct CategoryCreate: Codable {
    let name: String
}

struct CategoryUpdate: Codable {
    let name: String?
}

struct CategoriesResponse: Codable {
    let categories: [Category]
}

struct CategoryListResponse: Codable {
    let code: Int
    let data: CategoriesResponse?
    let message: String?
}
