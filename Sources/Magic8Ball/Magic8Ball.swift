@main
public struct Magic8Ball {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(Magic8Ball().text)
    }
}
