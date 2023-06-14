//
//  Datastore.swift
//  SpringAnimations
//
//  Created by Dmitrii Galatskii on 14.06.2023.
//


final class DataStore {
    static let shared = DataStore()
    
    let titles = ["pop",
                  "slideLeft",
                  "slideRight",
                  "slideDown",
                  "slideUp",
                  "squeezeLeft",
                  "squeezeRight",
                  "squeezeDown",
                  "squeezeUp",
                  "fadeIn",
                  "fadeOut",
                  "fadeOutIn",
                  "fadeInLeft",
                  "fadeInRight",
                  "fadeInDown",
                  "fadeInUp",
                  "zoomIn",
                  "zoomOut",
                  "fall",
                  "shake",
                  "morph",
                  "squeeze",
                  "flash",
                  "wobble"]
    
    let curves = ["easeIn",
                  "easeOut",
                  "easeInOut",
                  "linear",
                  "spring",
                  "easeInSine",
                  "easeOutSine",
                  "easeInOutSine",
                  "easeInQuad",
                  "easeOutQuad",
                  "easeInOutQuad",
                  "easeInCubic",
                  "easeOutCubic",
                  "easeInOutCubic",
                  "easeInQuart",
                  "easeOutQuart",
                  "easeInOutQuart",
                  "easeInQuint",
                  "easeOutQuint",
                  "easeInOutQuint",
                  "easeInExpo",
                  "easeOutExpo",
                  "easeInOutExpo",
                  "easeInCirc",
                  "easeOutCirc",
                  "easeInOutCirc",
                  "easeInBack",
                  "easeOutBack",
                  "easeInOutBack"]
    
    private init() { }
}
