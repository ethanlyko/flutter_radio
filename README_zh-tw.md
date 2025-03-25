# flutter_radio

### [English](README.md), [中文](README_zh-tw.md)

這個 Flutter 廣播專案展示了 [radio-browser](https://www.radio-browser.info/) API、Retrofit 和 Riverpod 的使用。Retrofit 是一個 HTTP 客戶端函式庫，而 Riverpod 是一個反應式快取和資料綁定框架，用於處理應用程式的邏輯。此外，我們使用 [audioplayers](https://pub.dev/packages/audioplayers) 來播放廣播電台，並使用 Realm 資料庫來儲存最愛和播放過的廣播電台。


![app preview](media/app_preview.gif)

## 相依性
   - [retrofit](https://pub.dev/packages/retrofit): 一個 HTTP 客戶端函式庫
   - [riverpod](https://pub.dev/packages/riverpod): 一個反應式快取和資料綁定框架
   - [freezed](https://pub.dev/packages/freezed): 資料類別的程式碼產生器
   - [audioplayers](https://pub.dev/packages/audioplayers): 一個 Flutter 外掛程式，用於同時播放多個音訊檔案
   - [realm](https://pub.dev/packages/realm): Realm 是一個行動資料庫，可以直接在手機、平板電腦或穿戴裝置中執行
   - [go_router](https://pub.dev/packages/go_router): 一個用於 Flutter 的宣告式路由套件
   - [shared_preferences](https://pub.dev/packages/shared_preferences): 包裝平台特定的持久性儲存，用於簡單的資料
   - [search_choices](https://pub.dev/packages/search_choices): 高度可自訂的 Widget，用於在對話框或選單中搜尋單個或多個選項列表

## 如何執行
  1. git clone https://github.com/ethanlyko/flutter_radio.git
  2. 執行

## 概述
這個專案利用 Riverpod 來處理狀態轉換。當廣播電台查詢執行時，UI 會監聽查詢結果，這些結果由 Riverpod 機制處理，然後更新 UI。

![radio flow](media/radio-flow.png)

此外，播放過的廣播電台和喜愛的電台會儲存為 Realm 資料庫記錄。這些記錄可以顯示在最愛和歷史記錄中，最愛和歷史記錄頁面也利用了 Riverpod 機制來處理。
