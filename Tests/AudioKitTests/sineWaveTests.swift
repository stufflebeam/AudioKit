// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/

import AudioKit

class SineWaveTests: AKTestCase {

    let sine = AKOperationGenerator { _ in return AKOperation.sineWave() }

    override func setUp() {
        afterStart = { self.sine.start() }
        duration = 1.0
    }

    func testDefault() {
        output = sine
        AKTest()
    }

}
