# 企业办公助手 - SwiftUI 版本

## 项目说明

这是企业办公助手的 SwiftUI iOS 原生应用实现，使用最新的 SwiftUI 框架和 async/await 网络请求。

## 技术栈

- SwiftUI (iOS 15+)
- Swift 5.5+
- async/await 异步编程
- MVVM 架构
- URLSession REST API
- Keychain 安全存储
- Combine 框架

## 功能特性

- ✅ JWT 登录认证
- ✅ 员工管理（增删改查）
- ✅ 设备分类管理
- ✅ 设备管理
- ✅ 下拉刷新
- ✅ 加载状态
- ✅ 错误处理
- ✅ 原生 iOS 设计风格

## 后端API

- 基础URL: `http://121.196.173.80:5000/api`
- 支持 JWT 认证
- RESTful API 设计

## 如何使用

### 1. 使用 Xcode 创建新项目

1. 打开 Xcode
2. 选择 "Create a new Xcode project"
3. 选择 "iOS" → "App"
4. 项目名称: `EnterpriseApp`
5. Interface: **SwiftUI**
6. Language: **Swift**
7. 最低版本: **iOS 15.0**

### 2. 复制文件到项目

将 `swiftui/EnterpriseApp/` 文件夹中的所有文件复制到 Xcode 项目中：

```
EnterpriseApp/
├── Models/              # 数据模型
├── Views/               # SwiftUI 视图
├── ViewModels/          # 视图模型
├── Services/            # 网络服务
├── Utils/              # 工具类
└── EnterpriseAppApp.swift  # 应用入口
```

### 3. 配置 Info.plist

添加网络权限（允许 HTTP 请求）：

```xml
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
</dict>
```

### 4. 运行项目

1. 选择模拟器或真机
2. 点击运行按钮 (⌘R)

## 项目结构

```
EnterpriseApp/
├── Models/
│   ├── Employee.swift
│   ├── Category.swift
│   ├── Device.swift
│   └── User.swift
├── Views/
│   ├── LoginView.swift
│   ├── ContentView.swift
│   ├── EmployeeListView.swift
│   ├── EmployeeFormView.swift
│   ├── CategoryListView.swift
│   ├── CategoryFormView.swift
│   ├── DeviceListView.swift
│   └── DeviceFormView.swift
├── ViewModels/
│   ├── AuthViewModel.swift
│   ├── EmployeeViewModel.swift
│   ├── CategoryViewModel.swift
│   └── DeviceViewModel.swift
├── Services/
│   ├── APIService.swift
│   ├── AuthService.swift
│   └── KeychainService.swift
├── Utils/
│   └── Extensions.swift
└── EnterpriseAppApp.swift
```

## API 接口说明

### 认证
- POST `/auth/login` - 登录
- POST `/auth/logout` - 登出

### 员工
- GET `/employees` - 获取员工列表
- GET `/employees/:id` - 获取员工详情
- POST `/employees` - 创建员工
- PUT `/employees/:id` - 更新员工
- DELETE `/employees/:id` - 删除员工

### 分类
- GET `/categories` - 获取分类列表
- GET `/categories/:id` - 获取分类详情
- POST `/categories` - 创建分类
- PUT `/categories/:id` - 更新分类
- DELETE `/categories/:id` - 删除分类

### 设备
- GET `/categories/:id/devices` - 获取分类下的设备
- GET `/devices/:id` - 获取设备详情
- POST `/devices` - 创建设备
- PUT `/devices/:id` - 更新设备
- DELETE `/devices/:id` - 删除设备

## 测试账号

- 用户名: `admin`
- 密码: `admin123`

## 系统要求

- macOS 12.0+
- Xcode 13.0+
- iOS 15.0+

## 注意事项

1. 确保后端API服务正常运行
2. 如果使用真机测试，确保设备和服务器在同一网络
3. HTTP请求需要在Info.plist中配置ATS例外
4. 生产环境建议使用HTTPS
