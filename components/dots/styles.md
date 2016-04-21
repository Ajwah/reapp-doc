```
  { hexToRGB, hexToRGBA } = require('../../../lib/ConstantsHelpers');

  self: {
    pointerEvents: 'none',
  }

  dotInactive: {
    borderRadius: 10,
    width: 4,
    height: 4,
    margin: 2,
    background: hexToRGBA(c.dotBG, 0.2)
  }

  dotActive: {
    borderRadius: 10,
    width: 4,
    height: 4,
    margin: 2,
    background: hexToRGB(c.dotBG)
  }

  inner: {
    margin: 'auto',
    flexFlow: 'row',
  }
}```