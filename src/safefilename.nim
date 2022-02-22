import strutils

#[
(34, 0x201d), # ”
(60, 0xff1c), # ＜
(62, 0xff1e), # ＞
(124, 0xff5c), #
(58, 0xff1a), # ：
(42, 0xff0a), # ＊
(63, 0xff1f), # ？
(92, 0xffe5), # ￥
(47, 0xff0f), # ／
]#

proc safefilenames*(names: string): string =
  result = names.multiReplace(("\"", "”"),("<","＜"),(">", "＞"), ("|", "｜"), (":", "："), ("*", "＊"), ("?", "？"), ("\\", "￥"), ("/", "／"))
