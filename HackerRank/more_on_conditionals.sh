#Given three integers (X, Y, and Z) representing the three sides of a triangle, 
#identify whether the triangle is Scalene, Isosceles, or Equilateral.


read one
read two
read three

if ((one == two && two == three)); then
echo "EQUILATERAL";
elif ((three != two && two != one)); then
echo "SCALENE";
elif ((one == two || two == three || one == three)); then
echo "ISOSCELES";
fi
