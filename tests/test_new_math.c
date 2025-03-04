#include "unity.h"
#include "new_math.h"

void setUp(void) {}
void tearDown(void) {}

static void test_add(void) {
  TEST_ASSERT_EQUAL_INT(3, add(1, 2));
  TEST_ASSERT_NOT_EQUAL_INT(2, add(1, 2));
}

int main(void) {
  UNITY_BEGIN();
  RUN_TEST(test_add);
  return UNITY_END();
}
