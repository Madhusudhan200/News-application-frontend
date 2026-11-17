import SwiftUI

public struct EditedStory: Identifiable, Codable, Equatable {
    public let id: Int
    public var title: String
    public var summary: String
    public var category: String
    public var contentHtml: String
    
    public init(id: Int, title: String, summary: String, category: String, contentHtml: String = "") {
        self.id = id
        self.title = title
        self.summary = summary
        self.category = category
        self.contentHtml = contentHtml.isEmpty ? "<p>\(summary)</p>" : contentHtml
    }
}

public struct AdminSettings: Codable, Equatable {
    public var headlineFontSize: Double
    public var bodyFontSize: Double
    public var fontFamilyChoice: String
    public var logoHeightDp: Double
    public var customLogoUrl: String
    public var imageRatioPercent: Double
    public var guestModeEnabled: Bool
    public var guestCanBookmark: Bool
    public var guestCanShare: Bool
    public var employeeRequireApproval: Bool
    public var employeeAllowBreaking: Bool
    
    public init(
        headlineFontSize: Double = 18,
        bodyFontSize: Double = 15,
        fontFamilyChoice: String = "Default",
        logoHeightDp: Double = 28,
        customLogoUrl: String = "",
        imageRatioPercent: Double = 42,
        guestModeEnabled: Bool = true,
        guestCanBookmark: Bool = true,
        guestCanShare: Bool = true,
        employeeRequireApproval: Bool = true,
        employeeAllowBreaking: Bool = true
    ) {
        self.headlineFontSize = headlineFontSize
        self.bodyFontSize = bodyFontSize
        self.fontFamilyChoice = fontFamilyChoice
        self.logoHeightDp = logoHeightDp
        self.customLogoUrl = customLogoUrl
        self.imageRatioPercent = imageRatioPercent
        self.guestModeEnabled = guestModeEnabled
        self.guestCanBookmark = guestCanBookmark
        self.guestCanShare = guestCanShare
        self.employeeRequireApproval = employeeRequireApproval
        self.employeeAllowBreaking = employeeAllowBreaking
    }
    
    public var fontDesign: Font.Design {
        switch fontFamilyChoice {
        case "Serif": return .serif
        case "Sans": return .default
        case "Monospace": return .monospaced
        default: return .default
        }
    }
}
