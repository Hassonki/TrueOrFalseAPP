//
//  Question.swift
//  TrueOrFalse
//
//  Created by Hassan Hussin on 2022-11-18.
//

import Foundation

struct Question: Hashable { //lägg till hashable för att kunna göra om object till key 
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "UDP segment innehåller sekvensnummer", possibleAnswers: ["True","False"], correctAnswerIndex: 1),
        
        Question(questionText: "En dator får sin Ethernetadress från en DHCP-server", possibleAnswers: ["True" , "False"], correctAnswerIndex: 1),
        
        Question(questionText: "En router skickar endast vidare de paket som skall till ett annat nät", possibleAnswers: ["True" , "False"], correctAnswerIndex: 1),
        
        Question(questionText: "Ett ICMP skickas alltid tillbaka hela vägen till avsändaren", possibleAnswers: ["True" , "False"], correctAnswerIndex: 0),
        
        Question(questionText: "FDM är en analog multiplexeringsteknik som kombinerar analoga signaler", possibleAnswers: ["True" , "False"], correctAnswerIndex: 0),
        
        Question(questionText: "Jitter innebär att fördröjningen mellan en sändare och mottagare varierar så att det tar olika tid för paketen att komma fram", possibleAnswers: ["True" , "False"], correctAnswerIndex: 0),
        
        Question(questionText: "Inom köteorin anger μ medeltiden mellan två betjäningar", possibleAnswers: ["True" , "False"], correctAnswerIndex: 1),
        
        Question(questionText: "LEO-satelliter används till exempel för GPS", possibleAnswers: ["True" , "False"], correctAnswerIndex: 1),
        
        Question(questionText: "LINUX-kommandot ifconfig (som användes i laboration) visar vilka nätverkskort som datorn har och vilka Ethernet- respektive IP- adresser som de har", possibleAnswers: ["True" , "False"], correctAnswerIndex: 0),
        
        Question(questionText: "ARP gör det möjligt för en dator att ta reda på Ethernetadressen för vilken annan dator som helst på Internet", possibleAnswers: ["True" , "False"], correctAnswerIndex: 1),
        
        Question(questionText: "På en ADSL-ledning är frekvensutrymmet för tal mindre än frekvens- utrymmet för uppströmsdata", possibleAnswers: ["True" , "False"], correctAnswerIndex: 0),
        
        Question(questionText: "I ett IP-nätverk kan en router använda HTTP för att bestämma när ett paket skall skickas", possibleAnswers: ["True" , "False"], correctAnswerIndex: 1),
        
        Question(questionText: "WiMAX används ofta som trådlöst nätverk för att koppla ihop ter- minaler inom hemmet eller i bilen", possibleAnswers: ["True" , "False"], correctAnswerIndex: 1),
        
        Question(questionText: "En hub skickar endast vidare de paket som skall till ett annat nät", possibleAnswers: ["True" , "False"], correctAnswerIndex: 1),
        
        Question(questionText: "Inom köteorin anger λ medeltiden mellan två ankomster", possibleAnswers: ["True" , "False"], correctAnswerIndex: 1),
        
        Question(questionText: "MEO-satelliter används till exempel för GPS", possibleAnswers: ["True" , "False"], correctAnswerIndex: 0),
        
        Question(questionText: "En sessionsfilter-brandvägg arbetar på nätverks- och transportlagret", possibleAnswers: ["True" , "False"], correctAnswerIndex: 1),
        
        Question(questionText: "Ett autonomt nätverk arbetar bara med virtual circuit-kopplingar", possibleAnswers: ["True" , "False"], correctAnswerIndex: 1),
    ]
}
