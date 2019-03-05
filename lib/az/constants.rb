# frozen_string_literal: true

module Az
  VERSION = "1.0.0"
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

    script: "𝓐-𝓩𝓪-𝔃",
    fraktur: "𝕬-𝖅𝖆-𝖟",
    small_caps: "A-Zᴀʙᴄᴅᴇꜰɢʜɪᴊᴋʟᴍɴᴏᴩqʀꜱᴛᴜᴠᴡxyᴢ", # upper remains ascii
    parentheses: "🄐-🄩⒜-⒵",

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

