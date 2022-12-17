import UIKit

func notificationDate(date: String) -> String {
    let calendar = Calendar(identifier: .gregorian)
    let formatter = ISO8601DateFormatter()
    let dateFormatter = DateFormatter()
    let now = Date()
    var displayDate = ""

    guard let createDate = formatter.date(from: date) else {
        return ""
    }
    guard let dayDiff = calendar.dateComponents([.day], from: createDate, to: now).day else {
        return ""
    }
    // print(createDate)
    // print("差分：\(dayDiff)")
    // dateFormatter.timeZone = TimeZone.current
    // dateFormatter.locale = Locale.current
    // 今日だったら
    if calendar.isDateInToday(createDate) {
        dateFormatter.dateFormat = "HH:mm"
        // dateFormatter.timeStyle = .short
        displayDate = dateFormatter.string(from: createDate)
        // 昨日だったら
    } else if calendar.isDateInYesterday(createDate) {
        displayDate = "昨日"
        // 一週間以内だったら
    } else if dayDiff <= 7 {
        dateFormatter.locale = Locale(identifier: "ja_JP")
        dateFormatter.dateFormat = "EEEE"
        displayDate = dateFormatter.string(from: createDate)
        // 一週間以上、一年以内だったら
    } else if dayDiff >= 7 && dayDiff <= 364 {
        dateFormatter.dateFormat = "MM/dd"
        displayDate = dateFormatter.string(from: createDate)
        // 一年以上前だったら
    } else if dayDiff >= 365 {
        dateFormatter.dateFormat = "yyyy/MM/dd"
        displayDate = dateFormatter.string(from: createDate)
    }
    return displayDate
}

print(notificationDate(date: "2022-12-07T12:40:36Z"))
print(notificationDate(date: "2022-12-06T12:40:36Z"))
print(notificationDate(date: "2022-11-30T12:40:36Z"))
print(notificationDate(date: "2021-12-07T12:40:36Z"))
print(notificationDate(date: "2021-12-06T12:40:36Z"))


