// The MIT License (MIT)
//
// ModernAVPlayer
// Copyright (c) 2018 Raphael Ankierman <raphael.ankierman@radiofrance.com>
//
// MockModernAVPlayerExposable.swift
// Created by raphael ankierman on 17/08/2018.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import AVFoundation
@testable import ModernAVPlayer

final class MockModernAVPlayerExposable: ModernAVPlayerExposable {
    var player: AVPlayer
    
    var state: ModernAVPlayer.State
    
    init(player: AVPlayer, state: ModernAVPlayer.State) {
        self.player = player
        self.state = state
    }
    
    private(set) var loadMediaCallCount = 0
    func loadMedia(media: PlayerMedia, autostart: Bool, position: Double?) {
        loadMediaCallCount += 1
    }
    
    private(set) var pauseCallCount = 0
    func pause() {
        pauseCallCount += 1
    }
    
    private(set) var playCallCount = 0
    func play() {
        playCallCount += 1
    }
    
    private(set) var seekCallCount = 0
    func seek(position: Double) {
        seekCallCount += 1
    }
    
    private(set) var stopCallCount = 0
    func stop() {
        stopCallCount += 1
    }
    
    private(set) var updateNowPlayingInfoCallCount = 0
    func updateNowPlayingInfo(metadata: PlayerMediaMetadata) {
        updateNowPlayingInfoCallCount += 1
    }
}
