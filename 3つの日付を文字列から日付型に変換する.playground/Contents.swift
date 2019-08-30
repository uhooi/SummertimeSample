import Foundation

private func createDateFormatter(timeZone: String, dateFormat: String) -> DateFormatter {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = dateFormat
    dateFormatter.timeZone = TimeZone(abbreviation: timeZone)
    dateFormatter.locale = Locale(identifier: "ja_JP")
    return dateFormatter
}

// 日付フォーマットを生成する
let dateFormatter = createDateFormatter(timeZone: "JST", dateFormat: "yyyy/MM/dd")

// 文字列→日付型へ変換する
let date19510505 = dateFormatter.date(from: "1951/05/05")
let date19510506 = dateFormatter.date(from: "1951/05/06")
let date19510507 = dateFormatter.date(from: "1951/05/07")

// ログを出力する
print("1951/05/05: \(String(describing: date19510505))")
print("1951/05/06: \(String(describing: date19510506))")
print("1951/05/07: \(String(describing: date19510507))")
