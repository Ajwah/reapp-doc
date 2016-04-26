TODO: determine what are `dotProps` and to what extend are ViewListMixin propTypes applicable.
```
  propTypes: {
    children: React.PropTypes.node,
    dotProps: React.PropTypes.???,

    // Extra from ViewListMixin
    scrollToStep: React.PropTypes.number,
    disableScroll: React.PropTypes.bool,
    width: React.PropTypes.number,
    height: React.PropTypes.number,
    onTouchStart: React.PropTypes.func,
    onTouchEnd: React.PropTypes.func,
    onViewEntering: React.PropTypes.func,
    onViewEntered: React.PropTypes.func,
    onViewLeaving: React.PropTypes.func,
    onViewLeft: React.PropTypes.func,
    onStep: React.PropTypes.func,
    scrollerProps: React.PropTypes.object
  }
```