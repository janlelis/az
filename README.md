# Generate Alternative Unicode Representations of A - Z [![[version]](https://badge.fury.io/rb/az.svg)](https://badge.fury.io/rb/az)  [![[ci]](https://github.com/janlelis/az/workflows/Test/badge.svg)](https://github.com/janlelis/az/actions?query=workflow%3ATest)

Going from A to Z in different ways. It will translate Latin ASCII characters to funky Unicode ones.

## Setup

Make sure you have Ruby installed and installing gems works properly. Then do:

```
$ gem install az
```

## Usage

Pass the string to convert to `az`:

### From CLI

```
$ az "character.construction" --to bold
# 𝐜𝐡𝐚𝐫𝐚𝐜𝐭𝐞𝐫.𝐜𝐨𝐧𝐬𝐭𝐫𝐮𝐜𝐭𝐢𝐨𝐧
```

You can also directly copy to your system clipboard using the `--copy` option

To see a list of all fonts included, run: `$ az --fonts`

### From Ruby

```ruby
require "az/kernel_method"
az "character.construction", :fraktur
# => "𝖈𝖍𝖆𝖗𝖆𝖈𝖙𝖊𝖗.𝖈𝖔𝖓𝖘𝖙𝖗𝖚𝖈𝖙𝖎𝖔𝖓"
```

## Included Fonts

**Please note:** Be sure to understand that the output from az does not change the real font, but displays these special "font" codepoints within the actual font. Also note that assistive technology might be unable to properly interpret these.

Font                                | Output
------------------------------------|------------
ascii                               | From A to Z
bold                                | 𝐅𝐫𝐨𝐦 𝐀 𝐭𝐨 𝐙
italic                              | 𝐹𝑟𝑜𝑚 𝐴 𝑡𝑜 𝑍
bold_italic / italic_bold           | 𝑭𝒓𝒐𝒎 𝑨 𝒕𝒐 𝒁
monospace                           | 𝙵𝚛𝚘𝚖 𝙰 𝚝𝚘 𝚉
double                              | Ｆｒｏｍ Ａ ｔｏ Ｚ
sans                                | 𝖥𝗋𝗈𝗆 𝖠 𝗍𝗈 𝖹
sans_bold                           | 𝗙𝗿𝗼𝗺 𝗔 𝘁𝗼 𝗭
sans_italic                         | 𝘍𝘳𝘰𝘮 𝘈 𝘵𝘰 𝘡
sans_bold_italic / sans_italic_bold | 𝙁𝙧𝙤𝙢 𝘼 𝙩𝙤 𝙕
script                              | ℱ𝓇ℴ𝓂 𝒜 𝓉ℴ 𝒵
bold_script / script_bold           | 𝓕𝓻𝓸𝓶 𝓐 𝓽𝓸 𝓩
fraktur                             | 𝔉𝔯𝔬𝔪 𝔄 𝔱𝔬 ℨ
bold_fraktur / fraktur_bold         | 𝕱𝖗𝖔𝖒 𝕬 𝖙𝖔 𝖅
parentheses                         | 🄕⒭⒪⒨ 🄐 ⒯⒪ 🄩
small_caps                          | Fʀᴏᴍ A ᴛᴏ Z
double_struck                       | 𝔽𝕣𝕠𝕞 𝔸 𝕥𝕠 ℤ
outlined                            | 𜳛𜳧𜳤𜳢 𜳖 𜳩𜳤 𜳯
circled                             | Ⓕⓡⓞⓜ Ⓐ ⓣⓞ Ⓩ
circled_upper / upper_circled       | ⒻⓇⓄⓂ Ⓐ ⓉⓄ Ⓩ
circled_negative / negative_circled | 🅕🅡🅞🅜 🅐 🅣🅞 🅩
squared_upper / upper_squared       | 🄵🅁🄾🄼 🄰 🅃🄾 🅉
squared_negative / negative_squared | 🅵🆁🅾🅼 🅰 🆃🅾 🆉
region                              | 🇫🇷🇴🇲 🇦 🇹🇴 🇿
tag                                 | `󠁆󠁲󠁯󠁭 󠁁 󠁴󠁯 󠁚`

## Also see

- [character.construction/az](https://character.construction/az) - lists all letters on one page
- [uniscribe](https://github.com/janlelis/uniscribe) - commandline utility that explains characters

Copyright (C) 2019-2024 Jan Lelis <https://janlelis.com>. Released under the MIT license.
