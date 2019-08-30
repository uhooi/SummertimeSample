import Foundation

extension Date {
    static func date(from dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        dateFormatter.timeZone = TimeZone(abbreviation: "JST")
        dateFormatter.locale = Locale(identifier: "ja_JP")
        let date = dateFormatter.date(from: dateString)
        
        // 変換に成功した場合、変換結果を返す
        if date != nil {
            return date
        }
        
        // 変換に失敗した場合、サマータイムの開始日なら1時間追加して変換した結果を返す
        let summertimeStartDays = ["1948/05/02", "1949/04/03", "1950/05/07", "1951/05/06"]
        if summertimeStartDays.contains(dateString) {
            dateFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
            return dateFormatter.date(from: dateString + " 01:00:00")
        }
        
        return nil
    }
}

// 文字列→日付型へ変換する
let date19510505 = Date.date(from: "1951/05/05")
let date19510506 = Date.date(from: "1951/05/06")
let date19510507 = Date.date(from: "1951/05/07")

// ログを出力する
print("1951/05/05: \(String(describing: date19510505))")
print("1951/05/06: \(String(describing: date19510506))")
print("1951/05/07: \(String(describing: date19510507))")
