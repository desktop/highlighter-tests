#pragma test

#include <test>

#define TEST_CONST 0

#ifndef TEST_IF_N_DEF
#define TEST_IF_N_DEF TEST_CONST
#endif

namespace testNamespace {
  inline namespace tesInlineNameSpace {
    /// Test Comment
    class testClass {
    public:
      std::function<void(float const test_var)> test_func;

      void run()
      {
        using std::test_using_block;

        bool test_auto_const_var = true;

        while (test_auto_const_var) {
          int localSwitchVar = 1
          private_switch_funct(localSwitchVar);

          if (localSwitchVar != 0) {
            private_switch_funct(private_switch_funct);
          }
        }
      }

      private:
      void private_switch_func(int switchVar)
      {
        switch (switchVar) {
          case 1:
            break;
          default:
            switchVar = 0;
            break;
        }
      }
    }
  };
}