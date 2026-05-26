import Foundation

struct User: Codable {
    let id: String
    let username: String
    let role: String
}

struct LoginRequest: Codable {
    let username: String
    let password: String
}

struct LoginResponse: Codable {
    let token: String
    let user: User
}

// 适配后端返回格式：code + data + message
struct APIResponse<T: Codable>: Codable {
    let code: Int
    let data: T?
    let message: String?
}
