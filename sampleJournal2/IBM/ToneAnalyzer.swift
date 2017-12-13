//
//  ToneAnalyzer.swift
//  BackEndModels
//
//  TODO - ANDREW: give a description of what this class does
//  TODO - ANDREW: provide more documentation on what the code does
//

import Foundation
import ToneAnalyzerV3

struct Tones{
    
//    private let userName:String
//    private let password:String
//    private let version:String
    private let ToneAnalyzes:ToneAnalyzer
    
    
    
    init(userName: String, password: String,version:String) {
//        self.userName = userName
//        self.password = password
//        self.version = version
        ToneAnalyzes = ToneAnalyzer(
            username: userName,
            password: password,
            version: version
        )
        
    }
    
    func getTones(textToBeAnalyzed textToBeProcessed: String) {
        let failure = { (error: Error) in print(error) }
        ToneAnalyzes.getTone(ofText: textToBeProcessed, failure: failure) { toneAnalysis in
            for i in toneAnalysis.documentTone{
                print(i.categoryID)
                print(i.name)
                for t in i.tones{
                    print(t)
                }
                
            }
        }
    
    
  
    
    
    
 
    
  
    
    
    
    
    
    
}

}
