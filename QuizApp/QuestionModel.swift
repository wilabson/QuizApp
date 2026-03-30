//
//  QuestionModel.swift
//  QuizApp
//
//  Created by Stina Thun on 2026-03-29.
//

import Foundation

struct Question: Identifiable {
    let id = UUID()
    let questionText: String
    let options: [String]
    let correctIndex: Int
    
    var correctAnswer: String {
        options[correctIndex]
    }
}

enum QuizPhase {
    case start
    case quiz
    case result
}

extension Question {
    static var allQuestions: [Question] = [

        Question(
            questionText: "Vilken sprit är huvudingrediensen i en Margarita?",
            options: ["Rom", "Vodka", "Tequila", "Gin"],
            correctIndex: 2),

        Question(
            questionText: "Vad kallas cocktailen som innehåller vodka, kahlúa och grädde?",
            options: ["White Russian", "Black Russian", "Espresso Martini", "Mudslide"],
            correctIndex: 0),

        Question(
            questionText: "Vilket land är Mojito ursprungligen från?",
            options: ["Brasilien", "Mexiko", "Kuba", "Jamaica"],
            correctIndex: 2),

        Question(
            questionText: "Vilken ingrediens ger en Cosmopolitan sin rosa färg?",
            options: ["Grenadine", "Tranbärsjuice", "Rödvin", "Campari"],
            correctIndex: 1),

        Question(
            questionText: "Vad är huvudsprit i en Negroni?",
            options: ["Vodka", "Rum", "Gin", "Whisky"],
            correctIndex: 2),

        Question(
            questionText: "Vilket mått kallas ofta en 'shot'?",
            options: ["2 cl", "4 cl", "6 cl", "8 cl"],
            correctIndex: 1),

        Question(
            questionText: "Vilken drink görs på bourbon, mintblad, socker och krossad is?",
            options: ["Old Fashioned", "Mint Julep", "Whiskey Sour", "Manhattan"],
            correctIndex: 1),

        Question(
            questionText: "Vad heter den klassiska champagnecocktailen med persikopuré?",
            options: ["Kir Royale", "French 75", "Mimosa", "Bellini"],
            correctIndex: 3),

        Question(
            questionText: "Vad innehåller en klassisk Old Fashioned?",
            options: ["Gin, vermouth, bitters", "Bourbon, socker, bitters", "Rum, lime, socker", "Vodka, juice, bitters"],
            correctIndex: 1),

        Question(
            questionText: "Vilken sprit används i en Daiquiri?",
            options: ["Rom", "Vodka", "Tequila", "Gin"],
            correctIndex: 0),

        Question(
            questionText: "Vad är Aperol Spritz gjord på?",
            options: ["Campari, prosecco, vatten", "Aperol, prosecco, sodavatten", "Aperol, gin, tonic", "Campari, gin, lime"],
            correctIndex: 1),

        Question(
            questionText: "Vilken drink kombinerar Kahlúa och vodka utan grädde?",
            options: ["White Russian", "Black Russian", "Espresso Martini", "Mudslide"],
            correctIndex: 1),

        Question(
            questionText: "Vilket land är gin ursprungligen uppfunnen i?",
            options: ["England", "Skottland", "Nederländerna", "Irland"],
            correctIndex: 2),

        Question(
            questionText: "Vad heter en drink med vodka, ingefärsbeer och lime?",
            options: ["Dark 'n' Stormy", "Moscow Mule", "Tom Collins", "Paloma"],
            correctIndex: 1),

        Question(
            questionText: "Vilken frukt används i en klassisk Caipirinha?",
            options: ["Lime", "Citron", "Apelsin", "Grapefrukt"],
            correctIndex: 0),

        Question(
            questionText: "Vad kallas spritdrycken i en Caipirinha?",
            options: ["Cachaca", "Rom", "Tequila", "Pisco"],
            correctIndex: 0),

        Question(
            questionText: "Vilken drink är känd som 'James Bond's drink'?",
            options: ["Negroni", "Old Fashioned", "Vesper Martini", "Manhattan"],
            correctIndex: 2),

        Question(
            questionText: "Vad innehåller en Singapore Sling?",
            options: ["Vodka, lime, soda", "Gin, körsbärsbrandy, ananas", "Rum, mint, socker", "Tequila, triple sec, lime"],
            correctIndex: 1),

        Question(
            questionText: "Vad heter blandningen av Campari, söt vermouth och gin?",
            options: ["Boulevardier", "Negroni", "Americano", "Sbagliato"],
            correctIndex: 1),

        Question(
            questionText: "Vilken drink görs på tequila, grapefruktjuice och sodavatten?",
            options: ["Margarita", "Paloma", "Tequila Sunrise", "Tommy's Margarita"],
            correctIndex: 1),

        Question(
            questionText: "Vad är huvudingrediensen i en Pina Colada?",
            options: ["Tequila och lime", "Vodka och ananas", "Rom, kokos och ananas", "Gin och passionsfrukt"],
            correctIndex: 2),

        Question(
            questionText: "Vilket land är Campari tillverkat i?",
            options: ["Frankrike", "Spanien", "Italien", "Österrike"],
            correctIndex: 2),

        Question(
            questionText: "Vilken drink består av vodka, apelsinjuice och Galliano?",
            options: ["Harvey Wallbanger", "Screwdriver", "Tequila Sunrise", "Sex on the Beach"],
            correctIndex: 0),

        Question(
            questionText: "Vad är en 'dry' martini?",
            options: ["Mer vermouth", "Mindre vermouth", "Ingen sprit", "Med citronjuice"],
            correctIndex: 1),

        Question(
            questionText: "Vilken drink görs på whisky, honung och citron?",
            options: ["Whiskey Sour", "Gold Rush", "Bee's Knees", "Penicillin"],
            correctIndex: 1),

        Question(
            questionText: "Vad kallas det när man tillsätter grädde ovanpå en drink utan att röra om?",
            options: ["Shaking", "Stirring", "Floating", "Muddling"],
            correctIndex: 2),

        Question(
            questionText: "Vilken drink innehåller Bailey's, Kahlúa och vodka?",
            options: ["White Russian", "Mudslide", "B-52", "Toblerone"],
            correctIndex: 1),

        Question(
            questionText: "Vad heter tekniken att krossa frukt och örter i ett glas?",
            options: ["Shaking", "Floating", "Muddling", "Stirring"],
            correctIndex: 2),

        Question(
            questionText: "Vilken sprit är en Whiskey Sour gjord på?",
            options: ["Bourbon eller Rye", "Scotch whisky", "Irländsk whiskey", "Japansk whisky"],
            correctIndex: 0),

        Question(
            questionText: "Vad kallas en Negroni gjord med prosecco istället för gin?",
            options: ["Negroni Bianco", "Negroni Sbagliato", "Americano", "Boulevardier"],
            correctIndex: 1),

        Question(
            questionText: "Vilket land producerar Angostura bitters?",
            options: ["Venezuela", "Trinidad och Tobago", "Barbados", "Jamaica"],
            correctIndex: 1),

        Question(
            questionText: "Vad heter drinken som görs på vodka, passionsfrukt och vanilj?",
            options: ["Passion Sling", "Pornstar Martini", "Passion Punch", "Exotic Martini"],
            correctIndex: 1),

        Question(
            questionText: "Vilken drink innehåller Midori (melonlikör)?",
            options: ["Japanese Slipper", "Midori Sour", "Melon Ball", "Alla ovanstående"],
            correctIndex: 3),

        Question(
            questionText: "Vad kallas ett glas utan fot eller stam?",
            options: ["Highball", "Tumbler", "Coupe", "Snifter"],
            correctIndex: 1),

        Question(
            questionText: "Vilken drink blandas med äggvita för ett skummigt lager?",
            options: ["Daiquiri", "Whiskey Sour", "Tom Collins", "Gimlet"],
            correctIndex: 1),

        Question(
            questionText: "Vad heter drinken gjord på bourbon, söt vermouth och bitters?",
            options: ["Rob Roy", "Manhattan", "Sazerac", "Vieux Carré"],
            correctIndex: 1),

        Question(
            questionText: "Vad kallas en cocktail serverad utan is?",
            options: ["On the rocks", "Straight up", "Neat", "Frozen"],
            correctIndex: 1),
        
        Question(
            questionText: "Vilket likör är blå och används i Blue Lagoon?",
            options: ["Blue Curaçao", "Blå sambuca", "Hypnotiq", "Blue Raspberry"],
            correctIndex: 0),

        Question(
            questionText: "Vad innehåller en klassisk French 75?",
            options: ["Vodka och champagne", "Gin, citron, socker och champagne", "Cognac och prosecco", "Tequila och cava"],
            correctIndex: 1),

        Question(
            questionText: "Vilken drink görs traditionellt på mörk rom och cola?",
            options: ["Cuba Libre", "Dark 'n' Stormy", "Rum Punch", "Zombie"],
            correctIndex: 0),

        Question(
            questionText: "Vad heter tekniken att hälla en drink över en stor isbit?",
            options: ["On the rocks", "Building", "Straining", "Layering"],
            correctIndex: 0),

        Question(
            questionText: "Vilket land är Aperol från?",
            options: ["Frankrike", "Spanien", "Italien", "Portugal"],
            correctIndex: 2),

        Question(
            questionText: "Vad kallas en martini gjord med äppeljuice eller -likör?",
            options: ["Green Apple Martini", "Appletini", "Orchard Martini", "Apple Drop"],
            correctIndex: 1),

        Question(
            questionText: "Vilken drink görs på bourbon, ingefärsbeer och persika?",
            options: ["Georgia Mule", "Southern Mule", "Peach Julep", "Kentucky Mule"],
            correctIndex: 3),

        Question(
            questionText: "Vad heter den japanska risspriten som används i en Sake Bomb?",
            options: ["Shochu", "Sake", "Soju", "Mirin"],
            correctIndex: 1),

        Question(
            questionText: "Vilket glas används traditionellt till en Martini?",
            options: ["Coupe", "V-format cocktailglas", "Highball", "Nick and Nora"],
            correctIndex: 1),
        
        ]
}
