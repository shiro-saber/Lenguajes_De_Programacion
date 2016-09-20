/**
* @Author: Juan Carlos Leon Jarquin <shiro-saber>
* @Date:   20-Sep-2016
* @Email:  shiro.archerl@gmail.com
* @Last modified by:   shiro-saber
* @Last modified time: 20-Sep-2016
* @License: Belongs to Juan Carlos León Jarquín
*/

#include <cstdlib>
#include <iostream>
#include <functional>
#include <vector>

using namespace std;

class filter
{
  public:
    vector<function<void (int&)>> v;
    int valor = 10;
    /*void addFilter()
    {
      auto v = this;
      v.push_back([=](int &a)
      {
        a += valor;
        cout << a << endl;
      });
    }*/
    void ex()
    {
      int a = 5;
      [&](int&){
        a += valor;
        cout << a << endl;
      }(a);
    }
};

int main()
{
  filter kuz;
  kuz.ex();
  kuz.addFilter();

  return 0;
}
