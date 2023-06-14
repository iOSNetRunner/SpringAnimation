//
//  Animation.swift
//  SpringAnimations
//
//  Created by Dmitrii Galatskii on 14.06.2023.
//


struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimations() -> [Animation] {
        let titles = DataStore.shared.titles.shuffled()
        let curves = DataStore.shared.curves.shuffled()
        
        var generatedAnimations: [Animation] = []
        
        for index in 1...10 {
            let animation = Animation(
                preset: titles[index],
                curve: curves[index],
                force: Double.random(in: 1...5),
                duration: Double.random(in: 1.0...1.5),
                delay: Double.random(in: 0.1...0.5)
                )
            
            generatedAnimations.append(animation)
        }
        
        return generatedAnimations
    }
}
