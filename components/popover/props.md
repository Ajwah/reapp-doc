```
  propTypes: {
    // element the popover is pointing towards
    target: React.PropTypes.object.isRequired,

    // show it as open
    open: React.PropTypes.bool,

    // pad in px towards edge of strings
    edgePadding: React.PropTypes.number,

    // size of arrow
    arrowSize: React.PropTypes.number,

    // after close event
    onClose: React.PropTypes.func,
    animationDuration: React.PropTypes.number,
    animations: React.PropTypes.object,

    children: React.PropTypes.node
  }
```