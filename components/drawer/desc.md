### Drawer

A panel that slides in from the side of the screen, and can be dragged
back out.

- `from` which side it comes from.
- `translate` pass in an object with { x: (number: 0-100) }
- `behavior` pass in object with translate objects for all the from props
- `closed` toggle open or closed.
- `touchableProps` will be passed down to it's internal touchableArea
(useful for disabling or changing the area).
- `onClose` calls a callback when closed by used.


