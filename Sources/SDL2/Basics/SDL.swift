//
//  SDL.swift
//  
//
//  Created by David Green on 3/23/22.
//

import CSDL2Wrapped

/// These are the flags that may be passed to SDL.Init(). You should
/// Specify the subsystems which you will be using in your application.
public struct SDLInitFlags: OptionSet {
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    public let rawValue: UInt32

    public static let timer = SDLInitFlags(rawValue: SDL_INIT_TIMER)
    public static let audio = SDLInitFlags(rawValue: SDL_INIT_AUDIO)
    public static let video = SDLInitFlags(rawValue: SDL_INIT_VIDEO) // .video implies .events
    public static let joystick = SDLInitFlags(rawValue: SDL_INIT_JOYSTICK) // .joystick implies .events
    public static let haptic = SDLInitFlags(rawValue: SDL_INIT_HAPTIC)
    /// Implies ``SDLInitFlags/``
    public static let gameController = SDLInitFlags(rawValue: SDL_INIT_GAMECONTROLLER)
    public static let events = SDLInitFlags(rawValue: SDL_INIT_EVENTS)
    public static let sensor = SDLInitFlags(rawValue: SDL_INIT_SENSOR)
    public static let noparachute = SDLInitFlags(rawValue: SDL_INIT_NOPARACHUTE)


    public static let everything: SDLInitFlags = [.timer, .audio, .video]
}
