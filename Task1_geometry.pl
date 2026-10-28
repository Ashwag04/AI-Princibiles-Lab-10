area_square(Side, Area):-
    Area is Side ** 2.
perimeter_square(Side, Perimeter):-
    Perimeter is 4 * Side.
area_rectangle(Width,Height,Area):-
    Area is Width * Height.
perimeter_rectangle(Width,Height,Perimeter):-
    Perimeter is 2*(Width + Height).
area_triangle(Base,Height,Area):-
    Area is 0.5 * Base * Height.
perimeter_triangle(SideA,SideB,SideC,Perimeter):-
    Perimeter is SideA + SideB + SideC.
