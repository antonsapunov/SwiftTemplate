import Foundation

let templateName = "Module MVP.xctemplate"
let destinationRelativePath = "/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File Templates/Custom Templates"

func printInConsole(_ message:Any) {
    print("====================================")
    print("\(message)")
    print("====================================")
}

func moveTemplate() {

    guard CommandLine.arguments.count > 1 else {
        printInConsole("❌  Ooops! Something went wrong 😡 : add path to template folder")
        return
    }
    
    let fileManager = FileManager.default
    let templatePath = CommandLine.arguments[1]
    let destinationPath = bash(command: "xcode-select", arguments: ["--print-path"]).appending(destinationRelativePath)
    do {
        if !fileManager.fileExists(atPath: destinationPath) {
            printInConsole("\(destinationPath)")
            try fileManager.createDirectory(atPath: destinationPath, withIntermediateDirectories: true, attributes: nil)
        }
        if !fileManager.fileExists(atPath:"\(destinationPath)/\(templateName)") {
            try fileManager.copyItem(atPath: templatePath, toPath: "\(destinationPath)/\(templateName)")
            printInConsole("✅  Template installed succesfully 🎉. Enjoy it 🙂")
            
        } else {
            
            try _ = fileManager.replaceItemAt(URL(fileURLWithPath:"\(destinationPath)/\(templateName)"), withItemAt: URL(fileURLWithPath:templatePath))
            printInConsole("✅  Template already exists. So has been replaced succesfully 🎉. Enjoy it 🙂")
        }
    } catch let error as NSError {
        printInConsole("❌  Ooops! Something went wrong 😡 : \(error)")
    }
}

func shell(launchPath: String, arguments: [String]) -> String {
    let task = Process()
    task.launchPath = launchPath
    task.arguments = arguments
    
    let pipe = Pipe()
    task.standardOutput = pipe
    task.launch()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: String.Encoding.utf8)!
    if output.count > 0 {
        //remove newline character.
        let lastIndex = output.index(before: output.endIndex)
        return String(output[output.startIndex ..< lastIndex])
    }
    return output
}

func bash(command: String, arguments: [String]) -> String {
    let whichPathForCommand = shell(launchPath: "/bin/bash", arguments: [ "-l", "-c", "which \(command)" ])
    return shell(launchPath: whichPathForCommand, arguments: arguments)
}

moveTemplate()
