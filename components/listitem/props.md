```
  propTypes: {
    // displayed in bold at the top
    title: React.PropTypes.node,

    // aligns to the right of title, for badges, time, etc
    titleAfter: React.PropTypes.node,

    // lighter sub title
    titleSub: React.PropTypes.node,

    // place an icon or element before the item
    before: React.PropTypes.node,

    // place an icon or element after the item
    after: React.PropTypes.node,

    // wrap an element around the item, good for links
    wrapper: React.PropTypes.node,

    // show an icon indicating it's linked
    icon: React.PropTypes.bool,

    // don't add padding
    nopad: React.PropTypes.bool,

    children: React.PropTypes.node,

    index: React.PropTypes.number,

    fulltext: React.PropTypes.bool

  }
```