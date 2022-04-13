#include <gtest/gtest.h>
#include "gmock/gmock.h"
#include <Transaction.h>
#include <Account.h>


class MockAccount: public Account{
public:
    MockAccount(int id, int balance):Account(id, balance){}
    MOCK_METHOD(void, Unlock, ());
};
TEST(Account, Init){
    MockAccount test(1,100);
    EXPECT_EQ(test.GetBalance(),100);
    EXPECT_EQ(test.id(),1);
}


