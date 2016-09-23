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

 auto v = [&](int &a, int &b)mutable
 {
   string num = to_string(a);
   string mult = to_string(b);

   for each(i in num)
   {
     if(num.length != mult.length)
       return false;
     else
       if(num.find(i) > 0)
        return true;
       else
        return false;
   }
 };


int main()
{
  bool encuentramela;

  return 0;
}
