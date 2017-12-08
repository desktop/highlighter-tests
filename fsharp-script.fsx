open System.IO
open System.Runtime.Remoting

#if INTERACTIVE
#r @"System.Xml"
#endif

open System.Xml

type MyDiscriminatedUnion =
    | SyntaxHighlighter of string
    | SomeOtherCase

let doc = XmlDocument()
doc.Load(System.IO.File.Open("./fsharp-proj.fsproj", FileMode.Open, FileAccess.Read))

// I trust comments are valid, too.
let someValue = SyntaxHighlighter "fsharp"

someValue.GetHashCode() > 0
