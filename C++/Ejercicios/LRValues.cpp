/**
* @Author: Juan Carlos Leon Jarquin <shiro-saber>
* @Date:   13-Sep-2016
* @Email:  shiro.archerl@gmail.com
* @Last modified by:   shiro-saber
* @Last modified time: 13-Sep-2016
* @License: Belongs to Juan Carlos León Jarquín
*/

#include <cstdlib>
#include <iostream>

using namespace std;


// mala práctica de programador for the win
class Foo
{
  public:
    Foo();
    ~Foo();

    Foo &operator=(const Foo &foo)
    {
      cout << "AllahUakbar->copy assigment" << endl;
      return *this;
    }
};

int main()
{
  Foo kuz, kuzemac;

  kuzemac = kuz;

  return 0;
}
