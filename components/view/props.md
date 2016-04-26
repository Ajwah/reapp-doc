TODO: Determine: `width, height, viewList, titleBarHeight, onScrollStart, onScrollEnd`

```
  propTypes: {
    title: React.PropTypes.node,
    titleLeft: React.PropTypes.node,
    titleRight: React.PropTypes.node,

    index: React.PropTypes.number,

    // add animations in view list
    isInViewList: React.PropTypes.bool,

    animations: React.PropTypes.object,

    // pass inner div props (scrollable content)
    innerProps: React.PropTypes.object,

    // pass titlebar props
    titleBarProps: React.PropTypes.object,

    // pass overlay div props
    overlayProps: React.PropTypes.object,

    // place a node outside the inner pane
    after: React.PropTypes.node,

    // disable pointer events
    inactive: React.PropTypes.bool,

    // make the StaticContainer inside fullscreen
    fullscreen: React.PropTypes.bool,

    // see scrollTopable
    scrollTop: React.PropTypes.oneOfType([
      React.PropTypes.string,
      React.PropTypes.number
    ]),

    // don't add extra visuals like shadow/overlay
    plain: React.PropTypes.bool

    children: React.PropTypes.node,
    onComponentMounted: React.PropTypes.func,

    width: React.PropTypes.???,
    height: React.PropTypes.???,
    viewList: React.PropTypes.???,
    titleBarHeight: React.PropTypes.???,
    onScrollStart: React.PropTypes.???,
    onScrollEnd: React.PropTypes.???,
  }
```