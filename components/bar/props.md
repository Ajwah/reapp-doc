```
  propTypes: {
    // one of text, icon, icon-text, icon-text-right
    display: React.PropTypes.string,

    // props to pass to each BarItem child
    barItemProps: React.PropTypes.object,

    // attach to which side of screen
    position: React.PropTypes.string,

    // which BarItem to pass active prop
    activeIndex: React.PropTypes.number,

    // automatically wrap children with BarItem
    wrap: React.PropTypes.bool
  }
```