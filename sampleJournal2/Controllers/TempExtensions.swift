//
//  TempExtensions.swift
//  599 Prototype
//
//  Colours for various sentiments are defined in this class.
//  These colours are used to colour text in JournalDetailsViewController.
//
//  TODO - ANDREW: why is this class called TempExtensions? Why 'temp'?

import Foundation
import UIKit

extension String{
    
    var UIColorEmotion:UIColor? {
        get{
            switch self{
            case "anger":
                return UIColor(red: 237/255, green: 101/255, blue: 128/255, alpha: 1.0)
            case "disgust":
                return UIColor(red: 187/255, green: 229/255, blue: 107/255, alpha: 1.0)
            case "joy":
                return UIColor(red: 245/255, green: 211/255, blue: 83/255, alpha: 1.0)
            case "surprise":
                return UIColor(red: 240/255, green: 136/255, blue: 100/255, alpha: 1.0)
            case "sadness":
                return UIColor(red: 122/255, green: 211/255, blue: 251/255, alpha: 1.0)
            case "fear":
                return UIColor(red: 165/255, green: 139/255, blue: 212/255, alpha: 1.0)
            default:
                return nil
            }
        }
    }
}

extension Dictionary{
    func csvOfTwoColoumToDictioanry(fileName fileToOpen: String, typeOfFile fileType: String ) throws -> [String:String]  {
        guard let filepath = Bundle.main.path(forResource: fileToOpen, ofType: fileType)
            else {
                throw "File not found"
        }
        //        var dict = [String: String]()
        var dict = self as! [String:String]
        let url = URL(fileURLWithPath: filepath)
        do {
            let file = try String(contentsOf: url)
            let rows = file.components(separatedBy: .newlines)
            for row in rows {
                if (String(row) != ""){
                    let fields = row.split(separator: ",")
                    dict[String(fields[0])] = String(fields[1])
                }
            }
            
        } catch {
            print(error)
        }
        return dict
    }
}




