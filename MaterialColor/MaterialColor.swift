import UIKit

// MARK: Hex->UIColor: https://gist.github.com/arshad/de147c42d7b3063ef7bc
extension MaterialColor {
    convenience init(hexString: String) {
        let hex = hexString.stringByTrimmingCharactersInSet(NSCharacterSet.alphanumericCharacterSet().invertedSet)
        var int = UInt32()
        NSScanner(string: hex).scanHexInt(&int)
        let a, r, g, b: UInt32
        switch hex.characters.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}

// MARK: MaterialColor
class MaterialColor: UIColor {
    // RED
    class func Red50() -> MaterialColor { return MaterialColor(hexString: "FFEBEE") }
    class func Red100() -> MaterialColor { return MaterialColor(hexString: "FFCDD2") }
    class func Red200() -> MaterialColor { return MaterialColor(hexString: "EF9A9A") }
    class func Red300() -> MaterialColor { return MaterialColor(hexString: "E57373") }
    class func Red400() -> MaterialColor { return MaterialColor(hexString: "EF5350") }
    class func Red500() -> MaterialColor { return MaterialColor(hexString: "F44336") }
    class func Red600() -> MaterialColor { return MaterialColor(hexString: "E53935") }
    class func Red700() -> MaterialColor { return MaterialColor(hexString: "D32F2F") }
    class func Red800() -> MaterialColor { return MaterialColor(hexString: "C62828") }
    class func Red900() -> MaterialColor { return MaterialColor(hexString: "B71C1C") }
    class func RedAccent100() -> MaterialColor { return MaterialColor(hexString: "FF8A80") }
    class func RedAccent200() -> MaterialColor { return MaterialColor(hexString: "FF5252") }
    class func RedAccent400() -> MaterialColor { return MaterialColor(hexString: "FF1744") }
    class func RedAccent700() -> MaterialColor { return MaterialColor(hexString: "D50000") }
    // PINK
    class func Pink50() -> MaterialColor { return MaterialColor(hexString: "FCE4EC") }
    class func Pink100() -> MaterialColor { return MaterialColor(hexString: "F8BBD0") }
    class func Pink200() -> MaterialColor { return MaterialColor(hexString: "F48FB1") }
    class func Pink300() -> MaterialColor { return MaterialColor(hexString: "F06292") }
    class func Pink400() -> MaterialColor { return MaterialColor(hexString: "EC407A") }
    class func Pink500() -> MaterialColor { return MaterialColor(hexString: "E91E63") }
    class func Pink600() -> MaterialColor { return MaterialColor(hexString: "D81B60") }
    class func Pink700() -> MaterialColor { return MaterialColor(hexString: "C2185B") }
    class func Pink800() -> MaterialColor { return MaterialColor(hexString: "AD1457") }
    class func Pink900() -> MaterialColor { return MaterialColor(hexString: "880E4F") }
    class func PinkAccent100() -> MaterialColor { return MaterialColor(hexString: "FF80AB") }
    class func PinkAccent200() -> MaterialColor { return MaterialColor(hexString: "FF4081") }
    class func PinkAccent400() -> MaterialColor { return MaterialColor(hexString: "F50057") }
    class func PinkAccent700() -> MaterialColor { return MaterialColor(hexString: "C51162") }
    // PURPLE
    class func Purple50() -> MaterialColor { return MaterialColor(hexString: "F3E5F5") }
    class func Purple100() -> MaterialColor { return MaterialColor(hexString: "E1BEE7") }
    class func Purple200() -> MaterialColor { return MaterialColor(hexString: "CE93D8") }
    class func Purple300() -> MaterialColor { return MaterialColor(hexString: "BA68C8") }
    class func Purple400() -> MaterialColor { return MaterialColor(hexString: "AB47BC") }
    class func Purple500() -> MaterialColor { return MaterialColor(hexString: "9C27B0") }
    class func Purple600() -> MaterialColor { return MaterialColor(hexString: "8E24AA") }
    class func Purple700() -> MaterialColor { return MaterialColor(hexString: "7B1FA2") }
    class func Purple800() -> MaterialColor { return MaterialColor(hexString: "6A1B9A") }
    class func Purple900() -> MaterialColor { return MaterialColor(hexString: "4A148C") }
    class func PurpleAccent100() -> MaterialColor { return MaterialColor(hexString: "EA80FC") }
    class func PurpleAccent200() -> MaterialColor { return MaterialColor(hexString: "E040FB") }
    class func PurpleAccent400() -> MaterialColor { return MaterialColor(hexString: "D500F9") }
    class func PurpleAccent700() -> MaterialColor { return MaterialColor(hexString: "AA00FF") }
    // DEEPPURPLE
    class func DeepPurple50() -> MaterialColor { return MaterialColor(hexString: "EDE7F6") }
    class func DeepPurple100() -> MaterialColor { return MaterialColor(hexString: "D1C4E9") }
    class func DeepPurple200() -> MaterialColor { return MaterialColor(hexString: "B39DDB") }
    class func DeepPurple300() -> MaterialColor { return MaterialColor(hexString: "9575CD") }
    class func DeepPurple400() -> MaterialColor { return MaterialColor(hexString: "7E57C2") }
    class func DeepPurple500() -> MaterialColor { return MaterialColor(hexString: "673AB7") }
    class func DeepPurple600() -> MaterialColor { return MaterialColor(hexString: "5E35B1") }
    class func DeepPurple700() -> MaterialColor { return MaterialColor(hexString: "512DA8") }
    class func DeepPurple800() -> MaterialColor { return MaterialColor(hexString: "4527A0") }
    class func DeepPurple900() -> MaterialColor { return MaterialColor(hexString: "311B92") }
    class func DeepPurpleAccent100() -> MaterialColor { return MaterialColor(hexString: "B388FF") }
    class func DeepPurpleAccent200() -> MaterialColor { return MaterialColor(hexString: "7C4DFF") }
    class func DeepPurpleAccent400() -> MaterialColor { return MaterialColor(hexString: "651FFF") }
    class func DeepPurpleAccent700() -> MaterialColor { return MaterialColor(hexString: "6200EA") }
    // INDIGO
    class func Indigo50() -> MaterialColor { return MaterialColor(hexString: "E8EAF6") }
    class func Indigo100() -> MaterialColor { return MaterialColor(hexString: "C5CAE9") }
    class func Indigo200() -> MaterialColor { return MaterialColor(hexString: "9FA8DA") }
    class func Indigo300() -> MaterialColor { return MaterialColor(hexString: "7986CB") }
    class func Indigo400() -> MaterialColor { return MaterialColor(hexString: "5C6BC0") }
    class func Indigo500() -> MaterialColor { return MaterialColor(hexString: "3F51B5") }
    class func Indigo600() -> MaterialColor { return MaterialColor(hexString: "3949AB") }
    class func Indigo700() -> MaterialColor { return MaterialColor(hexString: "303F9F") }
    class func Indigo800() -> MaterialColor { return MaterialColor(hexString: "283593") }
    class func Indigo900() -> MaterialColor { return MaterialColor(hexString: "1A237E") }
    class func IndigoAccent100() -> MaterialColor { return MaterialColor(hexString: "8C9EFF") }
    class func IndigoAccent200() -> MaterialColor { return MaterialColor(hexString: "536DFE") }
    class func IndigoAccent400() -> MaterialColor { return MaterialColor(hexString: "3D5AFE") }
    class func IndigoAccent700() -> MaterialColor { return MaterialColor(hexString: "304FFE") }
    // BLUE
    class func Blue50() -> MaterialColor { return MaterialColor(hexString: "E3F2FD") }
    class func Blue100() -> MaterialColor { return MaterialColor(hexString: "BBDEFB") }
    class func Blue200() -> MaterialColor { return MaterialColor(hexString: "90CAF9") }
    class func Blue300() -> MaterialColor { return MaterialColor(hexString: "64B5F6") }
    class func Blue400() -> MaterialColor { return MaterialColor(hexString: "42A5F5") }
    class func Blue500() -> MaterialColor { return MaterialColor(hexString: "2196F3") }
    class func Blue600() -> MaterialColor { return MaterialColor(hexString: "1E88E5") }
    class func Blue700() -> MaterialColor { return MaterialColor(hexString: "1976D2") }
    class func Blue800() -> MaterialColor { return MaterialColor(hexString: "1565C0") }
    class func Blue900() -> MaterialColor { return MaterialColor(hexString: "0D47A1") }
    class func BlueAccent100() -> MaterialColor { return MaterialColor(hexString: "82B1FF") }
    class func BlueAccent200() -> MaterialColor { return MaterialColor(hexString: "448AFF") }
    class func BlueAccent400() -> MaterialColor { return MaterialColor(hexString: "2979FF") }
    class func BlueAccent700() -> MaterialColor { return MaterialColor(hexString: "2962FF") }
    // LIGHTBLUE
    class func LightBlue50() -> MaterialColor { return MaterialColor(hexString: "E1F5FE") }
    class func LightBlue100() -> MaterialColor { return MaterialColor(hexString: "B3E5FC") }
    class func LightBlue200() -> MaterialColor { return MaterialColor(hexString: "81D4FA") }
    class func LightBlue300() -> MaterialColor { return MaterialColor(hexString: "4FC3F7") }
    class func LightBlue400() -> MaterialColor { return MaterialColor(hexString: "29B6F6") }
    class func LightBlue500() -> MaterialColor { return MaterialColor(hexString: "03A9F4") }
    class func LightBlue600() -> MaterialColor { return MaterialColor(hexString: "039BE5") }
    class func LightBlue700() -> MaterialColor { return MaterialColor(hexString: "0288D1") }
    class func LightBlue800() -> MaterialColor { return MaterialColor(hexString: "0277BD") }
    class func LightBlue900() -> MaterialColor { return MaterialColor(hexString: "01579B") }
    class func LightBlueAccent100() -> MaterialColor { return MaterialColor(hexString: "80D8FF") }
    class func LightBlueAccent200() -> MaterialColor { return MaterialColor(hexString: "40C4FF") }
    class func LightBlueAccent400() -> MaterialColor { return MaterialColor(hexString: "00B0FF") }
    class func LightBlueAccent700() -> MaterialColor { return MaterialColor(hexString: "0091EA") }
    // CYAN
    class func Cyan50() -> MaterialColor { return MaterialColor(hexString: "E0F7FA") }
    class func Cyan100() -> MaterialColor { return MaterialColor(hexString: "B2EBF2") }
    class func Cyan200() -> MaterialColor { return MaterialColor(hexString: "80DEEA") }
    class func Cyan300() -> MaterialColor { return MaterialColor(hexString: "4DD0E1") }
    class func Cyan400() -> MaterialColor { return MaterialColor(hexString: "26C6DA") }
    class func Cyan500() -> MaterialColor { return MaterialColor(hexString: "00BCD4") }
    class func Cyan600() -> MaterialColor { return MaterialColor(hexString: "00ACC1") }
    class func Cyan700() -> MaterialColor { return MaterialColor(hexString: "0097A7") }
    class func Cyan800() -> MaterialColor { return MaterialColor(hexString: "00838F") }
    class func Cyan900() -> MaterialColor { return MaterialColor(hexString: "006064") }
    class func CyanAccent100() -> MaterialColor { return MaterialColor(hexString: "84FFFF") }
    class func CyanAccent200() -> MaterialColor { return MaterialColor(hexString: "18FFFF") }
    class func CyanAccent400() -> MaterialColor { return MaterialColor(hexString: "00E5FF") }
    class func CyanAccent700() -> MaterialColor { return MaterialColor(hexString: "00B8D4") }
    // TEAL
    class func Teal50() -> MaterialColor { return MaterialColor(hexString: "E0F2F1") }
    class func Teal100() -> MaterialColor { return MaterialColor(hexString: "B2DFDB") }
    class func Teal200() -> MaterialColor { return MaterialColor(hexString: "80CBC4") }
    class func Teal300() -> MaterialColor { return MaterialColor(hexString: "4DB6AC") }
    class func Teal400() -> MaterialColor { return MaterialColor(hexString: "26A69A") }
    class func Teal500() -> MaterialColor { return MaterialColor(hexString: "009688") }
    class func Teal600() -> MaterialColor { return MaterialColor(hexString: "00897B") }
    class func Teal700() -> MaterialColor { return MaterialColor(hexString: "00796B") }
    class func Teal800() -> MaterialColor { return MaterialColor(hexString: "00695C") }
    class func Teal900() -> MaterialColor { return MaterialColor(hexString: "004D40") }
    class func TealAccent100() -> MaterialColor { return MaterialColor(hexString: "A7FFEB") }
    class func TealAccent200() -> MaterialColor { return MaterialColor(hexString: "64FFDA") }
    class func TealAccent400() -> MaterialColor { return MaterialColor(hexString: "1DE9B6") }
    class func TealAccent700() -> MaterialColor { return MaterialColor(hexString: "00BFA5") }
    // GREEN
    class func Green50() -> MaterialColor { return MaterialColor(hexString: "E8F5E9") }
    class func Green100() -> MaterialColor { return MaterialColor(hexString: "C8E6C9") }
    class func Green200() -> MaterialColor { return MaterialColor(hexString: "A5D6A7") }
    class func Green300() -> MaterialColor { return MaterialColor(hexString: "81C784") }
    class func Green400() -> MaterialColor { return MaterialColor(hexString: "66BB6A") }
    class func Green500() -> MaterialColor { return MaterialColor(hexString: "4CAF50") }
    class func Green600() -> MaterialColor { return MaterialColor(hexString: "43A047") }
    class func Green700() -> MaterialColor { return MaterialColor(hexString: "388E3C") }
    class func Green800() -> MaterialColor { return MaterialColor(hexString: "2E7D32") }
    class func Green900() -> MaterialColor { return MaterialColor(hexString: "1B5E20") }
    class func GreenAccent100() -> MaterialColor { return MaterialColor(hexString: "B9F6CA") }
    class func GreenAccent200() -> MaterialColor { return MaterialColor(hexString: "69F0AE") }
    class func GreenAccent400() -> MaterialColor { return MaterialColor(hexString: "00E676") }
    class func GreenAccent700() -> MaterialColor { return MaterialColor(hexString: "00C853") }
    // LIGHTGREEN
    class func LightGreen50() -> MaterialColor { return MaterialColor(hexString: "F1F8E9") }
    class func LightGreen100() -> MaterialColor { return MaterialColor(hexString: "DCEDC8") }
    class func LightGreen200() -> MaterialColor { return MaterialColor(hexString: "C5E1A5") }
    class func LightGreen300() -> MaterialColor { return MaterialColor(hexString: "AED581") }
    class func LightGreen400() -> MaterialColor { return MaterialColor(hexString: "9CCC65") }
    class func LightGreen500() -> MaterialColor { return MaterialColor(hexString: "8BC34A") }
    class func LightGreen600() -> MaterialColor { return MaterialColor(hexString: "7CB342") }
    class func LightGreen700() -> MaterialColor { return MaterialColor(hexString: "689F38") }
    class func LightGreen800() -> MaterialColor { return MaterialColor(hexString: "558B2F") }
    class func LightGreen900() -> MaterialColor { return MaterialColor(hexString: "33691E") }
    class func LightGreenAccent100() -> MaterialColor { return MaterialColor(hexString: "CCFF90") }
    class func LightGreenAccent200() -> MaterialColor { return MaterialColor(hexString: "B2FF59") }
    class func LightGreenAccent400() -> MaterialColor { return MaterialColor(hexString: "76FF03") }
    class func LightGreenAccent700() -> MaterialColor { return MaterialColor(hexString: "64DD17") }
    // LIME
    class func Lime50() -> MaterialColor { return MaterialColor(hexString: "F9FBE7") }
    class func Lime100() -> MaterialColor { return MaterialColor(hexString: "F0F4C3") }
    class func Lime200() -> MaterialColor { return MaterialColor(hexString: "E6EE9C") }
    class func Lime300() -> MaterialColor { return MaterialColor(hexString: "DCE775") }
    class func Lime400() -> MaterialColor { return MaterialColor(hexString: "D4E157") }
    class func Lime500() -> MaterialColor { return MaterialColor(hexString: "CDDC39") }
    class func Lime600() -> MaterialColor { return MaterialColor(hexString: "C0CA33") }
    class func Lime700() -> MaterialColor { return MaterialColor(hexString: "AFB42B") }
    class func Lime800() -> MaterialColor { return MaterialColor(hexString: "9E9D24") }
    class func Lime900() -> MaterialColor { return MaterialColor(hexString: "827717") }
    class func LimeAccent100() -> MaterialColor { return MaterialColor(hexString: "F4FF81") }
    class func LimeAccent200() -> MaterialColor { return MaterialColor(hexString: "EEFF41") }
    class func LimeAccent400() -> MaterialColor { return MaterialColor(hexString: "C6FF00") }
    class func LimeAccent700() -> MaterialColor { return MaterialColor(hexString: "AEEA00") }
    // YELLOW
    class func Yellow50() -> MaterialColor { return MaterialColor(hexString: "FFFDE7") }
    class func Yellow100() -> MaterialColor { return MaterialColor(hexString: "FFF9C4") }
    class func Yellow200() -> MaterialColor { return MaterialColor(hexString: "FFF59D") }
    class func Yellow300() -> MaterialColor { return MaterialColor(hexString: "FFF176") }
    class func Yellow400() -> MaterialColor { return MaterialColor(hexString: "FFEE58") }
    class func Yellow500() -> MaterialColor { return MaterialColor(hexString: "FFEB3B") }
    class func Yellow600() -> MaterialColor { return MaterialColor(hexString: "FDD835") }
    class func Yellow700() -> MaterialColor { return MaterialColor(hexString: "FBC02D") }
    class func Yellow800() -> MaterialColor { return MaterialColor(hexString: "F9A825") }
    class func Yellow900() -> MaterialColor { return MaterialColor(hexString: "F57F17") }
    class func YellowAccent100() -> MaterialColor { return MaterialColor(hexString: "FFFF8D") }
    class func YellowAccent200() -> MaterialColor { return MaterialColor(hexString: "FFFF00") }
    class func YellowAccent400() -> MaterialColor { return MaterialColor(hexString: "FFEA00") }
    class func YellowAccent700() -> MaterialColor { return MaterialColor(hexString: "FFD600") }
    // AMBER
    class func Amber50() -> MaterialColor { return MaterialColor(hexString: "FFF8E1") }
    class func Amber100() -> MaterialColor { return MaterialColor(hexString: "FFECB3") }
    class func Amber200() -> MaterialColor { return MaterialColor(hexString: "FFE082") }
    class func Amber300() -> MaterialColor { return MaterialColor(hexString: "FFD54F") }
    class func Amber400() -> MaterialColor { return MaterialColor(hexString: "FFCA28") }
    class func Amber500() -> MaterialColor { return MaterialColor(hexString: "FFC107") }
    class func Amber600() -> MaterialColor { return MaterialColor(hexString: "FFB300") }
    class func Amber700() -> MaterialColor { return MaterialColor(hexString: "FFA000") }
    class func Amber800() -> MaterialColor { return MaterialColor(hexString: "FF8F00") }
    class func Amber900() -> MaterialColor { return MaterialColor(hexString: "FF6F00") }
    class func AmberAccent100() -> MaterialColor { return MaterialColor(hexString: "FFE57F") }
    class func AmberAccent200() -> MaterialColor { return MaterialColor(hexString: "FFD740") }
    class func AmberAccent400() -> MaterialColor { return MaterialColor(hexString: "FFC400") }
    class func AmberAccent700() -> MaterialColor { return MaterialColor(hexString: "FFAB00") }
    // ORANGE
    class func Orange50() -> MaterialColor { return MaterialColor(hexString: "FFF3E0") }
    class func Orange100() -> MaterialColor { return MaterialColor(hexString: "FFE0B2") }
    class func Orange200() -> MaterialColor { return MaterialColor(hexString: "FFCC80") }
    class func Orange300() -> MaterialColor { return MaterialColor(hexString: "FFB74D") }
    class func Orange400() -> MaterialColor { return MaterialColor(hexString: "FFA726") }
    class func Orange500() -> MaterialColor { return MaterialColor(hexString: "FF9800") }
    class func Orange600() -> MaterialColor { return MaterialColor(hexString: "FB8C00") }
    class func Orange700() -> MaterialColor { return MaterialColor(hexString: "F57C00") }
    class func Orange800() -> MaterialColor { return MaterialColor(hexString: "EF6C00") }
    class func Orange900() -> MaterialColor { return MaterialColor(hexString: "E65100") }
    class func OrangeAccent100() -> MaterialColor { return MaterialColor(hexString: "FFD180") }
    class func OrangeAccent200() -> MaterialColor { return MaterialColor(hexString: "FFAB40") }
    class func OrangeAccent400() -> MaterialColor { return MaterialColor(hexString: "FF9100") }
    class func OrangeAccent700() -> MaterialColor { return MaterialColor(hexString: "FF6D00") }
    // DEEPORANGE
    class func DeepOrange50() -> MaterialColor { return MaterialColor(hexString: "FBE9E7") }
    class func DeepOrange100() -> MaterialColor { return MaterialColor(hexString: "FFCCBC") }
    class func DeepOrange200() -> MaterialColor { return MaterialColor(hexString: "FFAB91") }
    class func DeepOrange300() -> MaterialColor { return MaterialColor(hexString: "FF8A65") }
    class func DeepOrange400() -> MaterialColor { return MaterialColor(hexString: "FF7043") }
    class func DeepOrange500() -> MaterialColor { return MaterialColor(hexString: "FF5722") }
    class func DeepOrange600() -> MaterialColor { return MaterialColor(hexString: "F4511E") }
    class func DeepOrange700() -> MaterialColor { return MaterialColor(hexString: "E64A19") }
    class func DeepOrange800() -> MaterialColor { return MaterialColor(hexString: "D84315") }
    class func DeepOrange900() -> MaterialColor { return MaterialColor(hexString: "BF360C") }
    class func DeepOrangeAccent100() -> MaterialColor { return MaterialColor(hexString: "FF9E80") }
    class func DeepOrangeAccent200() -> MaterialColor { return MaterialColor(hexString: "FF6E40") }
    class func DeepOrangeAccent400() -> MaterialColor { return MaterialColor(hexString: "FF3D00") }
    class func DeepOrangeAccent700() -> MaterialColor { return MaterialColor(hexString: "DD2C00") }
    // BROWN
    class func Brown50() -> MaterialColor { return MaterialColor(hexString: "EFEBE9") }
    class func Brown100() -> MaterialColor { return MaterialColor(hexString: "D7CCC8") }
    class func Brown200() -> MaterialColor { return MaterialColor(hexString: "BCAAA4") }
    class func Brown300() -> MaterialColor { return MaterialColor(hexString: "A1887F") }
    class func Brown400() -> MaterialColor { return MaterialColor(hexString: "8D6E63") }
    class func Brown500() -> MaterialColor { return MaterialColor(hexString: "795548") }
    class func Brown600() -> MaterialColor { return MaterialColor(hexString: "6D4C41") }
    class func Brown700() -> MaterialColor { return MaterialColor(hexString: "5D4037") }
    class func Brown800() -> MaterialColor { return MaterialColor(hexString: "4E342E") }
    class func Brown900() -> MaterialColor { return MaterialColor(hexString: "3E2723") }
    // GREY
    class func Grey50() -> MaterialColor { return MaterialColor(hexString: "FAFAFA") }
    class func Grey100() -> MaterialColor { return MaterialColor(hexString: "F5F5F5") }
    class func Grey200() -> MaterialColor { return MaterialColor(hexString: "EEEEEE") }
    class func Grey300() -> MaterialColor { return MaterialColor(hexString: "E0E0E0") }
    class func Grey400() -> MaterialColor { return MaterialColor(hexString: "BDBDBD") }
    class func Grey500() -> MaterialColor { return MaterialColor(hexString: "9E9E9E") }
    class func Grey600() -> MaterialColor { return MaterialColor(hexString: "757575") }
    class func Grey700() -> MaterialColor { return MaterialColor(hexString: "616161") }
    class func Grey800() -> MaterialColor { return MaterialColor(hexString: "424242") }
    class func Grey900() -> MaterialColor { return MaterialColor(hexString: "212121") }
    // BLUEGREY
    class func BlueGrey50() -> MaterialColor { return MaterialColor(hexString: "ECEFF1") }
    class func BlueGrey100() -> MaterialColor { return MaterialColor(hexString: "CFD8DC") }
    class func BlueGrey200() -> MaterialColor { return MaterialColor(hexString: "B0BEC5") }
    class func BlueGrey300() -> MaterialColor { return MaterialColor(hexString: "90A4AE") }
    class func BlueGrey400() -> MaterialColor { return MaterialColor(hexString: "78909C") }
    class func BlueGrey500() -> MaterialColor { return MaterialColor(hexString: "607D8B") }
    class func BlueGrey600() -> MaterialColor { return MaterialColor(hexString: "546E7A") }
    class func BlueGrey700() -> MaterialColor { return MaterialColor(hexString: "455A64") }
    class func BlueGrey800() -> MaterialColor { return MaterialColor(hexString: "37474F") }
    class func BlueGrey900() -> MaterialColor { return MaterialColor(hexString: "263238") }
    // BLACK
    class func Black() -> MaterialColor { return MaterialColor(hexString: "000") }
    // WHITE
    class func White() -> MaterialColor { return MaterialColor(hexString: "FFF") }
    
    // MARK: TextColor
    enum TextPriority {
        case Primary, Secondary, Disabled
    }
    // DARK
    class func TextColorOnDarkBackgroundWithTextPriority(priority: TextPriority) -> MaterialColor {
        switch priority {
        case .Primary:
            return MaterialColor(hexString: "DE000000")
        case .Secondary:
            return MaterialColor(hexString: "8D000000")
        case .Disabled:
            return MaterialColor(hexString: "59000000")
        }
    }
    // LIGHT
    class func TextColorOnLightBackgroundWithTextPriority(priority: TextPriority) -> MaterialColor {
        switch priority {
        case .Primary:
            return MaterialColor(hexString: "FFFFFFFF")
        case .Secondary:
            return MaterialColor(hexString: "B3FFFFFF")
        case .Disabled:
            return MaterialColor(hexString: "80FFFFFF")
        }
    }
    
    // MARK: ColorPalette
    struct ColorPalette {
        var primaryColor: MaterialColor = MaterialColor.Purple500()
        var secondPrimaryColor: MaterialColor = MaterialColor.Purple700()
        var thirdPrimaryColor: MaterialColor = MaterialColor.Purple800()
        var accentColor: MaterialColor = MaterialColor.GreenAccent200()
    }
}