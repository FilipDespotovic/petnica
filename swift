var rec = readLine(strippingNewline: true)!
var lista = [ "a" : 0 ]
for c in rec {
  if (lista[String(c)] != nil) {
      let vrednost = lista[String(c)]
      lista[String(c)] = vrednost! + 1
  }
  else { lista[String(c)] = 1 }
}

for (a, b) in lista {
  if b > 0 {
    print("\(a) : \(b)")
  }
 }
 
 ---------------------------------
 import Foundation
var rec = readLine(strippingNewline: true)!

var lista = [1 : 0]

for c in rec {
  let s = String(c)
  if let someint = Int(s) {
    if (lista[someint] != nil) {
      let broj = lista[someint] 
      lista[someint] = broj! + 1
    }
    else {
      lista[someint] = 1
    }
  }
}

for (kljuc, vrednost) in lista {
  let a = String(kljuc)
  let b = String(vrednost)
  if vrednost > 0 {
    print(" \(a) : \(b)")
  }
}

-----------------------------------

import Foundation


struct Movie : Codable {
  var Title: String
  var Year: String
}

struct Movies : Codable {
  var Search : [Movie]
}

var film = ""

if let linija = readLine() {
  film = linija 
}

let urlString = "https://www.omdbapi.com/?s=" + film + "&apikey=9dbcc5eb"

var sadrzaj = ""

if let url = URL (string: urlString) {
  do {
    let content = try String(contentsOf: url, encoding: .utf8) 
    sadrzaj = content
  }
  catch {
    print("Greska")
  } 
}

if let jsonData = sadrzaj.data(using: .utf8) {
    let movies = try? JSONDecoder().decode(Movies.self, from:jsonData)
    if let d = movies {
      for i in d.Search {
        print("\(i.Title) \(i.Year)")
      }
    }
    else {
      print("Nece") 
    }
}
--------------------------------------



































