import Foundation

private func createDateFormatter(timeZone: String, dateFormat: String) -> DateFormatter {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = dateFormat
    dateFormatter.timeZone = TimeZone(abbreviation: timeZone)
    dateFormatter.locale = Locale(identifier: "ja_JP")
    return dateFormatter
}

private func printDate(_ dateString: String) {
    let date = dateFormatter.date(from: dateString)
    print("\(dateString): \(String(describing: date))")
}

let dateFormatter = createDateFormatter(timeZone: "JST", dateFormat: "yyyy/MM/dd")

// 文字列→日付型へ変換し、ログを出力する
print("1948 年 開始日")
printDate("1948/05/01")
printDate("1948/05/02")
printDate("1948/05/03")
print("1948 年 終了日")
printDate("1948/09/11")
printDate("1948/09/12")
print()
print("1949 年 開始日")
printDate("1949/04/02")
printDate("1949/04/03")
printDate("1949/04/04")
print("1949 年 終了日")
printDate("1949/09/10")
printDate("1949/09/11")
print()
print("1950 年 開始日")
printDate("1950/05/06")
printDate("1950/05/07")
printDate("1950/05/08")
print("1950 年 終了日")
printDate("1950/09/09")
printDate("1950/09/10")
print()
print("1951 年 開始日")
printDate("1951/05/05")
printDate("1951/05/06")
printDate("1951/05/07")
print("1951 年 終了日")
printDate("1951/09/08")
printDate("1951/09/09")
