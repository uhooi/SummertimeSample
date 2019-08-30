import Foundation

private func createFullDateFormatter(timeZone: String) -> DateFormatter {
    let dateFormatter = DateFormatter()
    dateFormatter.timeStyle = .full
    dateFormatter.dateStyle = .full
    dateFormatter.timeZone = TimeZone(abbreviation: timeZone)
    dateFormatter.locale = Locale(identifier: "ja_JP")
    return dateFormatter
}

private func printDate(_ timeStamp: TimeInterval) {
    print(dateFormatter.string(from: Date(timeIntervalSince1970: timeStamp)))
}

let dateFormatter = createFullDateFormatter(timeZone: "UTC")

print("サマータイム開始")
printDate(1553993999)
printDate(1553993999 + 1)
print("サマータイム終了")
printDate(1572134399)
printDate(1572134399 + 1)
printDate(1572134399 + 60*60)
printDate(1572134399 + 60*60 + 1)
printDate(1572134399 + 60*60*2)
printDate(1572134399 + 60*60*2 + 1)
