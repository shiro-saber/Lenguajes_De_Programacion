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

  public:
    int modishness;
    Foo(int modishness = 0): modishness(modishness){ cout << "Empalado" << endl; }
    Foo(Foo &&foo) { cout << "RValue constructor" << endl; }
    Foo(const Foo &foo){ cout << "Seiji constructor" << endl; }
    ~Foo() = default; // para poner el destructor por default
    Foo getFoo(){ return *this; } //al poner & no sirve porque se convierte de LValue a RValue
    int val() { return 5; }

    Foo &operator=(Foo&& foo)
    {
      cout << "Ariel se volvio loco, este es un RValue reference" << endl;
      return *this;
    }

    /*Foo &operator=(const Foo &foo)
    {
      cout << "AllahUakbar->copy assigment" << endl;
      return *this;
    }*/
};

int main()
{
  Foo kuz(5), kuzemac;
  // kuzemac = kuz.getFoo(); este llama RValue reference
  // kuzemac = kuz; sin copy assigment mata

  Foo && c = kuz.getFoo(); // no puedes hacer una referencia a un RValue por lo tanto el Foo &c = kuz.getFoo() no sirve
  // Foo && es la declaracion de un RValue Reference

  cout << kuz.modishness << endl;
  cout << c.modishness << endl; //regresa basura ya que es un RValue, ya se destruyo

  int &&cubells = kuz.val(); //asignas un Rvalue a una variable, se convierte en L value y ya hay referencia
  //cubells = 6; // como ya es LValue ya podemos utilizarlo
  cout << cubells << endl;

  Foo ariel(kuzemac.getFoo()); //esto deberia usar el rvalue contructor, pero aun no

  return 0;
}
