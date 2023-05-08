  //
  //  HatTests.swift
  //  MindMyHatTests
  //
  //  Created by Anthony Abbott on 08/05/2023.
  //

import XCTest
@testable import MindMyHat

final class HatTests: XCTestCase {

  override func setUpWithError() throws {
      // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
      // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  func testCanInitializeAHat() throws {
    let hat = Hat(id: 11,
                  title: "Baseball Cap",
                  image: "baseball",
                  description: "From snapbacks to dad hats, there are so many variations of baseball caps, but you can never go past a classic. Baseball caps started off as simple five-panel caps with adjustable straps and were worn as part of baseball team uniforms. Today, they are as much a fashion item as a piece of sportswear. A favourite of street style stars and celebrities, the baseball cap has graduated to an iconic status because of its simple and cool designs",
                  price: 10.99)

    XCTAssertEqual(hat.id, 11)
    XCTAssertEqual(hat.title, "Baseball Cap")
    XCTAssertEqual(hat.description, "From snapbacks to dad hats, there are so many variations of baseball caps, but you can never go past a classic. Baseball caps started off as simple five-panel caps with adjustable straps and were worn as part of baseball team uniforms. Today, they are as much a fashion item as a piece of sportswear. A favourite of street style stars and celebrities, the baseball cap has graduated to an iconic status because of its simple and cool designs")
    XCTAssertEqual(hat.price, 10.99)
  }

  func testCanInitializeHats() throws {
    let hats = Hats(hats: MockData.mockHats)

    XCTAssertEqual(hats.hats.count, 4)
  }


}
