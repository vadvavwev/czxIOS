//
// Employee.swift
// EnterpriseApp
//
// 员工数据模型
//

import Foundation

struct Employee: Identifiable, Codable {
    let id: String
    var name: String
    var age: Int
    var email: String
    let createdAt: String
}

struct EmployeeCreate: Codable {
    let name: String
    let age: Int
    let email: String
}

struct EmployeeUpdate: Codable {
    let name: String?
    let age: Int?
    let email: String?
}

struct EmployeesResponse: Codable {
    let employees: [Employee]
    let count: Int?
}

struct EmployeeListResponse: Codable {
    let code: Int
    let data: EmployeesResponse?
    let message: String?
}
