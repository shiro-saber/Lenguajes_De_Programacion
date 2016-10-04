/*
 * @Author: Juan Carlos Leon Jarquin <shiro-saber>
 * @Date:   23-Sep-2016
 * @Email:  shiro.archerl@gmail.com
 * @Last modified by:   shiro-saber
 * @Last modified time: 23-Sep-2016
 * @License: Belongs to Juan Carlos León Jarquín
*/

#include <iostream>
#include <cstdlib>
#include <string>
#include <vector>
#include <functional>
#include <algorithm>

using namespace std;

/* El número 125874 y su doble 251748 contienen exactamente los mismos dígitos, pero en diferente orden.
 * Encuentra el número positivo menor tal que su doble, triple, cuadruple y quintuple son números que contienen los mismos dígitos.
 */

bool doble(int a);
bool triple(int a);
bool quad(int a);
bool quin(int a);

auto v = [](int a, int b)
{
  string num = to_string(a);
  string mult = to_string(b);
  string::iterator it = mult.begin();
  string::iterator it2 = mult.end();
  bool temp = false;

  if(num.length() != mult.length())
    return false;

  for_each(it, it2, [=](bool temp){
    if(num.find(*it) != string::npos)
      temp = true;
    else
      temp = false;
  });

  if(temp)
    return true;
  else
    return false;
};

int main()
{
  bool encuentramela = false;
  int numero = 1;

  while(!encuentramela)
  {
    if(doble(numero) && triple(numero) && quad(numero) && quin(numero))
    {
      encuentramela = true;
      cout << "El numero es: " << numero << endl;
    }
    numero++;
  }

  return 0;
}

bool doble(int a)
{
  int c;
  c = a*2;
  return v(a, c);
}

bool triple(int a)
{
  int c;
  c = a*3;
  return v(a, c);
}

bool quad(int a)
{
  int c;
  c = a*4;
  return v(a, c);
}

bool quin(int a)
{
  int c;
  c = a*5;
  return v(a, c);
}
