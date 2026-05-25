# EnterpriseApp - 企业办公助手

## 项目结构

```
EnterpriseApp/
├── EnterpriseAppApp.swift          # 应用入口
├── Info.plist                       # iOS配置文件
├── Assets.xcassets/                 # 图片资源
├── Models/                          # 数据模型
│   ├── User.swift
│   ├── Employee.swift
│   ├── Device.swift
│   └── Category.swift
├── ViewModels/                      # 视图模型
│   ├── AuthViewModel.swift
│   ├── EmployeeViewModel.swift
│   ├── DeviceViewModel.swift
│   └── CategoryViewModel.swift
├── Views/                           # 页面视图
│   ├── LoginView.swift              # 登录页
│   ├── ContentView.swift            # 主页面(标签栏)
│   ├── EmployeeListView.swift       # 员工列表
│   ├── EmployeeFormView.swift       # 员工表单
│   ├── DeviceListView.swift         # 设备列表
│   ├── DeviceFormView.swift         # 设备表单
│   ├── CategoryListView.swift       # 分类列表
│   └── CategoryFormView.swift       # 分类表单
├── Services/                        # 网络服务
│   ├── APIService.swift             # API请求
│   ├── AuthService.swift            # 认证服务
│   └── KeychainService.swift         # 密钥链
└── Utils/
    └── Extensions.swift              # 扩展工具
```

## 环境要求

- macOS 12.0+
- Xcode 15.0+
- XcodeGen (用于生成 Xcode 项目)

## 快速开始

### 1. 检查 XcodeGen

```bash
# 检查是否已安装
which xcodegen

# 如果没有安装，使用 Homebrew 安装
brew install xcodegen
```

### 2. 生成 Xcode 项目

```bash
cd EnterpriseApp
xcodegen generate
```

### 3. 打开并运行

```bash
open EnterpriseApp.xcodeproj
```

在 Xcode 中：
1. 选择目标设备或模拟器
2. 点击运行按钮 (Cmd + R)

### 4. 打包 iOS 安装包

**方式一：Xcode 图形界面**
1. Product → Archive
2. 选择 Distribute App → iOS App Store / Ad Hoc / Enterprise

**方式二：命令行打包**
```bash
# 开发测试用 Ad Hoc 包
xcodebuild -project EnterpriseApp.xcodeproj \
    -scheme EnterpriseApp \
    -configuration Release \
    -destination 'generic/platform=iOS' \
    -archivePath build/EnterpriseApp.xcarchive \
    archive

# 导出 IPA
xcodebuild -exportArchive \
    -archivePath build/EnterpriseApp.xcarchive \
    -exportPath build \
    -exportOptionsPlist ExportOptions.plist
```

## 测试账号

- 用户名: `admin`
- 密码: `admin123`

## API 配置

后端接口地址: `http://121.196.173.80:5000/api`

如需修改，编辑 `Services/APIService.swift` 第39行:
```swift
private let baseURL = "http://YOUR_API_URL/api"
```

## 主要功能

### 登录模块
- 用户名/密码登录
- Token 自动存储到 Keychain
- 启动时自动验证登录状态

### 员工管理
- 员工列表展示
- 添加/编辑/删除员工
- 员工信息: 姓名、年龄、邮箱、入职时间

### 设备分类管理
- 分类列表展示
- 添加/编辑/删除分类
- 点击分类进入设备列表

### 设备管理
- 设备列表展示
- 添加/编辑/删除设备
- 设备信息: 名称、型号、所属分类

## 技术栈

- SwiftUI (iOS 15+)
- Combine (响应式编程)
- async/await (异步编程)
- Keychain (安全存储)
- REST API
