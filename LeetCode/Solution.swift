//
//  Solution.swift
//  LeetCode
//
//  Created by Nihad on 11/20/21.
//

import Foundation

class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var paths: [[Int]] = [], path: [Int] = [], candidates = candidates.sorted()
        dfs(&candidates, &paths, &path, target, 0)
        return paths
    }

    private func dfs(_ candidates: inout [Int], _ paths: inout [[Int]], _ path: inout [Int], _ target: Int, _ j: Int) {
        if target < 0 {
            return
        }

        if target == 0 {
            paths.append(path)
            return
        }

        for i in j..<candidates.count {
            if i == j || candidates[i] != candidates[i-1] {
                path.append(candidates[i])
                dfs(&candidates, &paths, &path, target - candidates[i], i + 1)
                path.removeLast()
            }
        }
    }
}
