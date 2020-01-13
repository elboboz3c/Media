//
//  MediaSwiftUITests.swift
//  MediaTests
//
//  Created by Christian Elies on 08.12.19.
//

#if canImport(UIKit) && !os(tvOS)
@testable import Media
import Photos
import XCTest

@available(iOS 13, *)
final class MediaSwiftUITests: XCTestCase {
    func testBrowser() {
        do {
            let completion: (Result<PHAsset, Error>) -> Void = { result in }
            _ = try Media.browser(completion)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
#endif
