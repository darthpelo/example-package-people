@testable import PlayingCardTestSuite

import XCTest

XCTMain([testCase(CardTests.allTests),
         testCase(RankTests.allTests),
         testCase(SuitTests.allTests)
        ])
