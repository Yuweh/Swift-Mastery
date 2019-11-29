import Foundation
import XCTest

class CashRegister {
  var availableFunds: Decimal
  var transactionTotal: Decimal = 0
  
  init(availableFunds: Decimal) {
    self.availableFunds = availableFunds
  }
  
  func addItem(_ cost: Decimal) {
    transactionTotal += cost
  }
}

class CashRegisterTests: XCTestCase {
  
  var availableFunds: Decimal!
  var itemCost: Decimal!
  var sut: CashRegister!
  
  override func setUp() {
    super.setUp()
    availableFunds = 100
    itemCost = 42
    sut = CashRegister(availableFunds: availableFunds)
  }
  
  override func tearDown() {
    availableFunds = nil
    itemCost = nil
    sut = nil
    super.tearDown()
  }
  
  // Attempt to instantiate a new instance of CashRegister, which you pass into XCTAssertNil. This is a test expression that asserts whatever passed to it is not nil. If it actually is nil, the test will be marked as failed.
  func testInitAvailableFunds_setsAvailableFunds() {
    XCTAssertEqual(sut.availableFunds, availableFunds)
  }
  
  func testAddItem_oneItem_addsCostToTransactionTotal() {
    // when - When a certain action happens...
    sut.addItem(itemCost)
    
    // then - Then an expected result occurs.
    XCTAssertEqual(sut.transactionTotal, itemCost)
  }
  
  func testAddItem_twoItems_addsCostsToTransactionTotal() {
    // give - Given a certain condition...
    let itemCost2 = Decimal(20)
    let expectedTotal = itemCost + itemCost2
    
    // when - When a certain action happens...
    sut.addItem(itemCost)
    sut.addItem(itemCost2)
    
    // then - Then an expected result occurs.
    XCTAssertEqual(sut.transactionTotal, expectedTotal)
  }
}

CashRegisterTests.defaultTestSuite.run()
