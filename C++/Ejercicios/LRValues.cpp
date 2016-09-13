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
  private:
    int modishness;
  public:
    Foo(int modishness = 0): modishness(modishness){ cout << "Empalado" << endl; }
    Foo(const Foo &foo){ cout << "Seiji constructor" << endl; }
    ~Foo() = default; // para poner el destructor por default
    Foo getFoo(){ return *this; }

    Foo &operator=(const Foo &foo)
    {
      cout << "AllahUakbar->copy assigment" << endl;
      return *this;
    }
};

int main()
{
  /* L value tiene direccion de memoria, R value no tiene es temporal */
  Foo kuz, kuzemac;
  kuzemac = kuz;

  Foo c = kuzemac; // se recibe un L value
  Foo d = kuz.getFoo();
  Foo e(kuz.getFoo()); // se recibe un R value

  return 0;
}
