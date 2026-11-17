import SwiftUI

extension Color {
    // Brand Colors
    static let naaNavy = Color(red: 10/255, green: 25/255, blue: 47/255)       // #0A192F
    static let naaNavyDark = Color(red: 7/255, green: 16/255, blue: 31/255)    // #07101F
    static let naaGold = Color(red: 229/255, green: 169/255, blue: 60/255)     // #E5A93C
    static let naaGoldAccent = Color(red: 245/255, green: 183/255, blue: 0/255) // #F5B700
    static let naaCardDark = Color(red: 17/255, green: 34/255, blue: 64/255)   // #112240
    static let naaLightBg = Color(red: 248/255, green: 249/255, blue: 250/255) // #F8F9FA
    static let naaEmerald = Color(red: 16/255, green: 185/255, blue: 129/255)  // #10B981
    static let naaRed = Color(red: 239/255, green: 68/255, blue: 68/255)       // #EF4444
    
    // Dynamic adaptive surfaces
    static func screenBg(dark: Bool) -> Color {
        dark ? naaNavyDark : naaLightBg
    }
    
    static func surface(dark: Bool) -> Color {
        dark ? naaCardDark : Color.white
    }
    
    static func textPrimary(dark: Bool) -> Color {
        dark ? Color.white : Color(red: 17/255, green: 24/255, blue: 39/255)
    }
    
    static func textSecondary(dark: Bool) -> Color {
        dark ? Color.white.opacity(0.7) : Color(red: 107/255, green: 114/255, blue: 128/255)
    }
    
    static func border(dark: Bool) -> Color {
        dark ? Color.white.opacity(0.12) : Color.black.opacity(0.08)
    }
}

struct NaaTvBrand {
    static let site = "https://naatvtelugu.com/"
    static let officialLogoUrl = "https://naatvtelugu.com/wp-content/uploads/2025/07/naatv_telugu_headder_logo.webp"
    static let copyright = "© 2018 NAA TV Telugu. All Rights Reserved."
    static let portal = "Official News Portal: naatvtelugu.com"
}
