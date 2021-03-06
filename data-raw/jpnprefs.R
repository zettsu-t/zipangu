jpnprefs_elem <-
  list(prefecture_kanji = c("\u5317\u6d77\u9053",
                            "\u9752\u68ee\u770c", "\u5ca9\u624b\u770c", "\u5bae\u57ce\u770c",
                            "\u79cb\u7530\u770c", "\u5c71\u5f62\u770c", "\u798f\u5cf6\u770c",
                            "\u8328\u57ce\u770c", "\u6803\u6728\u770c", "\u7fa4\u99ac\u770c",
                            "\u57fc\u7389\u770c", "\u5343\u8449\u770c", "\u6771\u4eac\u90fd",
                            "\u795e\u5948\u5ddd\u770c", "\u65b0\u6f5f\u770c", "\u5bcc\u5c71\u770c",
                            "\u77f3\u5ddd\u770c", "\u798f\u4e95\u770c", "\u5c71\u68a8\u770c",
                            "\u9577\u91ce\u770c", "\u5c90\u961c\u770c", "\u9759\u5ca1\u770c",
                            "\u611b\u77e5\u770c", "\u4e09\u91cd\u770c", "\u6ecb\u8cc0\u770c",
                            "\u4eac\u90fd\u5e9c", "\u5927\u962a\u5e9c", "\u5175\u5eab\u770c",
                            "\u5948\u826f\u770c", "\u548c\u6b4c\u5c71\u770c", "\u9ce5\u53d6\u770c",
                            "\u5cf6\u6839\u770c", "\u5ca1\u5c71\u770c", "\u5e83\u5cf6\u770c",
                            "\u5c71\u53e3\u770c", "\u5fb3\u5cf6\u770c", "\u9999\u5ddd\u770c",
                            "\u611b\u5a9b\u770c", "\u9ad8\u77e5\u770c", "\u798f\u5ca1\u770c",
                            "\u4f50\u8cc0\u770c", "\u9577\u5d0e\u770c", "\u718a\u672c\u770c",
                            "\u5927\u5206\u770c", "\u5bae\u5d0e\u770c", "\u9e7f\u5150\u5cf6\u770c",
                            "\u6c96\u7e04\u770c"),
       prefecture = c("Hokkaido", "Aomori-ken", "Iwate-ken",
                      "Miyagi-ken", "Akita-ken", "Yamagata-ken", "Fukushima-ken", "Ibaraki-ken",
                      "Tochigi-ken", "Gunma-ken", "Saitama-ken", "Chiba-ken", "Tokyo-to",
                      "Kanagawa-ken", "Niigata-ken", "Toyama-ken", "Ishikawa-ken",
                      "Fukui-ken", "Yamanashi-ken", "Nagano-ken", "Gifu-ken", "Shizuoka-ken",
                      "Aichi-ken", "Mie-ken", "Shiga-ken", "Kyoto-fu", "Osaka-fu",
                      "Hyogo-ken", "Nara-ken", "Wakayama-ken", "Tottori-ken", "Shimane-ken",
                      "Okayama-ken", "Hiroshima-ken", "Yamaguchi-ken", "Tokushima-ken",
                      "Kagawa-ken", "Ehime-ken", "Kochi-ken", "Fukuoka-ken", "Saga-ken",
                      "Nagasaki-ken", "Kumamoto-ken", "Oita-ken", "Miyazaki-ken", "Kagoshima-ken",
                      "Okinawa-ken"),
       region = c("Hokkaido", "Tohoku", "Kanto", "Chubu", "Kansai", "Chugoku", "Shikoku", "Kyushu"),
       major_island = c("Hokkaido", "Honshu", "Shikoku", "Kyushu", "Ryukyu Islands"))

jpnprefs <-
  tibble::tibble(
    jis_code = stringr::str_pad(seq.int(47), width = 2, pad = "0"),
    prefecture_kanji = jpnprefs_elem$prefecture_kanji,
    prefecture = jpnprefs_elem$prefecture,
    region = c(
      jpnprefs_elem$region[1],
      rep(jpnprefs_elem$region[2], 6),
      rep(jpnprefs_elem$region[3], 7),
      rep(jpnprefs_elem$region[4], 9),
      rep(jpnprefs_elem$region[5], 7),
      rep(jpnprefs_elem$region[6], 5),
      rep(jpnprefs_elem$region[7], 4),
      rep(jpnprefs_elem$region[8], 8)
    ),
    major_island = c(
      jpnprefs_elem$major_island[1],
      rep(jpnprefs_elem$major_island[2], 34),
      rep(jpnprefs_elem$major_island[3], 4),
      rep(jpnprefs_elem$major_island[4], 7),
      jpnprefs_elem$major_island[5]))

usethis::use_data(jpnprefs, overwrite = TRUE)
