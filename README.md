# Processing-3D-ship
This is a game made in processing 3D ship 
3D environment 
Pixels in a two-dimensional window are described using Cartesian coordinates: an X (horizontal) and a Y (vertical) point as we have seen throughout the semester. when we began thinking of the screen as a digital piece of graph paper. In three-dimensional space (such as the actual, real-world space), a third axis (commonly referred to as the Z-axis) refers to the depth of any given point. In a Processing sketch’s window, a coordinate along this Z-axis indicates how far in front or behind the window a pixel lives. Scratching your head is a perfectly reasonable response here. After all, a computer window is only two-dimensional. 
Processing is a comprehensive 3D software that we can create 3D animations and interactive 3D spaces with it.  We can create 3D illusions and render them into 2D space. The 3D environment of my project makes it unique from what we have done in class.  


pushMatrix() & popMatrix 
Pushes the current transformation matrix onto the matrix stack. Understanding pushMatrix() and popMatrix() requires understanding the concept of a matrix stack. The pushMatrix() function saves the current coordinate system to the stack and popMatrix() restores the prior coordinate system. pushMatrix() and popMatrix() are used in conjunction with the other transformation functions and may be embedded to control the scope of the transformations.

translate()
Specifies an amount to displace objects within the display window. The x parameter specifies left/right translation, the y parameter specifies up/down translation, and the z parameter specifies translations toward/away from the screen. Using this function with the z parameter requires using P3D as a parameter in combination with size as shown in the above example.
If translate() is called within draw(), the transformation is reset when the loop begins again. This function can be further controlled by using pushMatrix() and popMatrix().

popMatrix()
Pops the current transformation matrix off the matrix stack.


box()
A box is an extruded rectangle. A box with equal dimension on all sides is a cube.

