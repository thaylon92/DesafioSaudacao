import UIKit

func pegarSaudacao() -> String {
    let hour = Calendar.current.date(bySettingHour: 04, minute: 30, second: 0, of: Date())!
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "HH:mm"
    dateFormatter.timeStyle = .short
    dateFormatter.locale = Locale(identifier: "pt_BR")
    
    let hourformatted = dateFormatter.string(from: hour)
    
    if hourformatted < "11:59" && hourformatted > "06:00" {
        return "Bom dia"
    }
    if hourformatted < "17:59" && hourformatted > "12:00" {
        return "Boa tarde"
        
    }
    if hourformatted < "23:59" && hourformatted > "18:00" {
        return "Boa noite"
        
    }
    if hourformatted < "05:59" && hourformatted > "00:00" {
        return "Ainda esta acordado ?"
        
    }
    
    return ""
}





print(pegarSaudacao()) // Ainda está acordado?
