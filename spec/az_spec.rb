# frozen_string_literal: true

require_relative "../lib/az/kernel_method"
require "minitest/autorun"

describe "az" do
  it "will always return an String" do
    assert_kind_of String, az("")
  end

  it "will replace A-Z with Unicode characters which represent latin letters but in a different way" do
    assert_equal "𝐜𝐡𝐚𝐫𝐚𝐜𝐭𝐞𝐫.𝐜𝐨𝐧𝐬𝐭𝐫𝐮𝐜𝐭𝐢𝐨𝐧", az("character.construction", :bold)
  end

  it "does nothing if no font (2nd parameter) is passed in" do
    assert_equal "character.construction", az("character.construction")
  end

  it "works with every included font" do
    assert_equal "𝐅𝐫𝐨𝐦 𝐀 𝐭𝐨 𝐙", az("From A to Z", :bold)
    assert_equal "𝐹𝑟𝑜𝑚 𝐴 𝑡𝑜 𝑍", az("From A to Z", :italic)
    assert_equal "𝑭𝒓𝒐𝒎 𝑨 𝒕𝒐 𝒁", az("From A to Z", :bold_italic)
    assert_equal "𝑭𝒓𝒐𝒎 𝑨 𝒕𝒐 𝒁", az("From A to Z", :italic_bold)
    assert_equal "𝙵𝚛𝚘𝚖 𝙰 𝚝𝚘 𝚉", az("From A to Z", :monospace)
    assert_equal "Ｆｒｏｍ Ａ ｔｏ Ｚ", az("From A to Z", :double)
    assert_equal "𝖥𝗋𝗈𝗆 𝖠 𝗍𝗈 𝖹", az("From A to Z", :sans)
    assert_equal "𝗙𝗿𝗼𝗺 𝗔 𝘁𝗼 𝗭", az("From A to Z", :sans_bold)
    assert_equal "𝘍𝘳𝘰𝘮 𝘈 𝘵𝘰 𝘡", az("From A to Z", :sans_italic)
    assert_equal "𝙁𝙧𝙤𝙢 𝘼 𝙩𝙤 𝙕", az("From A to Z", :sans_bold_italic)
    assert_equal "𝙁𝙧𝙤𝙢 𝘼 𝙩𝙤 𝙕", az("From A to Z", :sans_italic_bold)
    assert_equal "ℱ𝓇ℴ𝓂 𝒜 𝓉ℴ 𝒵", az("From A to Z", :script)
    assert_equal "𝓕𝓻𝓸𝓶 𝓐 𝓽𝓸 𝓩", az("From A to Z", :bold_script)
    assert_equal "𝓕𝓻𝓸𝓶 𝓐 𝓽𝓸 𝓩", az("From A to Z", :script_bold)
    assert_equal "𝔉𝔯𝔬𝔪 𝔄 𝔱𝔬 ℨ", az("From A to Z", :fraktur)
    assert_equal "𝕱𝖗𝖔𝖒 𝕬 𝖙𝖔 𝖅", az("From A to Z", :bold_fraktur)
    assert_equal "𝕱𝖗𝖔𝖒 𝕬 𝖙𝖔 𝖅", az("From A to Z", :fraktur_bold)
    assert_equal "🄕⒭⒪⒨ 🄐 ⒯⒪ 🄩", az("From A to Z", :parentheses)
    assert_equal "Fʀᴏᴍ A ᴛᴏ Z", az("From A to Z", :small_caps)
    assert_equal "𝔽𝕣𝕠𝕞 𝔸 𝕥𝕠 ℤ", az("From A to Z", :double_struck)
    assert_equal "Ⓕⓡⓞⓜ Ⓐ ⓣⓞ Ⓩ", az("From A to Z", :circled)
    assert_equal "ⒻⓇⓄⓂ Ⓐ ⓉⓄ Ⓩ", az("From A to Z", :circled_upper)
    assert_equal "ⒻⓇⓄⓂ Ⓐ ⓉⓄ Ⓩ", az("From A to Z", :upper_circled)
    assert_equal "🅕🅡🅞🅜 🅐 🅣🅞 🅩", az("From A to Z", :circled_negative)
    assert_equal "🅕🅡🅞🅜 🅐 🅣🅞 🅩", az("From A to Z", :negative_circled)
    assert_equal "🄵🅁🄾🄼 🄰 🅃🄾 🅉", az("From A to Z", :squared_upper)
    assert_equal "🄵🅁🄾🄼 🄰 🅃🄾 🅉", az("From A to Z", :upper_squared)
    assert_equal "🅵🆁🅾🅼 🅰 🆃🅾 🆉", az("From A to Z", :squared_negative)
    assert_equal "🅵🆁🅾🅼 🅰 🆃🅾 🆉", az("From A to Z", :negative_squared)
    assert_equal "🇫🇷🇴🇲 🇦 🇹🇴 🇿", az("From A to Z", :region)
    assert_equal "󠁆󠁲󠁯󠁭 󠁁 󠁴󠁯 󠁚", az("From A to Z", :tag)
  end

  it "works to convert an h to italic" do
    assert_equal "𝑐ℎ𝑎𝑟𝑎𝑐𝑡𝑒𝑟.𝑐𝑜𝑛𝑠𝑡𝑟𝑢𝑐𝑡𝑖𝑜𝑛", az("character.construction", :italic)
  end
end


describe "Az.fonts" do
  it "will return a list of all available 'fonts'" do
    assert_kind_of Array, Az.fonts
    assert_includes Az.fonts, :italic
  end
end
