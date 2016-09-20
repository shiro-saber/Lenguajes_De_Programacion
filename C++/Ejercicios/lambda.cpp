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

using namespace std;

void ejecutaFuncion(function<void(int&)>f)
{
  int a = 5;
  f(a);
}

int main()
{
  int z = 2;
  int a = 1;

  function<void(int&)> f = [&](int &b)mutable
  {
    cout << b << endl;
    cout << z << endl;
    cout << a << endl;
  };

  ejecutaFuncion(f);
}
