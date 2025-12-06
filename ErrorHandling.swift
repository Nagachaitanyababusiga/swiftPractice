enum FileError: Error{
    case fileNotFound
    case corrupted
    case unreadable
}

func readFile(string : String) throws -> String{
    if(string==""){
        throw FileError.fileNotFound
    }else if(string.hasSuffix(".com")){
        throw FileError.corrupted
    }else if(!string.hasSuffix(".txt")){
        throw FileError.unreadable
    }
    return "File is found"
}

do{
    var path: String = "File.txt"
    path = ""
    path = "File.com"
    path = "hello"
    let status = try readFile(string: path);
    print(status);
}catch FileError.fileNotFound{
    print("File not found")
}catch FileError.corrupted{
    print("File is corrupted")
}catch FileError.unreadable{
    print("File is not readable")
}catch{
    print("There is some un-identified error")
}

