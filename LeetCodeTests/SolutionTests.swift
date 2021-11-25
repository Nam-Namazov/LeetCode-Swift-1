//
//  SolutionTests.swift
//  LeetCodeTests
//
//  Created by Nihad on 11/20/21.
//

import XCTest
@testable import LeetCode

class SolutionTests: XCTestCase {

    var sut: Solution!

    override func setUp() {
        super.setUp()
        sut = Solution()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testSolution_minPathSum() {
        // given
        let matrix1 = [[1, 3 ,1], [1, 5, 1], [4, 2, 1]]
        let matrix2 = [[1, 2, 3], [4, 5, 6]]

        // when
        let result1 = sut.minPathSum(matrix1)
        let result2 = sut.minPathSum(matrix2)

        // then
        let expectedResult1 = 7
        let expectedResult2 = 12

        XCTAssertEqual(result1, expectedResult1)
        XCTAssertEqual(result2, expectedResult2)
    }
}
