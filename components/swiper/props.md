```
  propTypes: {
    up: React.PropTypes.bool,
    down: React.PropTypes.bool,
    left: React.PropTypes.bool,
    right: React.PropTypes.bool,

    // pass props to the scroller
    scrollerProps: React.PropTypes.object,

    // what to show above
    children: React.PropTypes.node,

    // what to show below
    below: React.PropTypes.node,

    // where to limit swiping
    limit: React.PropTypes.number,

    // disable swiping (swiper no swiping!)
    noswiping: React.PropTypes.bool

    width: React.PropTypes.string,
    height: React.PropTypes.string
  }
```