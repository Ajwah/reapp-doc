```
  propTypes: {
    // pass properties to Icon
    iconProps: React.PropTypes.object,

    // SVG icon
    icon: React.PropTypes.element,

    // no visual chrome added
    chromeless: React.PropTypes.bool,

    // Extend to fit screen when inside View
    fullscreen: React.PropTypes.bool,

    // Fully rounded corners
    rounded: React.PropTypes.bool,

    // Filled type button (no borders)
    filled: React.PropTypes.bool,

    // Color of button
    color: React.PropTypes.string,

    // Text color
    textColor: React.PropTypes.string,

    // Disabled look / no tap
    inactive: React.PropTypes.bool,

    // Props used for special display
    isInTitleBar: React.PropTypes.bool,
    isInViewList: React.PropTypes.bool
  }
```