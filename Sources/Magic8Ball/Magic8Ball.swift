@main
public struct Magic8Ball {
    public static func main() {
        // All the answers the Magic 8 Ball knows
        let answers: [String] = [
            "It is certain", "Reply hazy, try again",
            "Don’t count on it", "It is decidedly so",
            "Ask again later", "My reply is no",
            "Without a doubt", "Better not tell you now",
            "My sources say no", "Yes definitely",
            "Cannot predict now", "Outlook not so good",
            "You may rely on it", "Concentrate and ask again",
            "Very doubtful", "As I see it, yes",
            "Most likely", "Outlook good",
            "Yes", "Signs point to yes"]
        
        // Introduction to user
        print("\nHey there! I'm your friendly neighborhood Magic 8 Ball."
              + "\nI've got answers to all of your questions."
              + "\nWhy don't you take me for a spin?")
        print("\nTo shake me up, you'll need to think of a question first."
              + "\nGot one? Good!"
              + "\n\nNow, hold it in your mind. Concentrate on it.")
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) ??

        
        print("\n\nOkay. Ready? Let's do this!\n")
        
        // The loop in which we give answers and prompt for user input
        var shouldQuit: Bool = false
        while !shouldQuit {
            print("\nShaking...")
            print("\nShaking........")
            print("\nShaking.................\n\n\n")
            
            print("Ah! Yes! I have your answer...\n\n")
            print("~~~~~~~~")
            print(answers.randomElement() ?? "\nCome back later")
            print("~~~~~~~~")
            
            // Prompt user to continue or exit
            print("\nWould you like to ask something else?\n('y' to go again, 'n' to quit)")
            
            if let input = readLine() {
                switch input {
                case "y", "yes":
                    continue
                case "n", "no", "q", "exit":
                    shouldQuit = true
                default:
                    print("\nI'll take that as a yes.\n")
                }
            }
        }
        
        // Exiting the program
        print("\n\n\nI hope you found the answer you were looking for. Goodbye!")
    }
}
