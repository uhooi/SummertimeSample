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

let dateFormatter = createFullDateFormatter(timeZone: "JST")

print("サマータイム開始")
printDate(-683802001)
printDate(-683802001 + 1)
print("サマータイム終了")
printDate(-672314401)
printDate(-672314401 + 1)
printDate(-672314401 + 60*60)
printDate(-672314401 + 60*60 + 1)
printDate(-672314401 + 60*60*2)
printDate(-672314401 + 60*60*2 + 1)
