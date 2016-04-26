TODO: determine what are `animatedProps` and `scroller`
```
  propTypes: {
    behavior: React.PropTypes.object,
    translate: React.PropTypes.object,
    from: React.PropTypes.oneOf([
      'left', 'right', 'top', 'bottom'
    ]),
    touchableProps: React.PropTypes.object,
    onClose: React.PropTypes.func,
    open: React.PropTypes.bool,
    dragger: React.PropTypes.bool,
    draggerWidth: React.PropTypes.number,
    width: React.PropTypes.number,
    height: React.PropTypes.number,

    animatedProps: React.PropTypes.???,
    update: React.PropTypes.bool,
    scroller: React.PropTypes.???,
    children: React.PropTypes.node
  }
```