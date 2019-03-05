# frozen_string_literal: true

module Az
  VERSION = "1.0.1"
  UNICODE_VERSION = "12.0.0"

  FONTS = {
    ascii: "A-Za-z",
    bold: "𝐀-𝐙𝐚-𝐳",
    italic: "𝐴-𝑍𝑎-𝑧",
    bold_italic: "𝑨-𝒁𝒂-𝒛",
    italic_bold: "𝑨-𝒁𝒂-𝒛",
    monospace: "𝙰-𝚉𝚊-𝚣",
    double: "Ａ-Ｚａ-ｚ",

    sans: "𝖠-𝖹𝖺-𝗓",
    sans_bold: "𝗔-𝗭𝗮-𝘇",
    sans_italic: "𝘈-𝘡𝘢-𝘻",
    sans_bold_italic: "𝘼-𝙕𝙖-𝙯",
    sans_italic_bold: "𝘼-𝙕𝙖-𝙯",

    script: "𝒜ℬ𝒞𝒟ℰℱ𝒢ℋℐ𝒥𝒦ℒℳ𝒩-𝒬ℛ𝒮-𝒵𝒶-𝒹ℯ𝒻ℊ𝒽-𝓃ℴ𝓅-𝓏",
    bold_script: "𝓐-𝓩𝓪-𝔃",
    script_bold: "𝓐-𝓩𝓪-𝔃",
    fraktur: "𝔄𝔅ℭ𝔇-𝔊ℌℑ𝔍-𝔔ℜ𝔖-𝔜ℨ𝔞-𝔷",
    fraktur_bold: "𝕬-𝖅𝖆-𝖟",
    bold_fraktur: "𝕬-𝖅𝖆-𝖟",
    parentheses: "🄐-🄩⒜-⒵",

    small_caps: "A-Zᴀʙᴄᴅᴇꜰɢʜɪᴊᴋʟᴍɴᴏᴩqʀꜱᴛᴜᴠᴡxyᴢ", # upper remains ascii
    double_struck: "𝔸𝔹ℂ𝔻-𝔾ℍ𝕀-𝕄ℕ𝕆ℙℚℝ𝕊-𝕐ℤ𝕒-𝕫",

    circled: "Ⓐ-Ⓩⓐ-ⓩ",
    circled_upper: "Ⓐ-ⓏⒶ-Ⓩ",
    upper_circled: "Ⓐ-ⓏⒶ-Ⓩ",
    circled_negative: "🅐-🅩🅐-🅩", # no lower
    negative_circled: "🅐-🅩🅐-🅩", # no lower
    squared_upper: "🄰-🅉🄰-🅉",    # no lower
    upper_squared: "🄰-🅉🄰-🅉",    # no lower
    squared_negative: "🅰-🆉🅰-🆉", # no lower
    negative_squared: "🅰-🆉🅰-🆉", # no lower

    region: "🇦-🇿🇦-🇿",
    tag: "\u{E0041}-\u{E005A}\u{E0061}-\u{E007A}",
  }
end

